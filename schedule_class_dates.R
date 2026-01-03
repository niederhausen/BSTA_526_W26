
# copied from https://github.com/nwakim/EPI_525_25F/blob/main/class_dates.R

library(dplyr)
library(writexl)

# Set the first day of class: "Term begins" date in OHSU academic calendar
first_day = as.Date("1/5/26", "%m/%d/%y")
# Set last day of the class: "Term ends" date in OHSU academic calendar
last_day = as.Date("3/20/26", "%m/%d/%y")

# Create the calendar dates sequence
cal_dates = seq(from = first_day, to = last_day, by = "day")

weekdays_vec <- c("M", "T", "W", "Th", "Fr", "Sa", "Su")
schedule <- tibble(
  week_id = rep(seq_len(ceiling(length(cal_dates) / 7)), each = 7)[seq_along(cal_dates)],
  weekday = rep_len(weekdays_vec, length(cal_dates)),
  date = cal_dates,
  nmbr = seq_along(cal_dates)
) 

write_xlsx(schedule, path = "schedule_days.xlsx")

## Week 1 dates
w1d1 = cal_dates[4]

## Week 2 dates
w2d1 = cal_dates[11]
hw1 = cal_dates[11]

## Week 3 dates
w3d1 = cal_dates[18]
hw2 = cal_dates[18]

## Week 4 dates 
w4d1 = cal_dates[25]
hw3 = cal_dates[25]


## Week 5 dates
w5d1 = cal_dates[32]
hw4 = cal_dates[32]
midterm_open = cal_dates[32]

## Week 6 dates
w6d1 = cal_dates[39]
hw5 = cal_dates[39]

## Week 7 dates
w7d1 = cal_dates[46]
hw6 = cal_dates[46]
midterm_due = cal_dates[49] # Su

## Week 8 dates
w8d1 = cal_dates[53]
hw7 = cal_dates[53]

## Week 9 dates
w9d1 = cal_dates[60]
hw8 = cal_dates[60]

## Week 10 dates
w10d1 = cal_dates[67]
hw9 = cal_dates[67]
final_open = cal_dates[65]


## Week 11 dates
w11d1 = cal_dates[74]
hw10 = cal_dates[74]
final_due = cal_dates[75]