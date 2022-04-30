library(tidyverse)
library(rvest)


pagina <- read_html('https://www.mercadolibre.cl/ofertas?promotion_type=deal_of_the_day&container_id=MLC779365-1&page=1')

pagina %>% 
  html_element(xpath = '//p[@class = "promotion-item__title"]') %>% 
  html_text2()
