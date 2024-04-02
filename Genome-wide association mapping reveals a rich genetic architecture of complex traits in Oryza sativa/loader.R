require(tidyverse)

"https://iagr.genomics.cn/static/gstool/data/GSTP011/population/GSTP011.pheno" %>% 
  read.delim(., sep = "\t") %>%
  write_csv("pheno.csv")

download.file("https://iagr.genomics.cn/static/gstool/data/GSTP011/population/GSTP011.bed.tar.gz", destfile = "geno.bed.tar.gz", method = "curl")

untar("geno.bed.tar.gz")

file.remove("geno.bed.tar.gz")