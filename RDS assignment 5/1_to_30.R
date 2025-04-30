#1. Write R code to install and load the ggplot2 package.

install.packages("ggplot2")
library(ggplot2)

#2. Use qplot() to create a simple scatter plot with vectors x and y.

x <- 1:10
y <- rnorm(10)
qplot(x, y, main = "Simple Scatter Plot", xlab = "X values", ylab = "Y values")

#3. Save your plot as a JPEG file using R.


jpeg("scatter_plot.jpeg", width = 800, height = 600)
qplot(x, y, main = "Simple Scatter Plot", xlab = "X values", ylab = "Y values")
dev.off()

#4. Create a line plot connecting points using ggplot and geom_line().

data_line <- data.frame(x = 1:10, y = cumsum(rnorm(10)))

ggplot(data_line, aes(x = x, y = y)) +
  geom_line(color = "steelblue") +
  ggtitle("Line Plot")

#5. Add titles and axis labels to your plot using ggplot2.

ggplot(data_line, aes(x = x, y = y)) +
  geom_line(color = "steelblue") +
  labs(title = "Line Plot Title", x = "X Axis Label", y = "Y Axis Label")

#6. Demonstrate how to use geom_point() to modify size and shape of points.

ggplot(data_line, aes(x = x, y = y)) +
  geom_point(size = 4, shape = 21, fill = "blue") +
  labs(title = "Points with Modified Size and Shape", x = "X Axis", y = "Y Axis")

#7. Explain how to list files in the current working directory.

list.files()
 # Alternatively:
dir()

#8. Write code to set a working directory to a specified folder.

setwd("C:\\Users\\harsh\\OneDrive\\文件\\Myfolder")

#9. Read a CSV file from your local system into an R data frame.

my_data <- read.csv("data.csv", header = TRUE, stringsAsFactors = FALSE)

#10. Read a CSV file from an online source into an R data frame.

url <- "https://people.sc.fsu.edu/~jburkardt/data/csv/airtravel.csv"
online_data <- read.csv(url, header = TRUE, stringsAsFactors = FALSE)

#11. Create a ggplot scatter plot, and differentiate points by color based on a categoricalvariable.

set.seed(123)
df <- data.frame(
  x = rnorm(100),
  y = rnorm(100),
  category = sample(c("A", "B", "C"), 100, replace = TRUE)
)

 # Scatter plot with points colored by category
ggplot(df, aes(x = x, y = y, color = category)) +
  geom_point() +
  labs(title = "Scatter Plot Differentiated by Category", x = "X", y = "Y")

#12. Demonstrate how to save a plot as a PDF file.

pdf("my_plot.pdf", width = 8, height = 6)

ggplot(data_line, aes(x = x, y = y)) +
  geom_line(color = "steelblue") +
  labs(title = "Line Plot for PDF")

dev.off()

#13. Add horizontal and vertical reference lines to a plot using ggplot2.

ggplot(df, aes(x = x, y = y)) +
  geom_point() +
  geom_hline(yintercept = 0, linetype = "dashed", color = "red") +
  geom_vline(xintercept = 0, linetype = "dashed", color = "blue") +
  labs(title = "Scatter Plot with Reference Lines")

#14. Create a ggplot plot with customized colors for different categories.

ggplot(df, aes(x = x, y = y, color = category)) +
  geom_point() +
  scale_color_manual(values = c("A" = "purple", "B" = "orange", "C" = "green")) +
  labs(title = "Customized Colors for Different Categories")

#15. Write R code to add annotations (text and arrows) to a ggplot plot.

ggplot(df, aes(x = x, y = y)) +
  geom_point() +
  annotate("text", x = 0, y = 2, label = "High Value", color = "red") +
  annotate("segment", x = 0, xend = 1, y = 1.5, yend = 1, 
           arrow = arrow(length = unit(0.2, "cm")), color = "blue") +
  labs(title = "Plot with Annotations")

#16. Create a ggplot plot with explicitly defined x and y axis limits.

ggplot(df, aes(x = x, y = y)) +
  geom_point() +
  coord_cartesian(xlim = c(-3, 3), ylim = c(-3, 3)) +
  labs(title = "Plot with Explicit Axis Limits (No Data Removal)")

#17. Use logical conditions to highlight subsets of points in different colors.

df$highlight <- ifelse(df$x > 0, "Positive", "Non-Positive")

ggplot(df, aes(x = x, y = y, color = highlight)) +
  geom_point() +
  labs(title = "Highlighting Points Based on Condition")

#18. Demonstrate adding a legend manually using ggplot2.

ggplot(df, aes(x = x, y = y, color = highlight)) +
  geom_point() +
  scale_color_manual(values = c("Positive" = "blue", "Non-Positive" = "red"),
                     name = "X Value Condition", 
                     labels = c("X > 0", "X \u2264 0")) +
  labs(title = "Scatter Plot with a Custom Legend")

#19. Create a plot with different line types and widths.

df_line <- data.frame(
  x = rep(1:10, 2),
  y = c(cumsum(rnorm(10)), cumsum(rnorm(10))),
  group = rep(c("Group1", "Group2"), each = 10)
)

ggplot(df_line, aes(x = x, y = y, linetype = group, group = group)) +
  geom_line(aes(size = group)) +
  scale_size_manual(values = c("Group1" = 1, "Group2" = 2)) +
  labs(title = "Line Plot with Different Line Types and Widths")

#20. Write a code snippet using geom_segment() to add customized line segments to your plot.

ggplot(df, aes(x = x, y = y)) +
  geom_point() +
  annotate("segment", x = -2, y = -2, xend = 2, yend = 2, 
           arrow = arrow(length = unit(0.3, "cm")), 
           color = "darkgreen", linetype = "dashed") +
  labs(title = "Plot with Annotated Segment")

#21. Write a function to dynamically read and plot data from a user-selected file.

read_and_plot <- function(){
  # Open a file chooser dialog to select a CSV file
  file_path <- file.choose()
  
  # Read the file into a data frame
  data <- read.csv(file_path, header = TRUE, stringsAsFactors = FALSE)
  
  # Assume the CSV contains at least columns named 'x' and 'y'
  p <- ggplot(data, aes(x = x, y = y)) +
    geom_point() +
    labs(title = paste("Scatter Plot of", basename(file_path)))
  
  # Print the plot
  print(p)
}

#22. Demonstrate the combined usage of geom_point, geom_line, and geom_hline in a singleggplot.

ggplot(data_line, aes(x = x, y = y)) +
  geom_line(color = "blue") +
  geom_point(color = "red") +
  geom_hline(yintercept = mean(data_line$y), linetype = "dotted", color = "green") +
  labs(title = "Combined Plot: Points, Line, and Horizontal Line")

#23. Create a customized legend using manual scales and guides in ggplot2.

ggplot(df, aes(x = x, y = y, color = category)) +
  geom_point() +
  scale_color_manual(values = c("A" = "steelblue", "B" = "tomato", "C" = "gold"),
                     name = "Category Groups",
                     labels = c("Group A", "Group B", "Group C")) +
  guides(color = guide_legend(title.position = "top", title.hjust = 0.5)) +
  labs(title = "Scatter Plot with a Customized Legend")

#24. Write R code that handles missing values while reading external data into a data frame.

data_with_NA <- read.csv("data.csv", 
                         header = TRUE, 
                         na.strings = c("", "NA", "NULL"))

#25. Construct a ggplot that categorizes points into multiple groups based on two numericconditions.

df$group <- with(df, ifelse(x > 0 & y > 0, "Group1",
                            ifelse(x <= 0 & y > 0, "Group2",
                                   ifelse(x <= 0 & y <= 0, "Group3", "Group4"))))

ggplot(df, aes(x = x, y = y, color = group)) +
  geom_point() +
  labs(title = "Scatter Plot Categorized by Two Numeric Conditions")

#26. Create a complex ggplot visualization that includes multiple geoms and a themecustomization.

ggplot(df, aes(x = x, y = y)) +
  geom_point(aes(color = category), size = 3) +
  geom_smooth(method = "loess", se = FALSE, color = "black") +
  geom_vline(xintercept = 0, linetype = "dotted", color = "grey") +
  theme_minimal(base_size = 14) +
  labs(title = "Complex Visualization", x = "X Axis", y = "Y Axis")

#27. Write code to plot data points with condition-based shapes and colors using ggplot.

df$shape_cond <- ifelse(df$x > 0, "Positive", "Non-Positive")

ggplot(df, aes(x = x, y = y, color = category, shape = shape_cond)) +
  geom_point(size = 3) +
  labs(title = "Scatter Plot with Condition-Based Shapes and Colors")

#28. Develop an R function that saves plots in both JPEG and PDF formats automatically.

save_plot <- function(plot, filename){
  # Save as JPEG
  jpeg(paste0(filename, ".jpeg"), width = 800, height = 600)
  print(plot)
  dev.off()
  
  # Save as PDF
  pdf(paste0(filename, ".pdf"), width = 8, height = 6)
  print(plot)
  dev.off()
}

# Example usage:
p <- ggplot(df, aes(x = x, y = y)) +
  geom_point() +
  labs(title = "Example Plot")
save_plot(p, "example_plot")

#29. Write code to implement a custom plot theme in ggplot2, adjusting fonts, backgrounds, andgrid lines.

custom_theme <- theme(
  plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
  axis.title = element_text(size = 14),
  axis.text = element_text(color = "darkblue"),
  panel.background = element_rect(fill = "lightgray"),
  panel.grid.major = element_line(color = "white", size = 0.5),
  panel.grid.minor = element_line(color = "white", size = 0.25)
)

ggplot(df, aes(x = x, y = y, color = category)) +
  geom_point(size = 3) +
  labs(title = "Plot with Custom Theme") +
  custom_theme

#30. Demonstrate using ifelse() in R to create a new variable and plot this conditional variableusing ggplot2.

df$new_var <- ifelse(df$x > 0, "Positive", "Non-Positive")

ggplot(df, aes(x = x, y = y, color = new_var)) +
  geom_point(size = 3) +
  labs(title = "Scatter Plot with a New Conditional Variable")
