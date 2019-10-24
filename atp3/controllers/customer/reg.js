var express = require('express');
var db = require('./../../models/db.js');
var router = express.Router();

router.get('/customerreg',function(req, res){
    res.render('customer/reg');
});

router.post('/customerreg',function(req, res){
    var sql = "insert into customer values('','customer','"+ req.body.name+"', '"+req.body.email+"','"+ req.body.username+"','"+ req.body.password+"')";
	db.execute(sql, function(status){

		if(status){
			res.redirect('/customer/customerreg');
		}else{
            // res.redirect('/emp/addemp');
            res.send('mistake');
		}
	});
});
router.get('/customerhome',function(req, res){
    res.render('customer/home');
});

module.exports = router;