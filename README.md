# Crowdfunding-ETL
### Module 8

##### Purpose of this project is to extract data from raw datasets of crowfunding_info and contact_info, transform into clean new tables that hold information required and finally load the new tables into database so that we are able to further analysis as needed in backers contact info, campaign, category and subcatgory and pledged and goal amount. 

##### In the bonus analysis, retrieving current live campaign identifys how many backers are still in live campaign then further extract the data to match on backers' contact info with amount of how much to reach goal. 

 -- Get the count of backers for live campaign on campaign table: 

![image](https://github.com/jilldvn/Crowdfunding-ETL/blob/main/Bonus%20image/backer_count%20in%20campaign.png)

 -- Confirm the count of backers on backers table to ensure there is no discrepancy between backers and campaign tables:

![image](https://github.com/jilldvn/Crowdfunding-ETL/blob/main/Bonus%20image/backer_count%20in%20backers.png)

 -- Retrieve contact info, company name, due date and shortage amount in live compaign for notifying backers: 

![image](https://github.com/jilldvn/Crowdfunding-ETL/blob/main/Bonus%20image/email_backers_remaining_goal_amount.png)
