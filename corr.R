library(raster)
library(Hmisc)
library(Matrix)

#import layers

bio1 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_1.bil")
bio2 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_2.bil")
bio3 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_3.bil")
bio4 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_4.bil")
bio5 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_5.bil")
bio6 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_6.bil")
bio7 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_7.bil")
bio8 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_9.bil")
bio9 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_9.bil")
bio10 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_10.bil")
bio11 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_11.bil")
bio12 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_12.bil")
bio13 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_13.bil")
bio14 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_14.bil")
bio15 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_15.bil")
bio16 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_16.bil")
bio17 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_17.bil")
bio18 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_18.bil")
bio19 <- raster("C:/Users/tpelletier/Desktop/DataLayers/bio_30s_bil/bio_19.bil")

#species points
a <- read.csv("C:/Users/tpelletier/Desktop/sallys/niche_paper/points/P_asupak_maxent.csv")
xy <- a[,c(3,2)]

bio1xy <- extract(bio1, xy)
bio2xy <- extract(bio2, xy)
bio3xy <- extract(bio3, xy)
bio4xy <- extract(bio4, xy)
bio5xy <- extract(bio5, xy)
bio6xy <- extract(bio6, xy)
bio7xy <- extract(bio7, xy)
bio8xy <- extract(bio8, xy)
bio9xy <- extract(bio9, xy)
bio10xy <- extract(bio10, xy)
bio11xy <- extract(bio11, xy)
bio12xy <- extract(bio12, xy)
bio13xy <- extract(bio13, xy)
bio14xy <- extract(bio14, xy)
bio15xy <- extract(bio15, xy)
bio16xy <- extract(bio16, xy)
bio17xy <- extract(bio17, xy)
bio18xy <- extract(bio18, xy)
bio19xy <- extract(bio19, xy)

d <- cbind(bio1xy, bio2xy, bio3xy, bio4xy, bio5xy, bio6xy, bio7xy, bio8xy, bio9xy, bio10xy, bio11xy, bio12xy, bio13xy, bio14xy, bio15xy, bio16xy, bio17xy, bio18xy, bio19xy)

r <- rcorr(as.matrix(d))

#put r on lower triangle and p on uppper traingle of matrix
a <- tril(r$r, -1) # strict lower triangular matrix (omit diagonals)
b <- triu(r$P, 1) # strict upper triangular matrix
c <- a + b
c <- as.data.frame(as.matrix(c))

write.csv(c, file="asupak.csv")


#IGONORE
#DECIDED I LIKE THE ABOVE BETTER
#make 4-colum table with data
flattenCorrMatrix <- function(cormat, pmat) {
  ut <- upper.tri(cormat)
  data.frame(
    row = rownames(cormat)[row(cormat)[ut]],
    column = rownames(cormat)[col(cormat)[ut]],
    cor  =(cormat)[ut],
    p = pmat[ut]
  )
}

rp <- flattenCorrMatrix(r$r, r$P)
rp


