% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fitness_analyzer.R
\name{plot_activity_minute_trend}
\alias{plot_activity_minute_trend}
\title{Plot active minutes weekly trend}
\usage{
plot_activity_minute_trend(
  df,
  filter_id,
  id_col = "Id",
  date_col = "ActivityDate",
  very_col = "VeryActiveMinutes",
  fairly_col = "FairlyActiveMinutes",
  lightly_col = "LightlyActiveMinutes",
  sedentary_col = "SedentaryMinutes"
)
}
\arguments{
\item{df}{Fitbit data as a DataFrame}

\item{filter_id}{User Id for which to generate the trendline}

\item{id_col}{Column name that uniquely identifies a user; default = "Id"}

\item{date_col}{Column name for the statistic date/time; default = "ActivityDate"}

\item{very_col}{Column name for very active minutes; default = "VeryActiveMinutes"}

\item{fairly_col}{Column name for fairly active minutes; default = "FairlyActiveMinutes"}

\item{lightly_col}{Column name for lightly active minutes; default = "LightlyActiveMinutes"}

\item{sedentary_col}{Column name for sedentary minutes; default = "SedentaryMinutes"}
}
\value{
A stacked bar chart of minutes of activity intensity over time.
}
\description{
This is a specialized plot which shows the trend of time spent in various 
intensity states (sedentary, lightly active, fairly active, very active).
It is intended to highlight activity trends over time.
}
