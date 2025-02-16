squid_data <- read.table("squid1.txt", header = TRUE, dec = ",")
str(squid_data)
squid_data

squid_data$year <- as.factor(squid_data$year)
squid_data$month <- as.factor(squid_data$month)
squid_data$maturity.stage <- as.factor(squid_data$maturity.stage)

dotchart(squid_data$weight)
dotchart(squid_data$DML)
dotchart(squid_data$nid.length)
dotchart(squid_data$ovary.weight)
which(squid_data$nid.length > 400)
print(squid_data$nid.length[11])
squid_data$nid.length[11] <- 43.2
hist(squid_data$ovary.weight)
plot(x = sqrt(squid_data$DML), y = sqrt(squid_data$weight))
plot(x = squid_data$maturity.stage, y = squid_data$DML)
install.packages("vioplot")
library(vioplot)
