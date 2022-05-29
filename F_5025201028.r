

library(BSDA)
library("ggpubr")

#nomor 1
# a)
n = 9
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

diff <- y-x
rat <- mean(diff)

standev <- sd(diff)

# b)
miud <- sum(diff - rat)

t.test(y, x, paired=TRUE)

# c)

#Karena p-value di bawah nilai signifikan (0.005), maka h0:""tidak ada pengaruh
# yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum 
# dan sesudah melakukan aktivitas", sehingga kesimpulannya adalah tidak ada
# pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen

#nomor 2
zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100, alternative = "greater",
          mu = 0,conf.level = 0.95)

# a)
# setuju, karena p-value kurang dari 0.05, sehingga h0 (rata-rata <= 20000) ditolak

# b)
# maksud dari output yang dihasilkan adalah...

# c)
# kesimpulannya adalah klaim bahwa rata-rata penggunaan mobil adalah lebih dari 20000 kilometer per tahun adalah benar, karena p-value kurang dari 0.05 sehingga h0 ditolak.

# nomor 3


# nomor 3

#nomor 4
# a)
my_data <- read.delim(file.choose())

my_data$Group <- as.factor(my_data$Group)
my_data$Group = factor(my_data$Group, labels = c("grup1", "grup2", "grup3"))

grup1 <- subset(my_data, Group == "grup1")
grup2 <- subset(my_data, Group == "grup2")
grup3 <- subset(my_data, Group == "grup3")

qqnorm(grup1$Length)
qqnorm(grup2$Length)
qqnorm(grup3$Length)

# berdasarkan plot kuantil normal di atas, tidak ditemukan outlier utama pada homogenitas varians

# b)
bartlett.test(Length ~ Group, data = my_data)

# c)
model1 <- aov(Length ~ Group, data = my_data)
summary(model1)

# d)
# nilai p adalah 0.0013 dimana kurang dari 0.005, sehingga h0 ditolak

# e)
TukeyHSD(model1)

# f)
library("ggplot2")

ggplot(my_data, aes(x = Group, y = Length)) + 
  geom_boxplot(fill = "white", colour = "black") + 
  scale_x_discrete() + xlab("Group") + ylab("Length")

# nomor 5
library(dplyr)
library(multcompView)

gtl <- read.csv(file.choose())

# a)
qplot(x = Temp, y = Light, geom = "point", data = gtl) +
  facet_grid(.~Glass, labeller = label_both)

# b)
gtl$Glass <- as.factor(gtl$Glass)
gtl$Temp_Factor <- as.factor(gtl$Temp)
str(gtl)

gtlaov <- aov(Light ~ Glass*Temp_Factor, data = gtl)
summary(gtlaov)

# c)
data_summary <- group_by(gtl, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))

print(data_summary)

# d)
tukey <- TukeyHSD(gtlaov)
print(tukey)

# e)
tukey.cld <- multcompLetters4(gtlaov, tukey)
print(tukey.cld)



