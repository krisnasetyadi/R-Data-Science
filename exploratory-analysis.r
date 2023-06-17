install.packages("tidyverse")
library(tidyverse)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y= hwy), color = 'blue')
mpg
glimpse(mpg)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y= hwy, color = year))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y= hwy, size = year))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y= hwy, shape = year))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y= hwy, color = hwy, size = displ))
ggplot(
  +     data = mpg,
  +     mapping = aes(x = displ, y = hwy, color = drv)
  + ) +
  +     geom_point() +
  +     geom_smooth(se = FALSE)
`geom_smooth()` using method = 'loess' and formula = 'y ~ x'

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  geom_point(position = "jitter")

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  +     geom_jitter()

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  +     geom_count()

ggplot (data = mpg, mapping = aes (x = class, y = cty)) +
  +     geom_boxplot(aes (color = drv))

bar <- ggplot(data = diamonds) +
  +     geom_bar(
    +         mapping = aes(x = factor(1), fill = cut),
    +         width = 1 
    +     ) +
  +     theme(aspect.ratio = 1) +
  +     labs(x = NULL, y = NULL)
> 
  > bar + coord_polar(theta = 'y')
