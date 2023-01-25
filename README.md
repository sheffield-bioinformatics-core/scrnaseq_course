# Analysis of Single-Cell RNA-seq data in R

![](sbc.png)

- January 30th University of Sheffield
- Bartolome House, Seminar Room EG03

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2379.7129257392867!2d-1.4909138836084257!3d53.38418577957657!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4879788327d13c2b%3A0x76151ebce3e59f6!2sBartolom%C3%A9%20House%2C%20Sheffield!5e0!3m2!1sen!2suk!4v1673020230144!5m2!1sen!2suk" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

## Overview

Recent advances in gene expression technologies have made it possible to measure transcription for individual cells - enabling researchers to understand cellular heterogeneity and understand complex tissue types. In this course we describe the analysis of data derived from such experiments using the R language.

We will focus specifically on data generated using the 10X protocol, although the methods will relevant to other technologies


## Schedule (Provisonal)

### Monday 23rd January

- 09:30 - 11:00 Introduction and quality assessment
- 11:15 - 12:30 Normalisation and sources of variation
- 12:30 - 13:15 LUNCH
- 13:15 - 15:00 Clustering (UMAP, tSNE etc)
- 15:00 - 16:30 Identifying marker genes and differential expression

## Materials


## Setup


1) First, install both R **and** RStudio for your operating system. 

### Windows

Install R by downloading and running [this .exe file](http://cran.r-project.org/bin/windows/base/release.htm) from CRAN. Also, please install the [RStudio IDE](http://www.rstudio.com/ide/download/desktop). Note that if you have separate user and admin accounts, you should run the installers as administrator (right-click on .exe file and select "Run as administrator" instead of double-clicking). Otherwise problems may occur later, for example when installing R packages.

### Mac

Install R by downloading and running [this .pkg file](https://cran.r-project.org/bin/macosx/base/R-4.2.2.pkg) from CRAN. Also, please install the free [RStudio IDE](https://www.rstudio.com/products/rstudio/download/#download) 

### Linux

You can download the binary files for your distribution from CRAN. Or you can use your package manager (e.g. for Debian/Ubuntu run `sudo apt-get install r-base` and for Fedora run `sudo yum install R`). Also, please install free [the RStudio IDE](https://www.rstudio.com/products/rstudio/download/#download). 


  
2) Please download and extract (un-zip) this zip file into the directory on the computer that you wish to work in

- [Course Data]()

3) Type the following into the R console to install some extra R packages required for the workshop

```
source("https://raw.githubusercontent.com/sheffield-bioinformatics-core/scrnaseq_course/main/install_packages.R")
```



**Mac Users may get the following error message when trying to install these packages**

```
xcrun error: inactive developer path (/Library/Developer/CommandLineTools), missing xcrun at:.....

```

If this is the case, you will need to follow the instructions from this link to install "Xcode"

[https://apple.stackexchange.com/questions/254380/why-am-i-getting-an-invalid-active-developer-path-when-attempting-to-use-git-a](https://apple.stackexchange.com/questions/254380/why-am-i-getting-an-invalid-active-developer-path-when-attempting-to-use-git-a)

**Window users might get a message that Rtools is required. This shouldn't be necessary, but you might need it for other packages. It can be installed here:-**

[https://cran.r-project.org/bin/windows/Rtools/](https://cran.r-project.org/bin/windows/Rtools/)


4) Check your installation. You can check everything is installed by copying and pasting this into the R console

```
source("https://raw.githubusercontent.com/sheffield-bioinformatics-core/r-online/master/check_packages.R")


## Feedback

Please let us know what your thought of the course by filling-in this short feedback form

- [Feedback form](https://docs.google.com/forms/d/e/1FAIpQLSduKv0ej_bgAYrK5_5AMfZhdQiOKPYu1ZhbWzHC7v4rRDsZbA/viewform)
```
