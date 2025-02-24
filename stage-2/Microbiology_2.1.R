setwd(paste(getwd(), 
            "/stage-2", 
            sep = ""))
# Import the datasets

micro_data <- read.table("https://raw.githubusercontent.com/HackBio-Internship/2025_project_collection/refs/heads/main/Python/Dataset/mcgc.tsv",
                         header = TRUE)
# Plot all the growth curves of OD600 vs Time for the different Strain

# Growth curve for strain 1 rep 1

plot(micro_data$time, colMeans(rbind(micro_data$A1, micro_data$B1, micro_data$C1)),
     main = "STRAIN 1 REP 1",
     xlab = "TIME",
     ylab = "OD600 (mean)",
     ylim = c(0.0, 1.3),
     type = "l",
     col = "navy")

lines(micro_data$time, colMeans(rbind(micro_data$A2, micro_data$B2, micro_data$C2)),
      col = "red")

legend("bottomright",
       legend = c("Knock in (+)", "Knock Out (-)"),
       col = c("navy", "red"),
       pch = 20)

# Growth curve for strain 1 rep 2

plot(micro_data$time, colMeans(rbind(micro_data$A3, micro_data$B3, micro_data$C3)),
     main = "STRAIN 1 REP 2",
     xlab = "TIME",
     ylab = "OD600 (mean)",
     ylim = c(0.0, 1.3),
     type = "l",
     col = "olivedrab")

lines(micro_data$time, colMeans(rbind(micro_data$A4, micro_data$B4, micro_data$C4)),
      col = "orange")

legend("bottomright",
       legend = c("Knock in (+)", "Knock Out (-)"),
       col = c("olivedrab", "orange"),
       pch = 20)

# Growth curve for strain 2 rep 1

plot(micro_data$time, colMeans(rbind(micro_data$A5, micro_data$B5, micro_data$C5)),
     main = "STRAIN 2 REP 1",
     xlab = "TIME",
     ylab = "OD600 (mean)",
     ylim = c(0.0, 1.3),
     type = "l",
     col = "navy")

lines(micro_data$time, colMeans(rbind(micro_data$A6, micro_data$B6, micro_data$C6)),
      col = "red")

legend("bottomright",
       legend = c("Knock in (+)", "Knock Out (-)"),
       col = c("navy", "red"),
       pch = 20)

#Growth curve for strain 2 rep 2

plot(micro_data$time, colMeans(rbind(micro_data$A7, micro_data$B7, micro_data$C7)),
     main = "STRAIN 2 REP 2",
     xlab = "TIME",
     ylab = "OD600 (mean)",
     ylim = c(0.0, 1.3),
     type = "l",
     col = "olivedrab")

lines(micro_data$time, colMeans(rbind(micro_data$A8, micro_data$B8, micro_data$C8)),
      col = "orange")

legend("bottomright",
       legend = c("Knock in (+)", "Knock Out (-)"),
       col = c("olivedrab", "orange"),
       pch = 20)

# Growth curve for strain 3 rep 1 

plot(micro_data$time, colMeans(rbind(micro_data$A9, micro_data$B9, micro_data$C9)),
     main = "STRAIN 3 REP 1",
     xlab = "TIME",
     ylab = "OD600 (mean)",
     ylim = c(0.0, 1.3),
     type = "l",
     col = "navy")

lines(micro_data$time, colMeans(rbind(micro_data$A10, micro_data$B10, micro_data$C10)),
      col = "red")

legend("bottomright",
       legend = c("Knock in (+)", "Knock Out (-)"),
       col = c("navy", "red"),
       pch = 20)


# Growth curve for strain 3 rep 2 

plot(micro_data$time, colMeans(rbind(micro_data$A11, micro_data$B11, micro_data$C11)),
     main = "STRAIN 3 REP 2",
     xlab = "TIME",
     ylab = "OD600 (mean)",
     ylim = c(0.0, 1.3),
     type = "l",
     col = "olivedrab")

lines(micro_data$time, colMeans(rbind(micro_data$A12, micro_data$B12, micro_data$C12)),
      col = "orange")

legend("bottomright",
       legend = c("Knock in (+)", "Knock Out (-)"),
       col = c("olivedrab", "orange"),
       pch = 20)

# determine the carrrying capacity for each strain/mutant

