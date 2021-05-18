#plot sdms for comparison
library(raster)

c_26 <- raster("C:/Users/tpelletier/Desktop/sallys/niche_paper/Current/vandykei/All/Plethodon_vandykei.asc")

c_19 <- raster("C:/Users/tpelletier/Desktop/sallys/niche_paper/Future/vandykei/rcp2650/CCSM4/Plethodon_vandykei.asc")

ccsm_2650 <- raster("C:/Users/tpelletier/Desktop/sallys/niche_paper/Future/vandykei/rcp2650/CCSM4/Plethodon_vandykei_CCSM4.asc")

ccsm_2670 <- raster("C:/Users/tpelletier/Desktop/sallys/niche_paper/Future/vandykei/rcp2670/CCSM4/Plethodon_vandykei_CCSM4.asc")

ccsm_8550 <- raster("C:/Users/tpelletier/Desktop/sallys/niche_paper/Future/vandykei/rcp8550/CCSM4/Plethodon_vandykei_CCSM4.asc")

ccsm_8570 <- raster("C:/Users/tpelletier/Desktop/sallys/niche_paper/Future/vandykei/rcp8570/CCSM4/Plethodon_vandykei_CCSM4.asc")

miroc_2650 <- raster("C:/Users/tpelletier/Desktop/sallys/niche_paper/Future/vandykei/rcp2650/MIROC5/Plethodon_vandykei_MIROC5.asc")

miroc_2670 <- raster("C:/Users/tpelletier/Desktop/sallys/niche_paper/Future/vandykei/rcp2670/MIROC5/Plethodon_vandykei_MIROC5.asc")

miroc_8550 <- raster("C:/Users/tpelletier/Desktop/sallys/niche_paper/Future/vandykei/rcp8550/MIROC5/Plethodon_vandykei_MIROC5.asc")

miroc_8570 <- raster("C:/Users/tpelletier/Desktop/sallys/niche_paper/Future/vandykei/rcp8570/MIROC5/Plethodon_vandykei_MIROC5.asc")


pdf(file="vandykei-current.pdf")
par(mfrow=c(2,1))
plot(c_19, main="vandykei_current_19")
plot(c_26, main="vandykei_current_26")
dev.off()

pdf(file="vandykei-ccsm.pdf")
par(mfrow=c(2,2))
plot(ccsm_2650, main="vandykei_ccsm_2650")
plot(ccsm_2670, main="vandykei_ccsm_2670")
plot(ccsm_8550, main="vandykei_ccsm_8550")
plot(ccsm_8570, main="vandykei_ccsm_8570")
dev.off()

pdf(file="vandykei-miroc.pdf")
par(mfrow=c(2,2))
plot(miroc_2650, main="vandykei_miroc_2650")
plot(miroc_2670, main="vandykei_miroc_2670")
plot(miroc_8550, main="vandykei_miroc_8550")
plot(miroc_8570, main="vandykei_miroc_8570")
dev.off()