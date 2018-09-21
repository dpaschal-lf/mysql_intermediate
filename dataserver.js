
const express = require('express');
const bodyParser = require('body-parser');
const PORT = 3001;

const mysql = require('mysql');
const mysqlConnectData = require('./mysql_config.js');
const db = mysql.createConnection( mysqlConnectData );

const endpoint = express();
// parse application/x-www-form-urlencoded
endpoint.use(bodyParser.urlencoded({ extended: false }))
// parse application/json
endpoint.use(bodyParser.json())

//allow cross origin requests via middleware
endpoint.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

endpoint.get('/threads', (request, response)=>{
	db.connect( ()=>{
		const output = {
			success: false
		}
		const query = ``;
		const threadID = request.query.id;
		db.query(query, (error, results, fields)=>{
			if(error){
				output.error = error;
				response.send( JSON.stringify(output));
				return;
			}
			output.data = results;
			response.send( JSON.stringify(output));
		});
	});
});

endpoint.post('/conversations', (request, response)=>{
	db.connect( ()=>{
		const output = {
			success: false
		}
		const query = ``; //write your query here
		const convoID = request.body.id;
		db.query(query, (error, results, fields)=>{
			if(error){
				output.error = error;
				response.send( JSON.stringify(output));
				return;
			}
			output.data = results;
			response.send( JSON.stringify(output));
		});
	});
});

endpoint.listen(PORT, ()=>{
	console.log(`endpoint listening on port ${PORT}`);
})
