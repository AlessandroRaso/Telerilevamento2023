#calculation spectral indices

setwd("C:/LAB/")

l1992 <- brick("defor1_.png")

plotRGB(l1992, r=1, g=2, b=3, stretch="lin")

l2006 <- brick("defor2_.png")

plotRGB(l2006, r=1, g=2, b=3, stretch="lin")

par(mfrow=c(2,1))
plotRGB(l1992, r=1, g=2, b=3, stretch="lin")
plotRGB(l2006, r=1, g=2, b=3, stretch="lin")

dvi1992 = l1992[[1]] - l1992[[2]]
dvi1992
l1992

