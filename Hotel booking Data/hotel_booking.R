bookings_df <- read_csv("hotel_bookings.csv")

head(bookings_df)

colnames(bookings_df)

trimmed_df <- bookings_df %>% select(hotel, is_canceled, lead_time)

trimmed_df %>% select(hotel, is_canceled, lead_time) %>% rename(hotel_name = hotel)

example_df <- bookings_df %>% select(arrived_date_year, arrived_date_month) %>% unite(arrived_date_year, c("arrived_date_month", "arrived_date_year", sep = " "))

ggplot(data = bookings_df) +  geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = bookings_df) +  geom_point(mapping = aes(x = stays_in_weekend_nights , y = children ))

ggplot(data = bookings_df) + geom_bar(mapping = aes(x = distribution_channel))

ggplot(data = bookings_df) + geom_bar(mapping = aes(x = distribution_channel, fill=deposit_type))

ggplot(data = bookings_df) + geom_bar(mapping = aes(x = distribution_channel, fill=market_segment))

ggplot(data = bookings_df) +  geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = bookings_df) +  geom_bar(mapping = aes(x = hotel, fill = market_segment))

ggplot(data = bookings_df) +  geom_bar(mapping = aes(x = hotel)) +  facet_wrap(~market_segment)

install.packages('tidyverse')
library(tidyverse)

onlineta_city_hotels <- bookings_df %>% filter(hotel=="City Hotel") %>% filter(market_segment=="Online TA")

ggplot(data = bookings_df) +  geom_bar(mapping = aes(x = market_segment)) +  facet_wrap(~hotel) + labs(title="Market Segment of City Hotel and Resort Hotel")