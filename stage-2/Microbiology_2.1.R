    
micro_data <- read.table("https://raw.githubusercontent.com/HackBio-Internship/2025_project_collection/refs/heads/main/Python/Dataset/mcgc.tsv",
                         header = TRUE)
# Plot all the growth curves of OD600 vs Time for the different Strain

# Growth curve for strain 1 rep 1
plot(micro_data$time, micro_data$A1,
     main = "STRAIN 1 REP 1",
     xlab = "TIME",
     ylab = "OD600",
     type = "l",
     ylim = c(min(micro_data$A1, micro_data$A2), max(micro_data$A1, micro_data$A2)),
     col = "navy")
lines(micro_data$time, micro_data$A2,
      col = "red")
legend("topleft",
       legend = c("Knock in (+)", "Knock Out (-)"),
       col = c("navy", "red"),
       lty = 1)
# Growth curve for strain 2

plot(micro_data$time, micro_data$A5,
     main = "STRAIN 2 REP") 