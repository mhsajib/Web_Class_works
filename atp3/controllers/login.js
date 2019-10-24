var express = require('express');
var db = require('./../models/db.js');

var router = express.Router();

router.get('/', function(req, res){
	res.render('login/index');
});

router.post('/', function(req, res){
	
	var sql = "select * from admin where username='"+req.body.username+"' and password='"+req.body.password+"'";
	
	db.getResults(sql, function(results){
		if(results.length > 0){
			res.cookie('username', req.body.username);
			if(results[0].type == 'admin'){
				res.redirect('/admin/adminhome');
			}
			// else{
			// 	res.redirect('/customer/customerhome');
			// }
			//req.session.un = req.body.uname;
			
			// res.send(results[0].type);
			// res.redirect('/adminhome');	
		}else{
			var sql = "select * from customer where username='"+req.body.username+"' and password='"+req.body.password+"'";
			db.getResults(sql, function(results){
				if(results.length > 0){
					res.redirect('/customer/customerhome');
				} });
		}
	});

});

module.exports = router;


