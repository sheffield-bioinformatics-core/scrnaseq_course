library(GEOquery)
library(tidyverse)

dir.create("GSE132509",showWarnings = FALSE)
geo <- getGEO("GSE132509")[[1]]
pData(geo) %>% 
  select(GSE = geo_accession, SampleName = title, SampleGroup = source_name_ch1, Disease = characteristics_ch1) %>% 
  mutate(Disease = ifelse(grepl("Healthy",Disease), "Healthy","Disease")) %>% 
  write_tsv("GSE132509/meta_data.tsv")
  


getGEOSuppFiles("GSE132509")
untar("GSE132509/GSE132509_RAW.tar",exdir = "GSE132509/")

## Find the matrix files

m_files <- list.files("GSE132509/",pattern = "matrix.mtx.gz")

## Get the sample name from the matrix files

samples <- str_split_fixed(m_files, "_", 3)[,1]

for(i in 1:length(samples)){
  dir.create(paste0("GSE132509/",samples[i]),showWarnings = FALSE)  
  files_to_move <- list.files("GSE132509/", pattern =  paste0(samples[i],"_"),full.names = TRUE)
  
  file.copy(files_to_move, paste0("GSE132509/",samples[i]))
  
  barcode_file <- list.files(paste0("GSE132509/",samples[i]), pattern="barcodes.tsv.gz",full.names = TRUE)
  file.rename(barcode_file, paste0("GSE132509/",samples[i],"/barcodes.tsv.gz"))

  genes_file <- list.files(paste0("GSE132509/",samples[i]), pattern="genes.tsv.gz",full.names = TRUE)
  file.rename(genes_file, paste0("GSE132509/",samples[i],"/features.tsv.gz"))

  barcode_file <- list.files(paste0("GSE132509/",samples[i]), pattern="matrix.mtx.gz",full.names = TRUE)
  file.rename(barcode_file, paste0("GSE132509/",samples[i],"/matrix.mtx.gz"))
  
}