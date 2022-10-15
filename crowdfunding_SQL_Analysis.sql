-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
Select backers_count, cf_id
From campaign
Where outcome='live'
Order by backers_count Desc;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
Select count(backer_id)as backers_count, cf_id
From backers
Group by cf_id
Order by backers_count DESC;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
Select ct.first_name, ct.last_name, ct.email, (cp.goal-cp.pledged) as remaining_goal_amount
Into email_contacts_remaining_goal_amount
From campaign as cp
INNER JOIN  contacts as ct
On ct.contact_id = cp.contact_id
Where (cp.outcome='live')
Order by remaining_goal_amount DESC;

-- Check the table
Select * from email_contacts_remaining_goal_amount;

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
Select bk.email, bk.first_name, bk.last_name, bk.cf_id, cp.company_name, cp.blurb as description, cp.end_date, (cp.goal-cp.pledged) as left_of_goal
Into email_backers_remaining_goal_amount
From backers as bk
Inner Join campaign as cp
On bk.cf_id=cp.cf_id
Where (cp.outcome='live')
Order by bk.email DESC;


-- Check the table
Select * from email_backers_remaining_goal_amount;
