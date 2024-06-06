# Cyclistic Data Analysis
## This Repository
This repository consists of the code I used for the analysis I conducted. This repository is divided into different sections including data cleaning, validation, analysis, visualizations, findings, and recommendations. 

## Project Objective
Cyclistic is a bike-sharing company located in Chicago. The company wants to convert its casual customers into members. I will provide data analysis with the data set given to me and then offer my recommendations at the end. This READme will show the process I took to complete this project. 

## Data Cleaning and Validation
This process is the most important step for the whole project. It dictates what information we are using and how we will be using it. 
- The first step was to add a ride length, day of week, and month column. This was added to calculate the ride length for rides and to assign values to the days of the week and months
- The second step was to merge all of the files into one table
- Next, I dropped all of the null values to clear up some space. This was for data visualization purposes so there isn't an extra column or line for empty sets
- We then did some formatting to make calculations a little easier
- I then limited the ride lengths to between 5 minutes and 24 hours
  
After every data cleaning step I performed, I validated the data using the functions: head(), str(), nrows(), and summary(), just to confirm the data I was removing was cleaned. 

## Data Analysis
I performed an analysis to get a better understanding of how the two groups behave. I filtered the data needed on R so it was easy to see. Once filtered and calculated, I transferred the data recorded to Excel for visualization. The point of this project was to answer the question "How do annual members and casual riders use Cyclistic differently?" Some of the information I wanted to focus on were:
- Average ride length per customer type
- Amount of rides per month
- Average ride length per month
- Amount of riders per season
- Amount of riders per day of the week
- Average ride length per day of the week

## Data Visualization
After performing an analysis of the data, the visualizations put it all together. I used Excel for the majority of my visualizations. These visualizations include: 
- Line Graph
- Bar Chart
- Area Chart
- Pie Chart

## Findings
- Casual riders tend to have longer rides but not ride as often. They ride minimally on weekdays and on weekends they ride more often than usual.
- Members ride more during the weekdays and have consistent ride times throughout the week.
- Both customer groups ride more during the warmer weather seasons and less during winter. They also both average longer rides on the weekends.

## Recommendations 
After conducting my analysis and comparing all the data that I had found, I came up with a 3 tier program, on top of what is already advertised,  that I would try to implement.
- Tier 1 is a year-long plan that includes access to ride anytime, anywhere for $144 annually
- Tier 2 is a weekend plan which allows the rider to ride anytime from Friday 5 pm until Sunday midnight for $60 annually
- Tier 3 is the summer plan which allows the rider to ride anytime from June until August for $75 a year.



For any more information on code or visualizations, please refer to the files provided in this repository. 

For any questions or inquiries, please be kind enough to leave me an email at mohamedelogiel@gmail.com. 

Thank you for taking the time to look over my project!
