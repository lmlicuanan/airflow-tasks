FROM rocker/verse:3.6.3
MAINTAINER Lino Licuanan <linolicuanan@gmail.com>

ENV GOOGLESHEETS_TOKEN $GOOGLESHEETS_TOKEN

# Install Packages
RUN install2.r \
	tidyverse \
	lubridate \
	devtools \
	googlesheets4
	
# RUN installGithub.r \
# 	tidyverse/googlesheets4 \
# 	&& rm -rf /tmp/downloaded_packages/

# Copy directory
RUN mkdir -p ~/src
WORKDIR ~/src
COPY run.R run.R

# Command
# RUN R -e "devtools::install_github('tidyverse/googlesheets4')"
CMD ["Rscript", "run.R"]