library(volesti)
library(ggplot2)

# Random 2D polytope
P <- gen_rand_hpoly(2, 10)

# Sample points using CDHR
samples <- sample_points(P, n = 5000, random_walk = list(walk = "CDHR", walk_length = 500))

# Convert sampled points into a dataframe
df <- data.frame(x = samples[1,], y = samples[2,])

# Create the plot and store it explicitly
plot_obj <- ggplot(df, aes(x = x, y = y)) +
  geom_point(alpha = 0.5, color = "red") +
  ggtitle("Sampling in a Cube with CDHR Walk") +
  theme_minimal()

# Explicitly print the plot
print(plot_obj)
