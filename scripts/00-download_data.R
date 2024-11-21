#### Preamble ####
# Purpose: Download the interested dataset from spotify
# Author: Yun Chu, Tianrui Fu, Felix Li, Chris Yong Hong Sen, Wen Han Zhao, Wenxin Xu
# Date: 10 Oct, 2024
# License: MIT
# Pre-requisites: None

#### Workspace setup ###
#install.packages("devtools")
#devtools::install_github('charlie86/spotifyr')
#We have install this package, so just make it become the text.

library(spotifyr)
library(usethis) 
edit_r_environ()

#### Download data ####
coldplay <- get_artist_audio_features("coldplay")

#### Save data ####
saveRDS(coldplay, "data/00-raw_data/coldplay.rds")
