FROM rocker/tidyverse:3.6.1
RUN install2.r --deps TRUE here janitor corrr beepr enrichR moderndive pander vroom rentrez feather
ADD ./code /depmap/code
RUN mkdir /depmap/data
WORKDIR /depmap
CMD Rscript code/create_gene_summary.R
