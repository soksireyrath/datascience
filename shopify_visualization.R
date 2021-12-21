#Install quantmod package
#Download the data & Export the data (H,L,C,V)
#Identifying the quantitative and qualitative data
#Perform the visualization(ggplot2) of the selected columns and give
#your reflection


# import data
getSymbols('SHOP', src='yahoo')
write.zoo(SHOP, "SHOP.csv", sep = ",")
stocks = as.xts(data.frame(A = SONY[, "SONY.Open"]))

chart = tidy(stocks) %>%
  ggplot(aes(x = index, y = value, color = series)) +  
  geom_line()+
      labs(title = "Shopify inc.", 
      subtitle = "Chart records of Open Stock price", 
      caption = " Source: Yahoo Finance", 
       color = " ") +
  xlab("Date") + ylab("Open Stock Price")


chart

