"----------No 1----------"
# 1A
X = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
Y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
selisih = (X - Y)
sd(selisih)

# 1B
t.test(Y, X, paired = TRUE)

# 1C (jawaban di file readme)


"----------No 2----------"
# 2A (jawaban di file readme)

# 2B
install.packages("BSDA")
library(BSDA)

xbar = 23500
sigma = 3900
n = 100
mu = 20000
zsum.test(xbar, sigma, n, alternative = "greater", mu=20000)

# 2C (jawaban di file readme)


"----------No 3----------"
# 3A (jawaban di file readme)

# 3B
xbar1 = 3.64
s1 = 1.67
n1 = 19
xbar2 = 2.79
s2 = 1.32
n2 = 27

tsum.test(xbar1, s1, n1, xbar2, s2, n2, alternative = "greater", var.equal = TRUE)

# 3C
install.packages("mosaic")
library(mosaic)

df = 2
plotDist(dist = 't', df, col = "pink")

# 3D
df = 2
qchisq(p = 0.05, df, lower.tail = FALSE)

# 3E (jawaban di file readme)

# 3F (jawaban di file readme)


"----------No 4----------"
# 4A
dataset = read.table("datasetprobstat4.txt", h = T)
attach(dataset)

dataset$Group = as.factor(dataset$Group)
dataset$Group = factor(dataset$Group, labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))

class(dataset$Group)

Group1 = subset(dataset, Group == "Kucing Oren")
Group2 = subset(dataset, Group == "Kucing Hitam")
Group3 = subset(dataset, Group == "Kucing Putih")

qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group3$Length)
qqline(Group3$Length)

# 4B
bartlett.test(Length ~ Group, data = dataset)

# 4C
m1 = lm(Length ~ Group, data = dataset)
anova(m1)

# 4D (jawaban di file readme)

# 4E
TukeyHSD(aov(m1))
         
# 4F
install.packages("ggplot2")
library("ggplot2")

ggplot(dataset, aes(x = Group, y = Length)) + geom_boxplot(fill= "pink", color = c("#FFA500", "#000000", "#FFFFFF")) + scale_x_discrete() + xlab("Group") + ylab("Length (cm)")

"----------No 5----------"
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

# 5A
data <- read_csv("GTL.csv")
head(data)

str(data)

qplot(x = Temp, y = Light, geom = "point", data = data) + facet_grid(.~Glass, labeller = label_both)

# 5B
data$Glass = as.factor(data$Glass)
data$Temp_Factor = as.factor(data$Temp)
str(data)

anova = aov(Light ~ Glass*Temp_Factor, data = data)
summary(anova)

# 5C
data_summary = group_by(data, Glass, Temp) %>%
  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

# 5D
tukeyHSD = TukeyHSD(anova)
print(tukeyHSD)

# 5E
tukeycld = multcompLetters4(anova, tukeyHSD)
print(tukeycld)

cld = as.data.frame.list(tukeycld$`Glass:Temp_Factor`)
data_summary$Tukey = cld$Letters
print(data_summary)