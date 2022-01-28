#!/bin/bash

set -euo pipefail

BUILD_DIR=/var/eiuhealthcareL2/
R_DIR=/opt/R/

export R_LIBS=${BUILD_DIR}/R/library
mkdir -p ${R_LIBS}
${R_DIR}/bin/Rscript -e 'install.packages("install.load", repos="http://cran.r-project.org")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("readxl", repos="http://cran.r-project.org")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("stringr", repos="http://cran.r-project.org")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("dplyr", repos="http://cran.r-project.org")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("RCurl", repos="http://cran.r-project.org")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("XML", repos="http://cran.r-project.org")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("tidyr", repos="http://cran.r-project.org")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("purrr", repos="http://cran.r-project.org")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("tibble", repos="http://cran.r-project.org")'
