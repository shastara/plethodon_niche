library(raster)

xy <- read.csv("~/Desktop/Plethodon_revision1/SpeciesCoordinates_clean_decimal_cell-unique/asupak_unique_cell.csv")
xy <- read.csv("~/Desktop/Plethodon_revision1/SpeciesCoordinates_clean_decimal_cell-unique/dunni_unique_cell.csv")
xy <- read.csv("~/Desktop/Plethodon_revision1/SpeciesCoordinates_clean_decimal_cell-unique/elongatus_unique_cell.csv")
xy <- read.csv("~/Desktop/Plethodon_revision1/SpeciesCoordinates_clean_decimal_cell-unique/idahoensis_unique_cell.csv")
xy <- read.csv("~/Desktop/Plethodon_revision1/SpeciesCoordinates_clean_decimal_cell-unique/larselli_unique_cell.csv")
xy <- read.csv("~/Desktop/Plethodon_revision1/SpeciesCoordinates_clean_decimal_cell-unique/stormi_unique_cell.csv")
xy <- read.csv("~/Desktop/Plethodon_revision1/SpeciesCoordinates_clean_decimal_cell-unique/vandykei_unique_cell.csv")
xy <- read.csv("~/Desktop/Plethodon_revision1/SpeciesCoordinates_clean_decimal_cell-unique/vehiculum_unique_cell.csv")
xy <- read.csv("~/Desktop/Plethodon_revision1/SpeciesCoordinates_clean_decimal_cell-unique/dunni_vehiculum_unique_cell.csv")
xy <- read.csv("~/Desktop/Plethodon_revision1/SpeciesCoordinates_clean_decimal_cell-unique/elongatus_stormi_asupak_unique_cell.csv")
xy <- read.csv("~/Desktop/Plethodon_revision1/SpeciesCoordinates_clean_decimal_cell-unique/larselli_vandykei_unique_cell.csv")
xy <- read.csv("~/Desktop/Plethodon_revision1/SpeciesCoordinates_clean_decimal_cell-unique/larselli_vandykei_idahoensis_unique_cell.csv")

species <- "larselli_vandykei_indahoensis"

#create a loop to do each biovariable for species above
for (i in 1:19){
  
  #get current values
  c <- raster(paste("~/Desktop/Plethodon_revision1/Climate/Cropped_Climate/BioclimCurrent/bio",i,"_crop.asc", sep=""))
  cxy <- extract(c, xy)
  clim <- paste("bio",i,sep="")
  
  #ttest future ccsm4 4550 data
  f_ccsm4_4550 <- raster(paste("~/Desktop/Plethodon_revision1/Climate/Cropped_Climate/ccsm4/bio",i,"_ccsm4_4550c.asc", sep=""))
  f_ccsm4_4550_xy <- extract(f_ccsm4_4550, xy)
  ttest_ccsm4_4550 <- t.test(cxy, f_ccsm4_4550_xy)
  p_ccsm4_4550 <- ttest_ccsm4_4550$p.value
  mn_ccsm_4550 <- as.data.frame(ttest_ccsm4_4550$estimate)
  cmn_ccsm_4550 <- mn_ccsm_4550[1,1]
  fmn_ccsm_4550 <- mn_ccsm_4550[2,1]
  
  #ttest future ccsm4 4570 data
  f_ccsm4_4570 <- raster(paste("~/Desktop/Plethodon_revision1/Climate/Cropped_Climate/ccsm4/bio",i,"_ccsm4_4570c.asc", sep=""))
  f_ccsm4_4570_xy <- extract(f_ccsm4_4570, xy)
  ttest_ccsm4_4570 <- t.test(cxy, f_ccsm4_4570_xy)
  p_ccsm4_4570 <- ttest_ccsm4_4570$p.value
  mn_ccsm_4570 <- as.data.frame(ttest_ccsm4_4570$estimate)
  cmn_ccsm_4570 <- mn_ccsm_4570[1,1]
  fmn_ccsm_4570 <- mn_ccsm_4570[2,1]
  
  #ttest future ccsm4 8550 data
  f_ccsm4_8550 <- raster(paste("~/Desktop/Plethodon_revision1/Climate/Cropped_Climate/ccsm4/bio",i,"_ccsm4_8550c.asc", sep=""))
  f_ccsm4_8550_xy <- extract(f_ccsm4_8550, xy)
  ttest_ccsm4_8550 <- t.test(cxy, f_ccsm4_8550_xy)
  p_ccsm4_8550 <- ttest_ccsm4_8550$p.value
  mn_ccsm_8550 <- as.data.frame(ttest_ccsm4_8550$estimate)
  cmn_ccsm_8550 <- mn_ccsm_8550[1,1]
  fmn_ccsm_8550 <- mn_ccsm_8550[2,1]
  
  #ttest future ccsm4 8570 data
  f_ccsm4_8570 <- raster(paste("~/Desktop/Plethodon_revision1/Climate/Cropped_Climate/ccsm4/bio",i,"_ccsm4_8570c.asc", sep=""))
  f_ccsm4_8570_xy <- extract(f_ccsm4_8570, xy)
  ttest_ccsm4_8570 <- t.test(cxy, f_ccsm4_8570_xy)
  p_ccsm4_8570 <- ttest_ccsm4_8570$p.value
  mn_ccsm_8570 <- as.data.frame(ttest_ccsm4_8570$estimate)
  cmn_ccsm_8570 <- mn_ccsm_8570[1,1]
  fmn_ccsm_8570 <- mn_ccsm_8570[2,1]
  
  #ttest future mirco5 4550 data
  f_miroc5_4550 <- raster(paste("~/Desktop/Plethodon_revision1/Climate/Cropped_Climate/miroc5/bio",i,"_miroc5_4550c.asc", sep=""))
  f_miroc5_4550_xy <- extract(f_miroc5_4550, xy)
  ttest_miroc5_4550 <- t.test(cxy, f_miroc5_4550_xy)
  p_miroc5_4550 <- ttest_miroc5_4550$p.value
  mn_miroc_4550 <- as.data.frame(ttest_miroc5_4550$estimate)
  cmn_miroc_4550 <- mn_miroc_4550[1,1]
  fmn_miroc_4550 <- mn_miroc_4550[2,1]
  
  #ttest future mirco5 4570 data
  f_miroc5_4570 <- raster(paste("~/Desktop/Plethodon_revision1/Climate/Cropped_Climate/miroc5/bio",i,"_miroc5_4570c.asc", sep=""))
  f_miroc5_4570_xy <- extract(f_miroc5_4570, xy)
  ttest_miroc5_4570 <- t.test(cxy, f_miroc5_4570_xy)
  p_miroc5_4570 <- ttest_miroc5_4570$p.value
  mn_miroc_4570 <- as.data.frame(ttest_miroc5_4570$estimate)
  cmn_miroc_4570 <- mn_miroc_4570[1,1]
  fmn_miroc_4570 <- mn_miroc_4570[2,1]
  
  #ttest future mirco5 8550 data
  f_miroc5_8550 <- raster(paste("~/Desktop/Plethodon_revision1/Climate/Cropped_Climate/miroc5/bio",i,"_miroc5_8550c.asc", sep=""))
  f_miroc5_8550_xy <- extract(f_miroc5_4550, xy)
  ttest_miroc5_8550 <- t.test(cxy, f_miroc5_8550_xy)
  p_miroc5_8550 <- ttest_miroc5_8550$p.value
  mn_miroc_8550 <- as.data.frame(ttest_miroc5_8550$estimate)
  cmn_miroc_8550 <- mn_miroc_8550[1,1]
  fmn_miroc_8550 <- mn_miroc_8550[2,1]
  
  #ttest future mirco5 8570 data
  f_miroc5_8570 <- raster(paste("~/Desktop/Plethodon_revision1/Climate/Cropped_Climate/miroc5/bio",i,"_miroc5_8570c.asc", sep=""))
  f_miroc5_8570_xy <- extract(f_miroc5_8570, xy)
  ttest_miroc5_8570 <- t.test(cxy, f_miroc5_8570_xy)
  p_miroc5_8570 <- ttest_miroc5_8570$p.value
  mn_miroc_8570 <- as.data.frame(ttest_miroc5_8570$estimate)
  cmn_miroc_8570 <- mn_miroc_8570[1,1]
  fmn_miroc_8570 <- mn_miroc_8570[2,1]
  
  
  write.table(data.frame(species, clim, cmn_ccsm_4550, fmn_ccsm_4550, p_ccsm4_4550, fmn_ccsm_4570, p_ccsm4_4570, fmn_ccsm_8550, p_ccsm4_8550, fmn_ccsm_8570, p_ccsm4_8570, fmn_miroc_4550, p_miroc5_4550, fmn_miroc_4570, p_miroc5_4570, fmn_miroc_8550, p_miroc5_8550, fmn_miroc_8570, p_miroc5_8570), file="~/Desktop/Plethodon_revision1/Climate_ttest.txt", quote=FALSE, row.names=FALSE, col.names=!file.exists("~/Desktop/Plethodon_revision1/Climate_ttest.txt"), append=TRUE, sep="\t")
  
}
