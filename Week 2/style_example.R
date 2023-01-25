# Bad style
financial_df <- fa_2018 %>% select(`State Name`, `2018 Cost Per Meal`, `2018 Weighted Annual Food Budget Shortfall`)

# Good style
financial_df <- fa_2018 %>%
  select(
    `State Name`, `2018 Cost Per Meal`,
    `2018 Weighted Annual Food Budget Shortfall`
  ) %>%
  group_by(`State Name`) %>%
  mutate(
    `Meals Not Consumed due to Budget Shortfall` =
      `2018 Weighted Annual Food Budget Shortfall` / `2018 Cost Per Meal`
  ) %>%
  mutate(
    `Meals Not Consumed due to Budget Shortfall` =
      number(`Meals Not Consumed due to Budget Shortfall`, big.mark = ",")
  ) %>%
  mutate(
    `2018 Weighted Annual Food Budget Shortfall` =
      number(`2018 Weighted Annual Food Budget Shortfall`, big.mark = ",")
  )

# You can use 'Soft Wrap Long Lines' BUT keep in mind that GitHub does not
# wrap lines for you!