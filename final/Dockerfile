FROM rocker/tidyverse

RUN R -e "install.packages('read_excel')"

#create working directory
RUN mkdir /project

#set working directory
WORKDIR /project

COPY ./ /project/

RUN chmod +x /project/code/*.R

ENV which_fig = "bp.png"
