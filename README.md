## intermediate mysql prototype

### video example of output:
https://www.youtube.com/watch?v=F9bBhN3Mlps
- First example is with dummy data
- second version is with live data

### prep
- start up your mamp system and open up phpmyadmin
- make sure you do not have a database called chatThread (in case you have done this before).  If you do, delete it.
- get the contents from mysqldump.sql
- paste the contents from mysqldump.sql into your database through the SQL tab

### featureset 1
- make sure your mamp is running
- open up the page via your mamp server
- test current layout with dummy data to see expected appearance
- configure your mysql_connect.php file by copying your mysql_connect.php.config file and filling in the appropriate info
- change loadUserData (in script.js) function to point at php endpoint userEndpoint.php
	- make sure to put in the full address as it may not match your server
- add query to userEndpoint.php
	- it should yield the same data as the dummydata-user.json in terms of form (data will be different)
- test to make sure new users show up correctly

### featureset 2
- make sure to install the necessary components via npm install
	- express
	- mysql
- configure your mysql_credentials.js file by copying your mysql_credentials.js.config file and filling in the appropriate info
- change loadConversationData (in script.js) to point at the node endpoint.  This endpoint uses the get method and will likely be on your localhost:3001/conversations
- add mysql to your dataserver.js for the /conversations method to mimic the data in dummydata-comms.json
- start your dataserver.js with node
- access your index.html page (still via mamp)
- make sure the data shows up correctly when clicking on a user

### featureset 3
- change loadThreadData (in script.js) to point at the node endpoint.  This will be the same server as featureset 2, but will be a post method and have an address of /threads
- add mysql to your dataserver.js for the /threads method to mimic the data in dummydata-threads.json
- start your dataserver.js with node
- access your index.html page (still via mamp)
- make sure the data shows up correctly when clicking on a message in the right panel
