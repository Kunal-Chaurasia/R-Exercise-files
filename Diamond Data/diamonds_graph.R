data(diamonds)
View(diamonds)

ggplot(data = diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + facet_wrap(~cut)

ggplot(diamonds) + geom_bar(mapping = aes(x=cut))

ggplot(diamonds) + geom_bar(mapping = aes(x=cut, color=cut))

ggplot(diamonds) + geom_bar(mapping = aes(x=cut, fill=cut))

ggplot(diamonds) + geom_bar(mapping = aes(x=cut, fill=clarity))

ggplot(diamonds) + geom_bar(mapping = aes(x=color, fill=cut)) + facet_wrap(~cut)