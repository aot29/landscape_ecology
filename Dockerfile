FROM jupyter/r-notebook

ARG cran_mirror="http://cran.us.r-project.org"
# install R packages
RUN \
Rscript -e "install.packages('tidyverse', repos='$cran_mirror')"; \
Rscript -e "install.packages('maps', repos='$cran_mirror')"; \
Rscript -e "install.packages('mapproj', repos='$cran_mirror')"; \
Rscript -e "install.packages('deeptime', repos='$cran_mirror')"; \
Rscript -e "install.packages('repr', repos='$cran_mirror')";