observed_counts <- c(120, 95, 85, 100)

probabilities <- c(0.25, 0.25, 0.25, 0.25)

chisq.test(x = observed_counts, p = probabilities)