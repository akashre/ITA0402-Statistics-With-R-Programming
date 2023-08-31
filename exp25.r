exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
subset_data <- exam_data[c(3, 5), c(1, 3)]
print("a. Extracted data:")
print(subset_data)
Country <- c("USA", "USA", "USA", "USA", "UK", "USA", "USA", "India", "USA", "USA")
exam_data$country <- Country
print("b. Data frame with new 'country' column:")
print(exam_data)
new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no'),
  country = c('Canada', 'Australia')
)
updated_exam_data <- rbind(exam_data, new_exam_data)
print("c. Data frame with added row(s):")
print(updated_exam_data)
sorted_exam_data <- exam_data[order(exam_data$name, exam_data$score), ]
print("d. Sorted data frame:")
print(sorted_exam_data)
write.csv(updated_exam_data, file = "exam_data.csv", row.names = FALSE)
print("e. Data frame saved to 'exam_data.csv'")
file_content <- read.csv("exam_data.csv")
print("Content of 'exam_data.csv':")
print(file_content)