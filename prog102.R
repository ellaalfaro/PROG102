library(marinecs100b)


# Writing a utility function ----------------------------------------------

# P1: How did you extract the temperature and exposure from the hottest day?
# Copy-paste the code here.
hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2018-07-03 00:00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-03 23:59:59", tz = "Etc/GMT+8")
hotday_idx <- kefj_site == hottest_site &
  kefj_datetime >= hotday_start &
  kefj_datetime <= hotday_end
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)

# P2: Fill in the blanks below to write the Alaskan datetime utility function.
Alaskan_datetime <- function(Alaskan_time) {
  time_output_value <- as.POSIXct(Alaskan_time, tz = "Etc/GMT+8")
  return(time_output_value)
}

Alaskan_datetime("2020-02-02 16:00")

# Extracting data ---------------------------------------------------------

# P3: Make a copy of your code from P1 and edit it to plot the temperature and
# exposure for "Aialik" on 2012-06-01
site <- "Aialik"
Aialik_day_start <- as.POSIXct("2012-06-01 00:00:00", tz = "Etc/GMT+8")
Aialik_day_end <- as.POSIXct("2012-06-01 23:59:59", tz = "Etc/GMT+8")
Aialik_idx <- kefj_site == "Aialik" &
  kefj_datetime >= Aialik_day_start &
  kefj_datetime <= Aialik_day_end
Aialik_datetime <- kefj_datetime[Aialik_idx]
Aialik_temperature <- kefj_temperature[Aialik_idx]
Aialik_exposure <- kefj_exposure[Aialik_idx]
plot_kefj(Aialik_datetime, Aialik_temperature, Aialik_exposure)

# P4: Make a copy of your code from P3 and edit it to plot the temperature and
# exposure for "Harris" on 2016-04-05.
site <- "Harris"
Harris_day_start <- as.POSIXct("2016-04-05 00:00:00", tz = "Etc/GMT+8")
Harris_day_end <- as.POSIXct("2016-04-05 23:59:59", tz = "Etc/GMT+8")
Harris_idx <- kefj_site == "Harris" &
  kefj_datetime >= Harris_day_start &
  kefj_datetime <= Harris_day_end
Harris_datetime <- kefj_datetime[Harris_idx]
Harris_temperature <- kefj_temperature[Harris_idx]
Harris_exposure <- kefj_exposure[Harris_idx]
plot_kefj(Harris_datetime, Harris_temperature, Harris_exposure)

# P5: Compare your solutions for P3 and P4 - what variables changed?
# site, start and end

# P6: What you would pick for the temperature extraction function and
# parameters' names? function name = Alaskan_temperature, parameter names =
# Alaskan_site, site_day_start, site_day_end

# Writing extraction functions --------------------------------------------

# P7: Fill in the blanks in the code below to write your temperature extraction
# function.

Alaskan_temperature <- function(Alaskan_site, site_day_start, site_day_end) {
  site_day_start <- as.POSIXct(site_day_start, tz = "Etc/GMT+8")
  site_day_end <- as.POSIXct(site_day_end, tz = "Etc/GMT+8")
  Alaskan_site_idx <- kefj_site == Alaskan_site &
    kefj_datetime >= site_day_start &
    kefj_datetime <= site_day_end
  result <- kefj_temperature[Alaskan_site_idx]
    return(result)
}
Alaskan_temperature("Harris", "2020-05-01", "2020-05-02")

# P8: Make a copy of your solution to P7, and edit it to create exposure and
# datetime extraction functions.
Alaskan_exposure <- function(Alaskan_site, site_day_start, site_day_end) {
  site_day_start <- as.POSIXct(site_day_start, tz = "Etc/GMT+8")
  site_day_end <- as.POSIXct(site_day_end, tz = "Etc/GMT+8")
  Alaskan_site_idx <- kefj_site == Alaskan_site &
    kefj_datetime >= site_day_start &
    kefj_datetime <= site_day_end
  result <- kefj_exposure[Alaskan_site_idx]
  return(result)
}
Alaskan_exposure("Harris", "2020-05-01", "2020-05-02")

Alaskan_datetime <- function(Alaskan_site, site_day_start, site_day_end) {
  site_day_start <- as.POSIXct(site_day_start, tz = "Etc/GMT+8")
  site_day_end <- as.POSIXct(site_day_end, tz = "Etc/GMT+8")
  Alaskan_site_idx <- kefj_site == Alaskan_site &
    kefj_datetime >= site_day_start &
    kefj_datetime <= site_day_end
  result <- kefj_datetime[Alaskan_site_idx]
  return(result)
}
Alaskan_datetime("Harris", "2020-05-01", "2020-05-02")

# P9: Export your annotated screenshot as a JPEG called "annotated_function.jpg"
# and add it to your copy of the module repository. (It should be in the same
# folder as this file.)
# Done

# P10: Visualize Nuka Pass on July 1, 2018.  [[[ ERROR!!! ]]]
plot_kefj(Alaskan_datetime("Nuka Pass", "2018-07-01 00:00", "2018-07-01 23:59"),
          Alaskan_temperature("Nuka Pass", "2018-07-01 00:00", "2018-07-01 23:59"),
          Alaskan_exposure("Nuka Pass", "2018-07-01 00:00", "2018-07-01 23:59"))

# P11: Save a copy of the Nuka Pass plot as "nuka_pass_2018-07-01.png" in this
# repo


# P12: Compare the code you wrote to create the plot in this module to the code
# you wrote in PROG101. Qualitatively, how do they compare? Which one is easier
# to read and why? in prog101 code contain a lot of new variable definitions -
# more room for errors! in prog102 Less to change every time, so once its
# debugged initialluy it's easier to change later (ant it's easier to read)



