# Write your sql queries in this file in the appropriate method like the example below:
#

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "SELECT projects.title, SUM(pledges.amount)
  FROM projects
  LEFT JOIN pledges
  ON projects.id= pledges.project_id
  GROUP BY projects.title;"
end


# Theoretically the below should display the three columns-->name from users, age from users, and
# amount from pledges. In order to connect the two tables, using a JOIN will be necessary.
# Since I want more things from the Users table, that will be my main table. LEFT JOIN will be 
# what I use to connect the pledges table to users. Users and Pledges seem to share id columns.
# user.id contains numbers 1-20 for each user and each number is unique to each user. The pledges table 
# contains an several id columns. pledges.id, pledges.user_id, and pledges.project_id
# since pledges.user_id is the only column whose numbers go from 1-20, it can be assumed that these correlate
# with those numbers of users.id. This will be my ON condition When I perform a left join,
# the issue is that some users have made multiple pledges.
# So there are some user_id(s) that are shown in multiples. I have to find a way to SUM up each User_id's
# pledge amount and then plug that in to a Query that I am trying to think of.
#

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT users.name, users.age, SUM(pledges.amount)
  FROM users
  LEFT JOIN pledges
  ON users.id = pledges.user_id
  GROUP BY users.name; "
end

#
#  

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
 "SELECT projects.title, (SUM(pledges.amount) - projects.funding_goal) AS is_over
FROM projects 
JOIN pledges 
ON projects.id = pledges.project_id 
GROUP BY projects.title 
HAVING is_over >= 0;"
end


#
def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "SELECT users.name, SUM(pledges.amount)
   FROM users
   JOIN pledges
   ON users.id = pledges.user_id
   GROUP BY users.name
   ORDER BY SUM(pledges.amount);"
end


#
def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
   "SELECT projects.category, pledges.amount
  FROM projects
  JOIN pledges
  ON projects.id = pledges.project_id
  WHERE projects.category = 'music';"
end


#
def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
 "SELECT projects.category, SUM(pledges.amount)
  FROM projects
  JOIN pledges
  ON projects.id= pledges.project_id
  WHERE projects.category = 'books'"
end
