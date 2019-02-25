
library(dplyr)
library(ggplot2)

full_df = read.csv('./house-prices-advanced-regression-techniques/train.csv', header = TRUE, stringsAsFactors = FALSE )
colnames(full_df)
summary(full_df)
str(full_df)

# no_garage  = full_df %>% filter(is.na(GarageType))
# yes_garage = full_df %>% filter(GarageType != is.na(GarageType))
# 
# full_df %>%
#   group_by(TotalBsmtSF) %>%
#   summarise(count = n())
# 
# sum(full_df$TotalBsmtSF == 0)

neighborhood = ggplot(data = full_df, aes(x = reorder(Neighborhood, fun = median, .desc =TRUE), y = SalePrice)) +
  theme(axis.text.x = element_text(angle = -45, hjust = 0)) +
  geom_boxplot()
neighborhood
