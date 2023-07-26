library(tidyverse)
library(ggplot2)
library(showtext)
library(sysfonts)


# Theme stuff
sysfonts::font_add_google("Lato", "LatoLight", regular.wt = 300)
sysfonts::font_add_google("Lato", "LatoRegular", regular.wt = 400)
sysfonts::font_add_google("Lato", "LatoHeavy", regular.wt = 700)
showtext_opts(dpi = 600)
showtext_auto(enable = TRUE)


bla = "#212932"
or = "#feab00"
dor = "#fd7d00"

fig = ggplot() +
    geom_bar(data = data.frame(y = 5,x = 1),aes(x=x,y=y,fill=..y..),stat="identity",colour=NA) +
    scale_fill_gradient(low=or,high=dor,name="progress",guide="none") +
    scale_y_continuous(limits=c(0,100)) +
    geom_bar(data=data.frame(y=100,x=1),aes(x=x,y=y),stat="identity",colour=dor,fill=NA,size=2) +
    theme_classic() +
    coord_flip() +
    theme(
      axis.line.y = element_blank(),
      axis.line.x = element_blank(),
      axis.title.x = element_blank(),
      axis.ticks = element_blank(),
      axis.text.y = element_blank(),
      axis.text.x = element_text(colour=bla,family="LatoRegular"),
      axis.title.y = element_blank()
    )
fig

ggsave(filename="CRB progress bar.png",path="./Websites/CRB Sample/content/media",
       width=12,height=1.5,units="cm",dpi=600)
