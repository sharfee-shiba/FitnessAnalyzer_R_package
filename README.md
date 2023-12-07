## Introduction

This package provides tools for analyzing fitness data to decode patterns and insights from data exported from trackers such as FitBit.

## Installation

You can install the released version of FitnessAnalyzer from GitHub with:

```
library(devtools)
install_github("sharfee-shiba/FitnessAnalyzer_R_package")
library(FitnessAnalyzer)
```

## Data

This package was tested with a dataset available from Kaggle [FitBit Fitness Tracker Data](https://www.kaggle.com/datasets/arashnic/fitbit). 
However this package should be able to used with any CSV data with headers that follows these rules:
- Has a unique identifier for a user, an **Id** column for example.
- Has a column with the date/datetime info, an **ActivityDate** column for example.
- Has at least 1 column for the metric to be analyzed, **TotalSteps**, **TrackerDistance**, **Calories** columns for example.

## Usage

```
library(FitnessAnalyzer)

# read activity data
data <- read_fitbit_data("/Users/sharfee/Desktop/PHC6099/project/fitness_data/dailyActivity_merged.csv")

# calculate total and average weekly Calories for all users
weekly_calories <- calculate_weekly_stats(data, "Calories")

# calculate total and average weekly Calories for specific user
weekly_calories <- calculate_weekly_stats(data, filter_id = 1503960366, "Calories")

# plot a weekly trend of total Steps taken
plots <- plot_weekly_trend(data, "TotalSteps", 6962181067)
print(plots[[1]])

# plot a weekly trend of the average weight
plots <- plot_weekly_trend(weight_log, "WeightPounds", 6962181067, date_col = "Date")
print(plots[[2]])

# plot a breakdown of the average activity minutes on a weekly basis
plot_activity_minute_trend(data, 1503960366)
```

## License
This package is free and open source software, licensed under GPL-3
