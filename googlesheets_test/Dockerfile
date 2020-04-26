FROM rocker/verse:3.6.1
MAINTAINER Lino Licuanan <lmlicuanan14@gmail.com>

# Install Packages
RUN install2.r \
	tidyverse \
	googlesheets4 \
	glue
  
# Copy directory
RUN mkdir -p ~/src
WORKDIR ~/src
COPY googlesheets_test.R googlesheets_test.R

# Command
CMD ["Rscript", "googlesheets_test.R"]