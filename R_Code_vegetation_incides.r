#calculation spectral indices

libray(raster)
setwd("C:/LAB/")

l1992 <- brick("defor1_.png")
l2006 <- brick("defor2_.png")

plotRGB(l1992, r=1, g=2, b=3, stretch="lin")
plotRGB(l2006, r=1, g=2, b=3, stretch="lin")

par(mfrow=c(2,1))
plotRGB(l1992, r=1, g=2, b=3, stretch="lin")
plotRGB(l2006, r=1, g=2, b=3, stretch="lin")

dvi1992 = l1992[[1]] - l1992[[2]]
dvi1992

dvi2006 = l2006[[1]] - l2006[[2]]
dvi2006

cl <- colorRampPalette(c('darkblue','yellow','red','black'))(100)

par(mfrow=c(2,1))
plot(dvi1992, col=cl)
plot(dvi2006, col=cl)
dev.off()

dvi_dif = dvi1992 - dvi2006
cld <- colorRampPalette(c('blue','white','red'))(100)
plot(dvi_dif, col=cld)
