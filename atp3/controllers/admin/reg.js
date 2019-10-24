var express = require('express');
var router = express.Router();

router.get('/adminreg',function(req, res){
    res.render('admin/reg');
});

module.exports = router;

