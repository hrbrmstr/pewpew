library(rvest)
library(dplyr)
library(stringr)
library(jsonlite)

htrim <- function(x) gsub("^\ +|\ +$", "", html_text(x))
btod <- function(x) {
  x <- gsub(" ", "", x)
  num <- as.numeric(str_extract(x, "[[:digit:]\\.]+"))
  bytes <- tolower(str_extract(x, "[[:alpha:]]+"))
  bytes_multiplier <- c("b"=1, "k"=1024, "kb"=1024, "m"=1024^2, "mb"=1024^2, "g"=1024^3, "gb"=1024^3)
  num * unname(bytes_multiplier[bytes])
}

pg <- html("http://atlas.arbor.net/")
attacks <- data.frame(country=pg %>% html_nodes("div#topsourcestab1content td:nth-child(1)") %>% htrim() %>% .[1:19],
                      count=pg %>% html_nodes("div#topsourcestab1content td:nth-child(4)") %>% htrim(), stringsAsFactors=TRUE)
attacks$FIPS10 <- unlist(str_extract(attacks$country, "([A-Z]{2})"))
attacks$count <- btod(attacks$count)
attacks$pct <- sprintf("%0.3f", attacks$count / sum(attacks$count))

cc_tab <- data.frame(read.csv("~/Development/github/pewpew/country_centroids_primary.csv", sep="\t", header=TRUE, stringsAsFactors=FALSE))
cc_tab$idx <- as.numeric(rownames(cc_tab)) - 1

attacks <- merge(cc_tab[,c(9,14)], attacks, by.x="FIPS10", by.y="FIPS10")

attack_probs <- gsub('"', '', toJSON(attacks$pct), fixed=TRUE)
attack_ccs <- toJSON(attacks$idx)




attack_probs
attack_ccs
