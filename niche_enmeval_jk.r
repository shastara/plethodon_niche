library(ENMeval)
library(ggplot2)
#https://cran.r-project.org/web/packages/ENMeval/vignettes/ENMeval-vignette.html
#https://github.com/jamiemkass/ENMeval/issues/53
#https://cran.r-project.org/web/packages/ENMeval/ENMeval.pdf


#set species
species <- "vehiculum"

#setwd
setwd(species)

#import gps coordinates
gps <- read.csv(paste(species,"_points.csv", sep=""))

#sample random points
bg <- randomPoints(envs[[1]], n=10000)
bg <- as.data.frame(bg)

#run model
eval1 <- ENMevaluate(gps, envs, bg, method=c('jackknife'), RMvalues=c(1, 2, 3), fc=c("L", "LQ", "H", "LQH", "LQHP", "LQHPT"), algorithm='maxent.jar')

#write model evaluations to file
models <- as.data.frame(eval1@results)
write.csv(models, file = (paste("P_",species,"_models.csv", sep="")), row.names = F)

#get best model
bestmod = which(eval1@results$delta.AICc==0)

#write variable importance from best model to file
aic.opt <- eval1@models[[bestmod]]
importance <- var.importance(aic.opt)
write.csv(importance, file = (paste("P_",species,"_importance.csv", sep="")), row.names = F)

#project current plot
pr = predict(envs, eval1@models[[bestmod]])
pr_df = as.data.frame(pr, xy=T)

#write current raster
writeRaster(pr, file=paste("P_",species,"_raster.asc", sep=""))
writeRaster(pr, file=paste("P_",species,"_raster.tif", sep=""), format="GTiff")

#export current plot
g <- ggplot() +
  geom_raster(data = pr_df, aes(x = x, y = y, fill = layer)) + coord_quickmap() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_rect(fill = "white"), legend.title = element_blank()) + scale_fill_viridis_c(option = "magma", na.value = "grey90") + xlab("Longitude") + ylab("Latitude")

pdf(file=paste("P_",species,"_plot_current.pdf", sep=""))
g
dev.off()




#get ccsm4_4550 plot
pr = predict(ccsm4_4550, eval1@models[[bestmod]])
pr_df = as.data.frame(pr, xy=T)

#write raster
writeRaster(pr, file=paste("P_",species,"_ccsm4_4550.asc", sep=""))
writeRaster(pr, file=paste("P_",species,"_ccsm4_4550.tif", sep=""), format="GTiff")

#export  plot
g <- ggplot() +
  geom_raster(data = pr_df, aes(x = x, y = y, fill = layer)) + coord_quickmap() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_rect(fill = "white"), legend.title = element_blank()) + scale_fill_viridis_c(option = "magma", na.value = "grey90") + xlab("Longitude") + ylab("Latitude")

pdf(file=paste("P_",species,"_plot_ccsm4_4550.pdf", sep=""))
g
dev.off()



#get ccsm4_4570 plot
pr = predict(ccsm4_4570, eval1@models[[bestmod]])
pr_df = as.data.frame(pr, xy=T)

#write raster
writeRaster(pr, file=paste("P_",species,"_ccsm4_4570.asc", sep=""))
writeRaster(pr, file=paste("P_",species,"_ccsm4_4570.tif", sep=""), format="GTiff")

#export  plot
g <- ggplot() +
  geom_raster(data = pr_df, aes(x = x, y = y, fill = layer)) + coord_quickmap() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_rect(fill = "white"), legend.title = element_blank()) + scale_fill_viridis_c(option = "magma", na.value = "grey90") + xlab("Longitude") + ylab("Latitude")

pdf(file=paste("P_",species,"_plot_ccsm4_4570.pdf", sep=""))
g
dev.off()


#get ccsm4_8550 plot
pr = predict(ccsm4_8550, eval1@models[[bestmod]])
pr_df = as.data.frame(pr, xy=T)

#write raster
writeRaster(pr, file=paste("P_",species,"_ccsm4_8550.asc", sep=""))
writeRaster(pr, file=paste("P_",species,"_ccsm4_8550.tif", sep=""), format="GTiff")

#export  plot
g <- ggplot() +
  geom_raster(data = pr_df, aes(x = x, y = y, fill = layer)) + coord_quickmap() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_rect(fill = "white"), legend.title = element_blank()) + scale_fill_viridis_c(option = "magma", na.value = "grey90") + xlab("Longitude") + ylab("Latitude")

pdf(file=paste("P_",species,"_plot_ccsm4_8550.pdf", sep=""))
g
dev.off()



#get ccsm4_8570 plot
pr = predict(ccsm4_8570, eval1@models[[bestmod]])
pr_df = as.data.frame(pr, xy=T)

#write raster
writeRaster(pr, file=paste("P_",species,"_ccsm4_8570.asc", sep=""))
writeRaster(pr, file=paste("P_",species,"_ccsm4_8570.tif", sep=""), format="GTiff")

#export  plot
g <- ggplot() +
  geom_raster(data = pr_df, aes(x = x, y = y, fill = layer)) + coord_quickmap() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_rect(fill = "white"), legend.title = element_blank()) + scale_fill_viridis_c(option = "magma", na.value = "grey90") + xlab("Longitude") + ylab("Latitude")

pdf(file=paste("P_",species,"_plot_ccsm4_8570.pdf", sep=""))
g
dev.off()



#get miroc5_4550 plot
pr = predict(miroc5_4550, eval1@models[[bestmod]])
pr_df = as.data.frame(pr, xy=T)

#write raster
writeRaster(pr, file=paste("P_",species,"_miroc5_4550.asc", sep=""))
writeRaster(pr, file=paste("P_",species,"_miroc5_4550.tif", sep=""), format="GTiff")

#export  plot
g <- ggplot() +
  geom_raster(data = pr_df, aes(x = x, y = y, fill = layer)) + coord_quickmap() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_rect(fill = "white"), legend.title = element_blank()) + scale_fill_viridis_c(option = "magma", na.value = "grey90") + xlab("Longitude") + ylab("Latitude")

pdf(file=paste("P_",species,"_plot_miroc5_4550.pdf", sep=""))
g
dev.off()



#get miroc5_4570 plot
pr = predict(miroc5_4570, eval1@models[[bestmod]])
pr_df = as.data.frame(pr, xy=T)

#write raster
writeRaster(pr, file=paste("P_",species,"_miroc5_4570.asc", sep=""))
writeRaster(pr, file=paste("P_",species,"_miroc5_4570.tif", sep=""), format="GTiff")

#export  plot
g <- ggplot() +
  geom_raster(data = pr_df, aes(x = x, y = y, fill = layer)) + coord_quickmap() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_rect(fill = "white"), legend.title = element_blank()) + scale_fill_viridis_c(option = "magma", na.value = "grey90") + xlab("Longitude") + ylab("Latitude")

pdf(file=paste("P_",species,"_plot_miroc5_4570.pdf", sep=""))
g
dev.off()



#get miroc5_8550 plot
pr = predict(miroc5_8550, eval1@models[[bestmod]])
pr_df = as.data.frame(pr, xy=T)

#write raster
writeRaster(pr, file=paste("P_",species,"_miroc5_8550.asc", sep=""))
writeRaster(pr, file=paste("P_",species,"_miroc5_8550.tif", sep=""), format="GTiff")

#export  plot
g <- ggplot() +
  geom_raster(data = pr_df, aes(x = x, y = y, fill = layer)) + coord_quickmap() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_rect(fill = "white"), legend.title = element_blank()) + scale_fill_viridis_c(option = "magma", na.value = "grey90") + xlab("Longitude") + ylab("Latitude")

pdf(file=paste("P_",species,"_plot_miroc5_8550.pdf", sep=""))
g
dev.off()



#get miroc5_8570 plot
pr = predict(miroc5_8570, eval1@models[[bestmod]])
pr_df = as.data.frame(pr, xy=T)

#write raster
writeRaster(pr, file=paste("P_",species,"_miroc5_8570.asc", sep=""))
writeRaster(pr, file=paste("P_",species,"_miroc5_8570.tif", sep=""), format="GTiff")

#export  plot
g <- ggplot() +
  geom_raster(data = pr_df, aes(x = x, y = y, fill = layer)) + coord_quickmap() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_rect(fill = "white"), legend.title = element_blank()) + scale_fill_viridis_c(option = "magma", na.value = "grey90") + xlab("Longitude") + ylab("Latitude")

pdf(file=paste("P_",species,"_plot_miroc5_8570.pdf", sep=""))
g
dev.off()
