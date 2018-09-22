## intermediate mysql prototype

### featureset 1
- test current layout with dummy data to see expected appearance
- change loadUserData (in script.js) function to point at php endpoint userEndpoint.php
	- make sure to put in the full address as it may not match your server
- add query to userEndpoint.php
	- it should yield the same data as the dummydata-user.json in terms of form (data will be different)
- test to make sure new users show up correctly

### featureset 2
- change loadConversationData (in script.js) to point at the node endpoint.  This endpoint uses the get method and will likely be on your localhost:3001/conversations
- add mysql to your dataserver.js for the /conversations method to mimic the data in dummydata-comms.json
- make sure the data shows up correctly when clicking on a user

### featureset 3
- change loadThreadData (in script.js) to point at the node endpoint.  This will be the same server as featureset 2, but will be a post method and have an address of /threads
- add mysql to your dataserver.js for the /threads method to mimic the data in dummydata-threads.json
- make sure the data shows up correctly when clicking on a message in the right panel