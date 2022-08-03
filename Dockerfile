FROM bioconductor/bioconductor_docker:devel
MAINTAINER Mark Dunning<m.j.dunning@sheffield.ac.uk>
# Do not exclude man pages & other documentation
RUN R -e 'BiocManager::install("tidyverse")'
RUN R -e 'BiocManager::install("Seurat")'
RUN R -e 'BiocManager::install("GEOquery")'
RUN mkdir /home/participant
COPY ./download_GSE132509.R /home/participant
COPY *.Rmd /home/participant
WORKDIR /home/participant
RUN R -f 'download_GSE132509.R'
COPY regev_lab_cell_cycle_genes.txt /home/participant