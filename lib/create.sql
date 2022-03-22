CREATE TABLE projects (id INTEGER PRIMARY KEY, title TEXT, category TEXT, funding_goal FLOAT, start_date tDATE, end_date tDATE);
-- Comment tests. Comment commands are quite unique depending the language one finds themselves in-- 
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, age INTEGER);
--I am using these comments as spacers for me between my commands.--
CREATE TABLE pledges (id INTEGER PRIMARY KEY, amount FLOAT, user_id INTEGER, project_id INTEGER);

