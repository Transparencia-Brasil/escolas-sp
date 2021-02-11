library(raster)
library(rgdal)
library(sp)
pols <- shapefile(system.file("D:/Users/jonas/Local/Documentos/Dados/Codigos e projetos/escolas-sp/dados/setores.shp", package="raster")) 
set.seed(20180121) 
pts <- data.frame(coordinates(spsample(pols, 5, 'random')), name=letters[1:5])
plot(pols); points(pts)