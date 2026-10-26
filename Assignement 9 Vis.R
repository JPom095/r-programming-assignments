data("faithful")
# Scatter plot
plot(faithful$eruptions, faithful$waiting,
     main   = "Waiting Time for Eruption",
     xlab   = "Eruption Duration",
     ylab   = "Waiting Time")

# Histogram
hist(faithful$eruptions,
     main   = "Distribution of Eruptions",
     xlab   = "Eruption Duration")

library(lattice)

# Conditional scatter plot (small multiples)
xyplot(waiting ~ eruptions,
       data = faithful,
       main = "Waiting Time vs. Eruption Duration",
       xlab = "Eruption Duration",
       ylab = "Waiting Time")

# Density Plot
densityplot(~ eruptions,
            data = faithful,
            main = "Lattice: Density of Eruption Duration",
            xlab = "Eruption Duration")

library(ggplot2)

ggplot(faithful, aes(x = eruptions, y = waiting)) +
  geom_point() +
  labs(
    title = "ggplot2: Waiting Time vs. Eruption Duration",
    x = "Eruption Duration",
    y = "Waiting Time"
  ) +
  theme_minimal()

ggplot(faithful, aes(x = eruptions)) +
  geom_histogram(
    binwidth = 0.2,
    fill = "steelblue",
    color = "black"
  ) +
  labs(
    title = "ggplot2: Distribution of Eruption Duration",
    x = "Eruption Duration",
    y = "Frequency"
  ) +
  theme_minimal()