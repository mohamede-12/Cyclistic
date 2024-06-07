
# Separating each month into its own table for calculations

may_2023_clean <- final_rides_clean %>%
  filter(started_at >= "2023-05-01" & ended_at <= "2023-05-31")

june_2023_clean <- final_rides_clean %>%
  filter(started_at >= "2023-06-01" & ended_at <= "2023-06-30")

july_2023_clean <-final_rides_clean %>%
  filter(started_at >= "2023-07-01" & ended_at <= "2023-07-31")

august_2023_clean <-final_rides_clean %>%
  filter(started_at >= "2023-08-01" & ended_at <= "2023-08-30")

september_2023_clean <-final_rides_clean %>%
  filter(started_at >= "2023-09-01" & ended_at <= "2023-09-30")

october_2023_clean <-final_rides_clean %>%
  filter(started_at >= "2023-10-01" & ended_at <= "2023-10-31")

november_2023_clean <-final_rides_clean %>%
  filter(started_at >= "2023-11-01" & ended_at <= "2023-11-30")

december_2023_clean <- final_rides_clean %>%
  filter(started_at >= "2023-12-01" & ended_at <= "2023-12-31")

january_2024_clean <- final_rides_clean %>%
  filter(started_at >= "2024-01-01" & ended_at <= "2024-01-31")

february_2024_clean <- final_rides_clean %>%
  filter(started_at >= "2024-02-01" & ended_at <= "2024-02-29")

march_2024_clean <- final_rides_clean %>%
  filter(started_at >= "2024-03-01" & ended_at <= "2024-03-31")

april_2024_clean <- final_rides_clean %>%
  filter(started_at >= "2024-04-01" & ended_at <= "2024-04-30")


# Separating data into seasons

spring <- final_rides_clean %>%
  filter(month == "3" | month == "4" | month == "5")

summer <- final_rides_clean %>%
  filter(month == "6" | month == "7" | month == "8")

fall <- final_rides_clean %>%
  filter(month == "9" | month == "10" | month == "11")

winter <- final_rides_clean %>%
  filter(month == "12" | month == "1" | month == "2") 
