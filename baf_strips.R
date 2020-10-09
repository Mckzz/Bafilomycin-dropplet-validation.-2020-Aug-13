install.packages("tidyverse")
library(tidyverse)
library(tidyr)
library(dplyr)
library(ggplot2)
library(Hmisc)
install.packages("Hmisc")

rm(percents)
rm(e)


str(percents)

# makes strip charts with mean and stdv
ggplot(percents, aes(y = change, x = exposure, colour= sac)) +
  geom_jitter(size = 2, pch = 1, position = position_dodge(width = 0.7)) +
  labs(x = "exposure", y = "% change") + #labels axes
  theme_classic() +  #takes out background
  stat_summary(
    fun.data = mean_sdl, position = position_dodge(width = 0.5), geom = "errorbar", width = 0.1, fun.args = list(mult=1)) +
  stat_summary(
    fun = mean, geom = "point", position = position_dodge(width = 0.5),
    size = 3)



# test ##
antSacs = percents %>%
  select(exposure,sac,change) %>%
  filter(sac == "ant")
postSacs = percents %>%
  select(exposure,sac,change) %>%
  filter(sac == "post")

ggplot(data = antSacs, aes(y = change, x = exposure)) + 
  geom_jitter(colour = "firebrick", size = 3, position = position_dodge(width = 0.7), pch = 1) +
  labs(x = "exposure", y = "% change") +
  theme(aspect.ratio = 0.75, text = element_text(size = 16), 
        axis.text = element_text(size = 14)) +
  stat_summary(
    data = antSacs, fun.data = mean_sdl, geom = "errorbar", position = position_dodge(0.7), width = 0.2, fun.args = list(mult=1)) +
  stat_summary(
    data = antSacs, fun = mean, geom = "point", pch = 19, 
    size = 3, position = position_dodge(0.7)) +
  geom_jitter(data = postSacs, colour = "firebrick", size = 3, position = position_dodge(width = 0.7), pch = 1)

##






aes(color = sac), size = 1.2, position = position_jitterdodge(jitter.width = 0.2, dodge.width = 0.8)) +
  stat_summary(aes(color = sac), fun.data="mean_sdl", fun.args = list(mult=1), size = 0.4, position = position_dodge(0.8)
               
               
               +
                 stat_sum
               fun.data = mean_sdl, geom = "errorbar", position_dodge(width = 0.7), fun.args = list(mult=1)) +
  stat_summary(
    fun = mean, geom = "point", 
    size = 3)




