options(scipen = 100)
library(blscrapeR) 
library(tidyverse)
library(ggplot2)
library(patchwork)

df<-inflation_adjust(2019) #this pulls a table of adjustment values (adjustment to 2019 $) 
glimpse(df) 

df$year<-as.numeric(df$year) 
bea <- readRDS("./data/bea.RDS")
bea$YEAR <- as.numeric(bea$YEAR)

dat<-left_join(bea,df[,c(1,3)], by=c("YEAR"="year")) #this basically joins the inflation adjustment values to the dataset you want to adjust by joining by year of the data (so the current year data in the BEA dataset) in this case I am inflation adjusting the per capita income levels (pci) 
dat$net_income<-dat$net_income/dat$adj_value 
dat$gov_pay<-dat$gov_pay/dat$adj_value 

sub <- dat %>% 
  filter(GeoName == "United States") %>% 
  select(YEAR, net_income, gov_pay) %>% 
  mutate(prop = gov_pay/net_income)

# Government payments: Deficiency payments under price support programs for specific commodities, 
# disaster payments, conservation payments, and direct payments to farmers under federal appropriations 
# legislation. The estimates of government payments are based on USDA national and state estimates of direct government payments.

# net income: Total cash receipts and other income (A measure of the gross receipts of all farms. It consists of the 
# following items: the cash receipts from farm marketing of crops and livestock; the receipts from other farm-related 
# activities, including recreational services, sales of forest products, and custom-feeding services performed by 
# farm operators; the payments to farmers under several Federal Government farm subsidy programs; the imputed value 
# of home consumption, which is the value of the farm productions produced and consumed on farms; and the imputed gross 
# rental value of farm dwellings.) less total production expenses (Purchases of feed, livestock and poultry, seed, 
# fertilizer, agricultural chemicals and lime, and petroleum products; labor expenses; machinery rental and custom 
# work; animal health costs; and all other expenses including depreciation.)

ggplot(sub) +
  geom_line(aes(x = YEAR, y = net_income, color = "Net Income"), stat = "identity", size = 1.2) +
  geom_line(aes(x = YEAR, y = gov_pay, color = "Government Payments"), stat = "identity", size = 1.2) 

ggsave("./viz/gov-net.png", dpi = 400)

ggplot(sub, aes(x = YEAR)) +
  
  geom_bar(aes(y=prop), fill = "#44AA99", stat="identity") +
  
  geom_line(aes(y = (net_income*1000)/175000000000), color = "#117733", size = 1.5) + # devide by 1 M
  labs(x = "") +
  scale_y_continuous(breaks=seq(0,1.0,0.25),
    
    # Features of the first axis
    name = "Government Payments Contribution",
    
    # Add a second axis and specify its features
    sec.axis = sec_axis(~.*175000000000, breaks = c(50000000000,100000000000,150000000000,200000000000),
                        labels=c("$50B", "$100B", "$150B","$200B"), name="Net Income Farm Sector") 
  )
