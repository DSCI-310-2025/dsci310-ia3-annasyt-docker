FROM rocker/rstudio:4.4.2
WORKDIR /home/rstudio
RUN R -e 'install.packages("remotes", repos="https://cloud.r-project.org/")'
RUN R -e 'remotes::install_version("cowsay", version="0.8.0", repos="https://cloud.r-project.org/")'
COPY container.R /home/rstudio/container.R
CMD ["Rscript", "/home/rstudio/container.R"]