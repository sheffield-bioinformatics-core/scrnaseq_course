if(!require(BiocManager)) install.packages("BiocManager")
BiocManager::install(c("Seurat",
                       "tidyverse",
                       "org.Hs.eg.db",
                       "clusterProfiler",
                       "topGO",
                       "Rgraphviz",
                       "rmarkdown"))
