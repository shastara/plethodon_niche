library(raster)
library(ggplot2)
library(tools)


setwd("/Users/tpelletier/Desktop/sallys/niche_paper/averaged_future_models")


   
  l <- raster("vandykei_70_avg.asc")
  l_pts <- rasterToPoints(l, spatial = TRUE)
  l_df <- data.frame(l_pts)
  
  g <- ggplot() + geom_raster(data = l_df, aes(x = x, y = y, fill = vandykei_70_avg)) + coord_quickmap() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_rect(fill = "white"), legend.title = element_blank()) + scale_fill_viridis_c(option = "magma", na.value = "grey90") + xlab("Longitude") + ylab("Latitude")
  
  pdf(file="vandykei_70_avg.pdf")
  g
  dev.off()
  

#loop didn't work bc  sp_mod wasn't write format and ggplot gave error
  
  myfiles <- list.files(pattern = ".asc", full.names=TRUE, recursive = TRUE)
  
  for (f in myfiles) {
    
    #get species and model
    sp_mod <- basename(f)
    sp_mod <- file_path_sans_ext(sp_mod)
    
  }