var express = require('express');
var db = require('./../models/db.js');

var router = express.Router();

router.get('/', function(req, res){
	res.render('login/index');
});

router.post('/', function(req, res){
	
	var sql = "select * from adminlog where username='"+req.body.username+"' and password='"+req.body.password+"'";
	
	db.getResults(sql, function(results){
		if(results.length > 0){
			//req.session.un = req.body.uname;
			res.cookie('username', req.body.username);
			res.redirect('/adminhome');	
		}else{
			res.send('invalid username/password');
		}
	});

});

module.exports = router;


