# Part 01
library(tidyverse)
library(magrittr)
a =
 subset(swiss, Fertility > 20)
cor.test(a$Fertility, a$Education)

#Part 02
swiss %>%
  subset(., Fertility > 20) %$%
  cor.test(Education , Fertility)

res1 =
  rnorm(100) %>%
    matrix(ncol = 2) %T>%
    plot()

mtcars %$%
  cor.test( cyl, mpg)

# Part 03
# Read the file
library(tidyverse)
mouse.tibble =
  read_delim(
    file = "data/mouse_genes_biomart_sep2018.txt",
    delim = "\t",
    quote = "",
    show_col_types = FALSE
  )

# View mouse.tibble content
ttype.stats =
  mouse.tibble %>%
    count(`Transcript type`) %>%
    arrange(-n)

# View mouse.tibble content, cont.
chr.stats =
  mouse.tibble %>%
    count(`Chromosome/scaffold name`) %>%
    arrange(-n)