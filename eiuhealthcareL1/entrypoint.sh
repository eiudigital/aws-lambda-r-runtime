#!/bin/bash
set -euo pipefail

BUILD_DIR=/var/eiuhealthcareL1/
R_DIR=/opt/R/

export R_LIBS=${BUILD_DIR}/R/library
mkdir -p ${R_LIBS}
${R_DIR}/bin/Rscript -e 'install.packages("install.load", repos="http://cran.r-project.org")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("readxl")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("stringr")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("dplyr")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("RCurl")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("XML")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("tidyr")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("purrr")'
${R_DIR}/bin/Rscript -e 'install.load::install_load("tibble")'
