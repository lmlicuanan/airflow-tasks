FROM rocker/verse:3.6.1
MAINTAINER Lino Licuanan <lmlicuanan14@gmail.com>

# Install Packages
RUN install2.r \
	tidyverse \
	httr \
	glue \
	magrittr \
	tidyverse \
	lubridate \
	jsonlite \
	googleCloudStorageR
  
# Copy directory
RUN mkdir -p ~/src
WORKDIR ~/src
COPY run.R run.R

# Command
CMD ["Rscript", "run.R"]