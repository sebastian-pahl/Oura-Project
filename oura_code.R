getwd()
oura_data <- read.csv("oura_2021-04-16_2021-07-09_trends.csv")
month_chosen <- months(as.Date(oura_data$date))=="June"
plot_data <- oura_data[month_chosen,]
    
plot(as.Date(plot_data$date), 
     plot_data$Deep.Sleep.Time / 60 / 60,
    type="l",
    main = "Seppi Deep Sleep Time for June 2021",
    cex.main = 1.5,
    xlab = "Date",
    ylab = "Hours Deep Sleep - Blue",
    col = "blue",
    col.axis = "purple",
    cex.lab = 1.2)
par(new=TRUE)
plot(as.Date(plot_data$date), 
     plot_data$Total.Sleep.Time / 60 / 60,
     type = "l",
     col = "black",
     xlab = "",
     ylab = "",
     xaxt="n",
     yaxt="n")
axis(4)
mtext("Hours Total Sleep - Black", side = 4, line = 2)
     
ggplot(plot_data, aes(date, Deep.Sleep.Time))

?plot
?ggplot
?aes
colours()
