

#stack climat layers to be used for test species

#dunni
envs = stack(bio1, bio2, bio3, bio5, bio6, bio9, bio12, bio14, bio15)

ccsm4_4550 <-stack(bio1_ccsm4_4550, bio2_ccsm4_4550, bio3_ccsm4_4550, bio5_ccsm4_4550, bio6_ccsm4_4550, bio9_ccsm4_4550, bio12_ccsm4_4550, bio14_ccsm4_4550, bio15_ccsm4_4550)
ccsm4_4570 <-stack(bio1_ccsm4_4570, bio2_ccsm4_4570, bio3_ccsm4_4570, bio5_ccsm4_4570, bio6_ccsm4_4570, bio9_ccsm4_4570, bio12_ccsm4_4570, bio14_ccsm4_4570, bio15_ccsm4_4570)
ccsm4_8550 <-stack(bio1_ccsm4_8550, bio2_ccsm4_8550, bio3_ccsm4_8550, bio5_ccsm4_8550, bio6_ccsm4_8550, bio9_ccsm4_8550, bio12_ccsm4_8550, bio14_ccsm4_8550, bio15_ccsm4_8550)
ccsm4_8570 <-stack(bio1_ccsm4_8570, bio2_ccsm4_8570, bio3_ccsm4_8570, bio5_ccsm4_8570, bio6_ccsm4_8570, bio9_ccsm4_8570, bio12_ccsm4_8570, bio14_ccsm4_8570, bio15_ccsm4_8570)
miroc5_4550 <-stack(bio1_miroc5_4550, bio2_miroc5_4550, bio3_miroc5_4550, bio5_miroc5_4550, bio6_miroc5_4550, bio9_miroc5_4550, bio12_miroc5_4550, bio14_miroc5_4550, bio15_miroc5_4550)
miroc5_4570 <-stack(bio1_miroc5_4570, bio2_miroc5_4570, bio3_miroc5_4570, bio5_miroc5_4570, bio6_miroc5_4570, bio9_miroc5_4570, bio12_miroc5_4570, bio14_miroc5_4570, bio15_miroc5_4570)
miroc5_8550 <-stack(bio1_miroc5_8550, bio2_miroc5_8550, bio3_miroc5_8550, bio5_miroc5_8550, bio6_miroc5_8550, bio9_miroc5_8550, bio12_miroc5_8550, bio14_miroc5_8550, bio15_miroc5_8550)
miroc5_8570 <-stack(bio1_miroc5_8570, bio2_miroc5_8570, bio3_miroc5_8570, bio5_miroc5_8570, bio6_miroc5_8570, bio9_miroc5_8570, bio12_miroc5_8570, bio14_miroc5_8570, bio15_miroc5_8570)

names(ccsm4_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_4550) c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_4570) c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_8550) c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_8570) c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')

#asupak
envs = stack(bio12, bio13, bio16, bio19)

ccsm4_4550 <- stack(bio12_ccsm4_4550, bio13_ccsm4_4550, bio16_ccsm4_4550, bio19_ccsm4_4550)
ccsm4_4570 <- stack(bio12_ccsm4_4570, bio13_ccsm4_4570, bio16_ccsm4_4570, bio19_ccsm4_4570)
ccsm4_8550 <- stack(bio12_ccsm4_8550, bio13_ccsm4_8550, bio16_ccsm4_8550, bio19_ccsm4_8550)
ccsm4_8570 <- stack(bio12_ccsm4_8570, bio13_ccsm4_8570, bio16_ccsm4_8570, bio19_ccsm4_8570)
miroc5_4550 <- stack(bio12_miroc5_4550, bio13_miroc5_4550, bio16_miroc5_4550, bio19_miroc5_4550)
miroc5_4570 <- stack(bio12_miroc5_4570, bio13_miroc5_4570, bio16_miroc5_4570, bio19_miroc5_4570)
miroc5_8550 <- stack(bio12_miroc5_8550, bio13_miroc5_8550, bio16_miroc5_8550, bio19_miroc5_8550)
miroc5_8570 <- stack(bio12_miroc5_8570, bio13_miroc5_8570, bio16_miroc5_8570, bio19_miroc5_8570)

names(ccsm4_4550) <- c('bio12_crop', 'bio13_crop', 'bio16_crop', 'bio19_crop')
names(ccsm4_4570) <- c('bio12_crop', 'bio13_crop', 'bio16_crop', 'bio19_crop')
names(ccsm4_8550) <- c('bio12_crop', 'bio13_crop', 'bio16_crop', 'bio19_crop')
names(ccsm4_8570) <- c('bio12_crop', 'bio13_crop', 'bio16_crop', 'bio19_crop')
names(miroc5_4550) <- c('bio12_crop', 'bio13_crop', 'bio16_crop', 'bio19_crop')
names(miroc5_4570) <- c('bio12_crop', 'bio13_crop', 'bio16_crop', 'bio19_crop')
names(miroc5_8550) <- c('bio12_crop', 'bio13_crop', 'bio16_crop', 'bio19_crop')
names(miroc5_8570) <- c('bio12_crop', 'bio13_crop', 'bio16_crop', 'bio19_crop')


#elongatus
envs = stack(bio1, bio2, bio6, bio12, bio14, bio15)

ccsm4_4550 <- stack(bio1_ccsm4_4550, bio2_ccsm4_4550, bio6_ccsm4_4550, bio12_ccsm4_4550, bio14_ccsm4_4550, bio15_ccsm4_4550)
ccsm4_4570 <- stack(bio1_ccsm4_4570, bio2_ccsm4_4570, bio6_ccsm4_4570, bio12_ccsm4_4570, bio14_ccsm4_4570, bio15_ccsm4_4570)
ccsm4_8550 <- stack(bio1_ccsm4_8550, bio2_ccsm4_8550, bio6_ccsm4_8550, bio12_ccsm4_8550, bio14_ccsm4_8550, bio15_ccsm4_8550)
ccsm4_8570 <- stack(bio1_ccsm4_8570, bio2_ccsm4_8570, bio6_ccsm4_8570, bio12_ccsm4_8570, bio14_ccsm4_8570, bio15_ccsm4_8570)
miroc5_4550 <- stack(bio1_miroc5_4550, bio2_miroc5_4550, bio6_miroc5_4550, bio12_miroc5_4550, bio14_miroc5_4550, bio15_miroc5_4550)
miroc5_4570 <- stack(bio1_miroc5_4570, bio2_miroc5_4570, bio6_miroc5_4570, bio12_miroc5_4570, bio14_miroc5_4570, bio15_miroc5_4570)
miroc5_8550 <- stack(bio1_miroc5_8550, bio2_miroc5_8550, bio6_miroc5_8550, bio12_miroc5_8550, bio14_miroc5_8550, bio15_miroc5_8550)
miroc5_8570 <- stack(bio1_miroc5_8570, bio2_miroc5_8570, bio6_miroc5_8570, bio12_miroc5_8570, bio14_miroc5_8570, bio15_miroc5_8570)

names(ccsm4_4550) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_4570) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_8550) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_8570) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_4550) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_4570) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_8550) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_8570) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')


#idahoensis
envs = stack(bio4, bio7, bio8, bio9, bio15)

ccsm4_4550 <- stack(bio4_ccsm4_4550, bio7_ccsm4_4550, bio8_ccsm4_4550, bio9_ccsm4_4550, bio15_ccsm4_4550)
ccsm4_4570 <- stack(bio4_ccsm4_4570, bio7_ccsm4_4570, bio8_ccsm4_4570, bio9_ccsm4_4570, bio15_ccsm4_4570)
ccsm4_8550 <- stack(bio4_ccsm4_8550, bio7_ccsm4_8550, bio8_ccsm4_8550, bio9_ccsm4_8550, bio15_ccsm4_8550)
ccsm4_8570 <- stack(bio4_ccsm4_8570, bio7_ccsm4_8570, bio8_ccsm4_8570, bio9_ccsm4_8570, bio15_ccsm4_8570)
miroc5_4550 <- stack(bio4_miroc5_4550, bio7_miroc5_4550, bio8_miroc5_4550, bio9_miroc5_4550, bio15_miroc5_4550)
miroc5_4570 <- stack(bio4_miroc5_4570, bio7_miroc5_4570, bio8_miroc5_4570, bio9_miroc5_4570, bio15_miroc5_4570)
miroc5_8550 <- stack(bio4_miroc5_8550, bio7_miroc5_8550, bio8_miroc5_8550, bio9_miroc5_8550, bio15_miroc5_8550)
miroc5_8570 <- stack(bio4_miroc5_8570, bio7_miroc5_8570, bio8_miroc5_8570, bio9_miroc5_8570, bio15_miroc5_8570)

names(ccsm4_4550) <- c('bio4_crop', 'bio7_crop', 'bio8_crop', 'bio9_crop', 'bio15_crop')
names(ccsm4_4570) <- c('bio4_crop', 'bio7_crop', 'bio8_crop', 'bio9_crop', 'bio15_crop')
names(ccsm4_8550) <- c('bio4_crop', 'bio7_crop', 'bio8_crop', 'bio9_crop', 'bio15_crop')
names(ccsm4_8570) <- c('bio4_crop', 'bio7_crop', 'bio8_crop', 'bio9_crop', 'bio15_crop')
names(miroc5_4550) <- c('bio4_crop', 'bio7_crop', 'bio8_crop', 'bio9_crop', 'bio15_crop')
names(miroc5_4570) <- c('bio4_crop', 'bio7_crop', 'bio8_crop', 'bio9_crop', 'bio15_crop')
names(miroc5_8550) <- c('bio4_crop', 'bio7_crop', 'bio8_crop', 'bio9_crop', 'bio15_crop')
names(miroc5_8570) <- c('bio4_crop', 'bio7_crop', 'bio8_crop', 'bio9_crop', 'bio15_crop')


#larselli
envs = stack(bio1, bio2, bio3, bio4, bio7, bio12, bio14, bio15)

ccsm4_4550 <- stack(bio1_ccsm4_4550, bio2_ccsm4_4550, bio3_ccsm4_4550, bio4_ccsm4_4550, bio7_ccsm4_4550, bio12_ccsm4_4550, bio14_ccsm4_4550, bio15_ccsm4_4550)
ccsm4_4570 <- stack(bio1_ccsm4_4570, bio2_ccsm4_4570, bio3_ccsm4_4570, bio4_ccsm4_4570, bio7_ccsm4_4570, bio12_ccsm4_4570, bio14_ccsm4_4570, bio15_ccsm4_4570)
ccsm4_8550 <- stack(bio1_ccsm4_8550, bio2_ccsm4_8550, bio3_ccsm4_8550, bio4_ccsm4_8550, bio7_ccsm4_8550, bio12_ccsm4_8550, bio14_ccsm4_8550, bio15_ccsm4_8550)
ccsm4_8570 <- stack(bio1_ccsm4_8570, bio2_ccsm4_8570, bio3_ccsm4_8570, bio4_ccsm4_8570, bio7_ccsm4_8570, bio12_ccsm4_8570, bio14_ccsm4_8570, bio15_ccsm4_8570)
miroc5_4550 <- stack(bio1_miroc5_4550, bio2_miroc5_4550, bio3_miroc5_4550, bio4_miroc5_4550, bio7_miroc5_4550, bio12_miroc5_4550, bio14_miroc5_4550, bio15_miroc5_4550)
miroc5_4570 <- stack(bio1_miroc5_4570, bio2_miroc5_4570, bio3_miroc5_4570, bio4_miroc5_4570, bio7_miroc5_4570, bio12_miroc5_4570, bio14_miroc5_4570, bio15_miroc5_4570)
miroc5_8550 <- stack(bio1_miroc5_8550, bio2_miroc5_8550, bio3_miroc5_8550, bio4_miroc5_8550, bio7_miroc5_8550, bio12_miroc5_8550, bio14_miroc5_8550, bio15_miroc5_8550)
miroc5_8570 <- stack(bio1_miroc5_8570, bio2_miroc5_8570, bio3_miroc5_8570, bio4_miroc5_8570, bio7_miroc5_8570, bio12_miroc5_8570, bio14_miroc5_8570, bio15_miroc5_8570)

names(ccsm4_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')


#stormi
envs = stack(bio1, bio2, bio3, bio4, bio12, bio14, bio15)

ccsm4_4550 <- stack(bio1_ccsm4_4550, bio2_ccsm4_4550, bio3_ccsm4_4550, bio4_ccsm4_4550, bio12_ccsm4_4550, bio14_ccsm4_4550, bio15_ccsm4_4550)
ccsm4_4570 <- stack(bio1_ccsm4_4570, bio2_ccsm4_4570, bio3_ccsm4_4570, bio4_ccsm4_4570, bio12_ccsm4_4570, bio14_ccsm4_4570, bio15_ccsm4_4570)
ccsm4_8550 <- stack(bio1_ccsm4_8550, bio2_ccsm4_8550, bio3_ccsm4_8550, bio4_ccsm4_8550, bio12_ccsm4_8550, bio14_ccsm4_8550, bio15_ccsm4_8550)
ccsm4_8570 <- stack(bio1_ccsm4_8570, bio2_ccsm4_8570, bio3_ccsm4_8570, bio4_ccsm4_8570, bio12_ccsm4_8570, bio14_ccsm4_8570, bio15_ccsm4_8570)
miroc5_4550 <- stack(bio1_miroc5_4550, bio2_miroc5_4550, bio3_miroc5_4550, bio4_miroc5_4550, bio12_miroc5_4550, bio14_miroc5_4550, bio15_miroc5_4550)
miroc5_4570 <- stack(bio1_miroc5_4570, bio2_miroc5_4570, bio3_miroc5_4570, bio4_miroc5_4570, bio12_miroc5_4570, bio14_miroc5_4570, bio15_miroc5_4570)
miroc5_8550 <- stack(bio1_miroc5_8550, bio2_miroc5_8550, bio3_miroc5_8550, bio4_miroc5_8550, bio12_miroc5_8550, bio14_miroc5_8550, bio15_miroc5_8550)
miroc5_8570 <- stack(bio1_miroc5_8570, bio2_miroc5_8570, bio3_miroc5_8570, bio4_miroc5_8570, bio12_miroc5_8570, bio14_miroc5_8570, bio15_miroc5_8570)

names(ccsm4_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')


#vandykei
envs = stack(bio1, bio2, bio3, bio4, bio5, bio6, bio9, bio12, bio14, bio15)

ccsm4_4550 <- stack(bio1_ccsm4_4550, bio2_ccsm4_4550, bio3_ccsm4_4550, bio4_ccsm4_4550, bio5_ccsm4_4550, bio6_ccsm4_4550, bio9_ccsm4_4550, bio12_ccsm4_4550, bio14_ccsm4_4550, bio15_ccsm4_4550)
ccsm4_4570 <- stack(bio1_ccsm4_4570, bio2_ccsm4_4570, bio3_ccsm4_4570, bio4_ccsm4_4570, bio5_ccsm4_4570, bio6_ccsm4_4570, bio9_ccsm4_4570, bio12_ccsm4_4570, bio14_ccsm4_4570, bio15_ccsm4_4570)
ccsm4_8550 <- stack(bio1_ccsm4_8550, bio2_ccsm4_8550, bio3_ccsm4_8550, bio4_ccsm4_8550, bio5_ccsm4_8550, bio6_ccsm4_8550, bio9_ccsm4_8550, bio12_ccsm4_8550, bio14_ccsm4_8550, bio15_ccsm4_8550)
ccsm4_8570 <- stack(bio1_ccsm4_8570, bio2_ccsm4_8570, bio3_ccsm4_8570, bio4_ccsm4_8570, bio5_ccsm4_8570, bio6_ccsm4_8570, bio9_ccsm4_8570, bio12_ccsm4_8570, bio14_ccsm4_8570, bio15_ccsm4_8570)
miroc5_4550 <- stack(bio1_miroc5_4550, bio2_miroc5_4550, bio3_miroc5_4550, bio4_miroc5_4550, bio5_miroc5_4550, bio6_miroc5_4550, bio9_miroc5_4550, bio12_miroc5_4550, bio14_miroc5_4550, bio15_miroc5_4550)
miroc5_4570 <- stack(bio1_miroc5_4570, bio2_miroc5_4570, bio3_miroc5_4570, bio4_miroc5_4570, bio5_miroc5_4570, bio6_miroc5_4570, bio9_miroc5_4570, bio12_miroc5_4570, bio14_miroc5_4570, bio15_miroc5_4570)
miroc5_8550 <- stack(bio1_miroc5_8550, bio2_miroc5_8550, bio3_miroc5_8550, bio4_miroc5_8550, bio5_miroc5_8550, bio6_miroc5_8550, bio9_miroc5_8550, bio12_miroc5_8550, bio14_miroc5_8550, bio15_miroc5_8550)
miroc5_8570 <- stack(bio1_miroc5_8570, bio2_miroc5_8570, bio3_miroc5_8570, bio4_miroc5_8570, bio5_miroc5_8570, bio6_miroc5_8570, bio9_miroc5_8570, bio12_miroc5_8570, bio14_miroc5_8570, bio15_miroc5_8570)

names(ccsm4_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')


#vehiculum
envs = stack(bio1, bio2, bio3, bio4, bio7, bio15)

ccsm4_4550 <- stack(bio1_ccsm4_4550, bio2_ccsm4_4550, bio3_ccsm4_4550, bio4_ccsm4_4550, bio7_ccsm4_4550, bio15_ccsm4_4550)
ccsm4_4570 <- stack(bio1_ccsm4_4570, bio2_ccsm4_4570, bio3_ccsm4_4570, bio4_ccsm4_4570, bio7_ccsm4_4570, bio15_ccsm4_4570)
ccsm4_8550 <- stack(bio1_ccsm4_8550, bio2_ccsm4_8550, bio3_ccsm4_8550, bio4_ccsm4_8550, bio7_ccsm4_8550, bio15_ccsm4_8550)
ccsm4_8570 <- stack(bio1_ccsm4_8570, bio2_ccsm4_8570, bio3_ccsm4_8570, bio4_ccsm4_8570, bio7_ccsm4_8570, bio15_ccsm4_8570)
miroc5_4550 <- stack(bio1_miroc5_4550, bio2_miroc5_4550, bio3_miroc5_4550, bio4_miroc5_4550, bio7_miroc5_4550, bio15_miroc5_4550)
miroc5_4570 <- stack(bio1_miroc5_4570, bio2_miroc5_4570, bio3_miroc5_4570, bio4_miroc5_4570, bio7_miroc5_4570, bio15_miroc5_4570)
miroc5_8550 <- stack(bio1_miroc5_8550, bio2_miroc5_8550, bio3_miroc5_8550, bio4_miroc5_8550, bio7_miroc5_8550, bio15_miroc5_8550)
miroc5_8570 <- stack(bio1_miroc5_8570, bio2_miroc5_8570, bio3_miroc5_8570, bio4_miroc5_8570, bio7_miroc5_8570, bio15_miroc5_8570)

names(ccsm4_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio15_crop')
names(ccsm4_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio15_crop')
names(ccsm4_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio15_crop')
names(ccsm4_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio15_crop')
names(miroc5_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio15_crop')
names(miroc5_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio15_crop')
names(miroc5_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio15_crop')
names(miroc5_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio7_crop', 'bio15_crop')


#dunni-vehiculum
envs = stack(bio1, bio2, bio3, bio4, bio5, bio7, bio10, bio11, bio15, bio18, bio19)

ccsm4_4550 <- stack(bio1_ccsm4_4550, bio2_ccsm4_4550, bio3_ccsm4_4550, bio4_ccsm4_4550, bio5_ccsm4_4550, bio7_ccsm4_4550, bio10_ccsm4_4550, bio11_ccsm4_4550, bio15_ccsm4_4550, bio18_ccsm4_4550, bio19_ccsm4_4550)
ccsm4_4570 <- stack(bio1_ccsm4_4570, bio2_ccsm4_4570, bio3_ccsm4_4570, bio4_ccsm4_4570, bio5_ccsm4_4570, bio7_ccsm4_4570, bio10_ccsm4_4570, bio11_ccsm4_4570, bio15_ccsm4_4570, bio18_ccsm4_4570, bio19_ccsm4_4570)
ccsm4_8550 <- stack(bio1_ccsm4_8550, bio2_ccsm4_8550, bio3_ccsm4_8550, bio4_ccsm4_8550, bio5_ccsm4_8550, bio7_ccsm4_8550, bio10_ccsm4_8550, bio11_ccsm4_8550, bio15_ccsm4_8550, bio18_ccsm4_8550, bio19_ccsm4_8550)
ccsm4_8570 <- stack(bio1_ccsm4_8570, bio2_ccsm4_8570, bio3_ccsm4_8570, bio4_ccsm4_8570, bio5_ccsm4_8570, bio7_ccsm4_8570, bio10_ccsm4_8570, bio11_ccsm4_8570, bio15_ccsm4_8570, bio18_ccsm4_8570, bio19_ccsm4_8570)
miroc5_4550 <- stack(bio1_miroc5_4550, bio2_miroc5_4550, bio3_miroc5_4550, bio4_miroc5_4550, bio5_miroc5_4550, bio7_miroc5_4550, bio10_miroc5_4550, bio11_miroc5_4550, bio15_miroc5_4550, bio18_miroc5_4550, bio19_miroc5_4550)
miroc5_4570 <- stack(bio1_miroc5_4570, bio2_miroc5_4570, bio3_miroc5_4570, bio4_miroc5_4570, bio5_miroc5_4570, bio7_miroc5_4570, bio10_miroc5_4570, bio11_miroc5_4570, bio15_miroc5_4570, bio18_miroc5_4570, bio19_miroc5_4570)
miroc5_8550 <- stack(bio1_miroc5_8550, bio2_miroc5_8550, bio3_miroc5_8550, bio4_miroc5_8550, bio5_miroc5_8550, bio7_miroc5_8550, bio10_miroc5_8550, bio11_miroc5_8550, bio15_miroc5_8550, bio18_miroc5_8550, bio19_miroc5_8550)
miroc5_8570 <- stack(bio1_miroc5_8570, bio2_miroc5_8570, bio3_miroc5_8570, bio4_miroc5_8570, bio5_miroc5_8570, bio7_miroc5_8570, bio10_miroc5_8570, bio11_miroc5_8570, bio15_miroc5_8570, bio18_miroc5_8570, bio19_miroc5_8570)

names(ccsm4_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio7_crop', 'bio10_crop', 'bio11_crop', 'bio15_crop', 'bio18_crop', 'bio19_crop')
names(ccsm4_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio7_crop', 'bio10_crop', 'bio11_crop', 'bio15_crop', 'bio18_crop', 'bio19_crop')
names(ccsm4_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio7_crop', 'bio10_crop', 'bio11_crop', 'bio15_crop', 'bio18_crop', 'bio19_crop')
names(ccsm4_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio7_crop', 'bio10_crop', 'bio11_crop', 'bio15_crop', 'bio18_crop', 'bio19_crop')
names(miroc5_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio7_crop', 'bio10_crop', 'bio11_crop', 'bio15_crop', 'bio18_crop', 'bio19_crop')
names(miroc5_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio7_crop', 'bio10_crop', 'bio11_crop', 'bio15_crop', 'bio18_crop', 'bio19_crop')
names(miroc5_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio7_crop', 'bio10_crop', 'bio11_crop', 'bio15_crop', 'bio18_crop', 'bio19_crop')
names(miroc5_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio7_crop', 'bio10_crop', 'bio11_crop', 'bio15_crop', 'bio18_crop', 'bio19_crop')



#elongatus-stormi-asupak
envs = stack(bio1, bio2, bio6, bio14, bio15, bio17)

ccsm4_4550 <-stack(bio1_ccsm4_4550, bio2_ccsm4_4550, bio6_ccsm4_4550, bio14_ccsm4_4550, bio15_ccsm4_4550, bio17_ccsm4_4550)
ccsm4_4570 <-stack(bio1_ccsm4_4570, bio2_ccsm4_4570, bio6_ccsm4_4570, bio14_ccsm4_4570, bio15_ccsm4_4570, bio17_ccsm4_4570)
ccsm4_8550 <-stack(bio1_ccsm4_8550, bio2_ccsm4_8550, bio6_ccsm4_8550, bio14_ccsm4_8550, bio15_ccsm4_8550, bio17_ccsm4_8550)
ccsm4_8570 <-stack(bio1_ccsm4_8570, bio2_ccsm4_8570, bio6_ccsm4_8570, bio14_ccsm4_8570, bio15_ccsm4_8570, bio17_ccsm4_8570)
miroc5_4550 <-stack(bio1_miroc5_4550, bio2_miroc5_4550, bio6_miroc5_4550, bio14_miroc5_4550, bio15_miroc5_4550, bio17_miroc5_4550)
miroc5_4570 <-stack(bio1_miroc5_4570, bio2_miroc5_4570, bio6_miroc5_4570, bio14_miroc5_4570, bio15_miroc5_4570, bio17_miroc5_4570)
miroc5_8550 <-stack(bio1_miroc5_8550, bio2_miroc5_8550, bio6_miroc5_8550, bio14_miroc5_8550, bio15_miroc5_8550, bio17_miroc5_8550)
miroc5_8570 <-stack(bio1_miroc5_8570, bio2_miroc5_8570, bio6_miroc5_8570, bio14_miroc5_8570, bio15_miroc5_8570, bio17_miroc5_8570)

names(ccsm4_4550) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(ccsm4_4570) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(ccsm4_8550) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(ccsm4_8570) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(miroc5_4550) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(miroc5_4570) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(miroc5_8550) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(miroc5_8570) <- c('bio1_crop', 'bio2_crop', 'bio6_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')


#larselli-vandykei
envs = stack(bio1, bio2, bio3, bio4, bio5, bio6, bio12, bio14, bio15)

ccsm4_4550 <- stack(bio1_ccsm4_4550, bio2_ccsm4_4550, bio3_ccsm4_4550, bio4_ccsm4_4550, bio5_ccsm4_4550, bio6_ccsm4_4550, bio12_ccsm4_4550, bio14_ccsm4_4550, bio15_ccsm4_4550)
ccsm4_4570 <- stack(bio1_ccsm4_4570, bio2_ccsm4_4570, bio3_ccsm4_4570, bio4_ccsm4_4570, bio5_ccsm4_4570, bio6_ccsm4_4570, bio12_ccsm4_4570, bio14_ccsm4_4570, bio15_ccsm4_4570)
ccsm4_8550 <- stack(bio1_ccsm4_8550, bio2_ccsm4_8550, bio3_ccsm4_8550, bio4_ccsm4_8550, bio5_ccsm4_8550, bio6_ccsm4_8550, bio12_ccsm4_8550, bio14_ccsm4_8550, bio15_ccsm4_8550)
ccsm4_8570 <- stack(bio1_ccsm4_8570, bio2_ccsm4_8570, bio3_ccsm4_8570, bio4_ccsm4_8570, bio5_ccsm4_8570, bio6_ccsm4_8570, bio12_ccsm4_8570, bio14_ccsm4_8570, bio15_ccsm4_8570)
miroc5_4550 <- stack(bio1_miroc5_4550, bio2_miroc5_4550, bio3_miroc5_4550, bio4_miroc5_4550, bio5_miroc5_4550, bio6_miroc5_4550, bio12_miroc5_4550, bio14_miroc5_4550, bio15_miroc5_4550)
miroc5_4570 <- stack(bio1_miroc5_4570, bio2_miroc5_4570, bio3_miroc5_4570, bio4_miroc5_4570, bio5_miroc5_4570, bio6_miroc5_4570, bio12_miroc5_4570, bio14_miroc5_4570, bio15_miroc5_4570)
miroc5_8550 <- stack(bio1_miroc5_8550, bio2_miroc5_8550, bio3_miroc5_8550, bio4_miroc5_8550, bio5_miroc5_8550, bio6_miroc5_8550, bio12_miroc5_8550, bio14_miroc5_8550, bio15_miroc5_8550)
miroc5_8570 <- stack(bio1_miroc5_8570, bio2_miroc5_8570, bio3_miroc5_8570, bio4_miroc5_8570, bio5_miroc5_8570, bio6_miroc5_8570, bio12_miroc5_8570, bio14_miroc5_8570, bio15_miroc5_8570)

names(ccsm4_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(ccsm4_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')
names(miroc5_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio12_crop', 'bio14_crop', 'bio15_crop')


#larselli-vandykei-idahoensis
envs = stack(bio1, bio2, bio3, bio4, bio5, bio6, bio9, bio10, bio14, bio15, bio17)

ccsm4_4550 <- stack(bio1_ccsm4_4550, bio2_ccsm4_4550, bio3_ccsm4_4550, bio4_ccsm4_4550, bio5_ccsm4_4550, bio6_ccsm4_4550, bio9_ccsm4_4550, bio10_ccsm4_4550, bio14_ccsm4_4550, bio15_ccsm4_4550, bio17_ccsm4_4550)
ccsm4_4570 <- stack(bio1_ccsm4_4570, bio2_ccsm4_4570, bio3_ccsm4_4570, bio4_ccsm4_4570, bio5_ccsm4_4570, bio6_ccsm4_4570, bio9_ccsm4_4570, bio10_ccsm4_4570, bio14_ccsm4_4570, bio15_ccsm4_4570, bio17_ccsm4_4570)
ccsm4_8550 <- stack(bio1_ccsm4_8550, bio2_ccsm4_8550, bio3_ccsm4_8550, bio4_ccsm4_8550, bio5_ccsm4_8550, bio6_ccsm4_8550, bio9_ccsm4_8550, bio10_ccsm4_8550, bio14_ccsm4_8550, bio15_ccsm4_8550, bio17_ccsm4_8550)
ccsm4_8570 <- stack(bio1_ccsm4_8570, bio2_ccsm4_8570, bio3_ccsm4_8570, bio4_ccsm4_8570, bio5_ccsm4_8570, bio6_ccsm4_8570, bio9_ccsm4_8570, bio10_ccsm4_8570, bio14_ccsm4_8570, bio15_ccsm4_8570, bio17_ccsm4_8570)
miroc5_4550 <- stack(bio1_miroc5_4550, bio2_miroc5_4550, bio3_miroc5_4550, bio4_miroc5_4550, bio5_miroc5_4550, bio6_miroc5_4550, bio9_miroc5_4550, bio10_miroc5_4550, bio14_miroc5_4550, bio15_miroc5_4550, bio17_miroc5_4550)
miroc5_4570 <- stack(bio1_miroc5_4570, bio2_miroc5_4570, bio3_miroc5_4570, bio4_miroc5_4570, bio5_miroc5_4570, bio6_miroc5_4570, bio9_miroc5_4570, bio10_miroc5_4570, bio14_miroc5_4570, bio15_miroc5_4570, bio17_miroc5_4570)
miroc5_8550 <- stack(bio1_miroc5_8550, bio2_miroc5_8550, bio3_miroc5_8550, bio4_miroc5_8550, bio5_miroc5_8550, bio6_miroc5_8550, bio9_miroc5_8550, bio10_miroc5_8550, bio14_miroc5_8550, bio15_miroc5_8550, bio17_miroc5_8550)
miroc5_8570 <- stack(bio1_miroc5_8570, bio2_miroc5_8570, bio3_miroc5_8570, bio4_miroc5_8570, bio5_miroc5_8570, bio6_miroc5_8570, bio9_miroc5_8570, bio10_miroc5_8570, bio14_miroc5_8570, bio15_miroc5_8570, bio17_miroc5_8570)

names(ccsm4_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio10_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(ccsm4_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio10_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(ccsm4_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio10_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(ccsm4_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio10_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(miroc5_4550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio10_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(miroc5_4570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio10_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(miroc5_8550) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio10_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')
names(miroc5_8570) <- c('bio1_crop', 'bio2_crop', 'bio3_crop', 'bio4_crop', 'bio5_crop', 'bio6_crop', 'bio9_crop', 'bio10_crop', 'bio14_crop', 'bio15_crop', 'bio17_crop')

