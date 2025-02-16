Circle_Area <- function(radius){
  2*pi*radius
}
Circle_Area(3.4)

FtC <- function(Farhenheit){
  Celcius = (Farhenheit-32)*(5/9)
  print(paste("Fahrenheit: ",Farhenheit," Is equal to ", Celcius, " centigrade"))
}
FtC(100)
rnorm2 <- function(n,mean,sd) { mean+sd*scale(rnorm(n)) }
r <- rnorm2(100,35,15)
vdata <- function(s){
  print(cat(paste("Mean of vector: ",mean(s),
              "\nMedian of vector: ",median(s),
              "\nRange of vector: ",range(s))))
}
vdata(r)
mean(r) 
sd(r)
r
