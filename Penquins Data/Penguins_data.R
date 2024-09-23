library("palmerpenguins")
data(penguins)
View(penguins)

skim_without_charts(penguins)

glimpse(penguins)

head(penguins)

penguins %>% select(-species)

penguins %>% rename(island_new = island)

rename_with(penguins, toupper)

rename_with(penguins, tolower)

clean_names(penguins)

penguins %>% arrange(bill_length_mm)

penguins2 <- penguins %>% arrange(-bill_length_mm)

penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))

penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))

penguins %>% filter(species == "Adelie")

mutated_penguins <- penguins %>% mutate(body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/1000)

View(mutated_penguins)

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, color = species))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, color = species, shape = species))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, color = species, shape=species, size = species))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g), color = "purple")

ggplot(data = penguins) + geom_smooth(mapping = aes(x=flipper_length_mm, y= body_mass_g))

ggplot(data = penguins) + geom_smooth(mapping = aes(x=flipper_length_mm, y= body_mass_g)) + geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g))

ggplot(data = penguins) + geom_smooth(mapping = aes(x=flipper_length_mm, y= body_mass_g, linetype = species))

ggplot(penguins) + geom_bar(mapping = aes(x=cuts))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, color = species)) + facet_wrap(~species)

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, color = species)) + facet_wrap(sex~species)

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, color=species, shape=species)) + labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle="Sample of Three penguins species", caption = "Data collected by Dr. Kriten Gorman") + annotate("text", x=220, y=3500, label="The Gentoos are the Largest", color="blue")

ggsave("Three Penguins Species.png")