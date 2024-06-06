# Library's we are using

library(lubridate)
library(tidyr)
library(tidyverse)
library(readr)
library(ggplot2)
library(dplyr)
library(tibble)
library(scales)

# Importing needed data

april_2024 <- read.csv("C:\\Users\\me228\\Desktop\\Google-certificate\\Cyclistic\\Data\\clean\\april_2024.csv")
march_2024 <- read.csv("C:\\Users\\me228\\Desktop\\Google-certificate\\Cyclistic\\Data\\clean\\march_2024.csv")
february_2024 <- read.csv("C:\\Users\\me228\\Desktop\\Google-certificate\\Cyclistic\\Data\\clean\\february_2024.csv")
january_2024 <- read.csv("C:\\Users\\me228\\Desktop\\Google-certificate\\Cyclistic\\Data\\clean\\january_2024.csv")
december_2023 <- read.csv("C:\\Users\\me228\\Desktop\\Google-certificate\\Cyclistic\\Data\\clean\\december_2023.csv")
november_2023 <- read.csv("C:\\Users\\me228\\Desktop\\Google-certificate\\Cyclistic\\Data\\clean\\november_2023.csv")
october_2023 <- read.csv("C:\\Users\\me228\\Desktop\\Google-certificate\\Cyclistic\\Data\\clean\\october_2023.csv")
september_2023 <- read.csv("C:\\Users\\me228\\Desktop\\Google-certificate\\Cyclistic\\Data\\clean\\september_2023.csv")
august_2023 <- read.csv("C:\\Users\\me228\\Desktop\\Google-certificate\\Cyclistic\\Data\\clean\\august_2023.csv")
july_2023 <- read.csv("C:\\Users\\me228\\Desktop\\Google-certificate\\Cyclistic\\Data\\clean\\july_2023.csv")
june_2023 <- read.csv("C:\\Users\\me228\\Desktop\\Google-certificate\\Cyclistic\\Data\\clean\\june_2023.csv")
may_2023 <- read.csv("C:\\Users\\me228\\Desktop\\Google-certificate\\Cyclistic\\Data\\clean\\may_2023.csv")


# Merging all files so its easier 

final_rides <- rbind(april_2024,march_2024,february_2024, january_2024, december_2023, november_2023,
                     october_2023, september_2023, august_2023, july_2023, june_2023, may_2023)



#Data Validation and cleaning

final_rides_clean <- drop_na(final_rides) #drop null values

names(final_rides_clean)[names(final_rides_clean) == 'member_casual'] <- 'customer_type' #renaming member_casual column name to customer_type

final_rides_clean$ride_length <- hms(final_rides_clean$ride_length) #convert ride length into hours, minutes, seconds format

final_rides_clean$started_at <- mdy_hm(final_rides_clean$started_at) #converting started_at to mdy and hm format

final_rides_clean$ended_at <- mdy_hm(final_rides_clean$ended_at) #converting ended_at to mdy and hm format

final_rides_clean <- subset(final_rides_clean, select = -c(start_lat, start_lng, end_lng, end_lat)) #deleting some columns that I found to not be useful

final_rides_clean <- final_rides_clean %>%                                                        #sorting by instances between 5 min and 24 hours
  filter(final_rides_clean$ride_length >= '5 mins' & final_rides_clean$ride_length <= '24 hours') 

final_rides_clean$month <- month(ymd_hms(final_rides_clean$started_at)) # creating a column that separates month for visualization purposes

final_rides_clean <- drop_na(final_rides_clean) #dropping any values that failed to convert

View(final_rides_clean)

# Data Validation

head(final_rides_clean) #Looking at the first couple of rows 

nrow(final_rides_clean) #amount of rows in cleaned data set

str(final_rides_clean) #structure of data

summary(final_rides_clean)

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


#Save files 

write.csv(final_rides_clean,file = "C:\\Users\\me228\\Desktop\\Google-certificate\\Cyclistic\\Data\\final\\final_ride.csv")