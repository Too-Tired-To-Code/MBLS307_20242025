{area_circle <- pi*10^2
print(area_circle)}
pracma::nthroot(14*0.51,3)

child_weight <- c(69, 62, 57, 59, 59, 64, 56, 66, 67, 66)
mean(child_weight)
var(child_weight)
sd(child_weight)
range(child_weight)
length(child_weight)
first_five <- child_weight[1:5]
first_five
child_height <- c(112, 102, 83, 84, 99, 90, 77, 112, 133, 112)
summary(child_height)
some_child <- child_height[c(2,3,9,10)]
some_child
short_child <- child_height[child_height < 99]
short_child
bmi <- (child_weight)/((child_height/100)^2)
bmi
Seq1 <- seq(0,1,0.1)
Seq1
Seq2 <- seq(0,10,0.5)
Seq2
{Seq3 <- rep(c("a","c","g","e"),3)
Seq3}
height_sorted <- sort(child_height, decreasing = TRUE)
height_sorted
child_name <- c("Alfred", "Barbara", "James", "Jane", "John", "Judy", "Louise", "Mary", "Ronald", "William")
height_ord <- order(child_height)
height_ord
names_ord <- child_name[height_ord]
names_ord
#Louise is the shortest,
#William is the tallest
weight_rev_ord <- order(child_weight, decreasing = TRUE)
names_w_ord <- child_name[weight_rev_ord]
names_w_ord
#Alfred is the heaviest
#Luise is the lightest
sum(child_weight)
