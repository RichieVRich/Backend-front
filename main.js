




var express = require('express')
var mysql = require('./dbcon.js');
var bodyParser = require('body-parser');

var app = express();
var handlebars = require('express-handlebars').create({
    defaultLayout: 'main',
    });

app.engine('handlebars', handlebars.engine);
app.use(bodyParser.urlencoded({extended:true}));
app.use('/static', express.static('public'));
app.set('view engine','handlebars');
var port = 4048
//app.set('port', process.argv[2]);
app.set('mysql',mysql);
app.use('/shop', require('./shop.js'))
app.use('/', express.static('public'));

app.use(function(req,res){
    res.status(404);
    res.render('404');
});

app.use(function(err,req,res,next){
    console.error(err.stack);
    res.status(500);
    res.render('500');
});

// Run Server
//app.listen(app.get('port'), function(){
app.listen( port, function(){
    console.log('Successfully launched at ' + port + '; Ctrl-C to end.');

});

