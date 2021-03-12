var express = require('express')
var app = express()


// This changes the extension to be shorter
// .handlebars -> .hbs
/*
app.engine('hbs', require('exphbs'))
app.set('view engine','hbs');
*/
app.engine('html', require('exphbs'))
app.set('view engine','html');

// This should launch with logger active
var logger = require('./logger');
app.use(logger);
// This should connect the database;
var mysql = require('./dbcon.js');


//app.set('port', process.argv[2]);
var port = 4048
//app.use(express.static(__dirname));

/*  mysql.pool.query('DROP TABLE IF EXISTS diagnostic', function(err){
    if(err){
      next(err);
      return;
    }
    Just to give an example on how the query works
*/
// Home Page 1;
// Cumbersum but testing around static
// Public path
app.get('/', function(req,res,next){
     mysql.pool.query('SELECT * FROM vg INNER JOIN genre on vg.genre = genre.id', function(err,vgame) {
        if(err){
            console.log('Failed!\n');
            next(err);
            return;
        }else{
            console.log('Success!\n');
            console.log(vgame);


        };
    console.log("test");
    res.status(200).render( 'index', {vgame: vgame});
    console.log("end test");
     });


});
app.get('/shop', function(req,res,next){
     mysql.pool.query('SELECT * FROM vg INNER JOIN genre on vg.genre = genre.id', function(err,vgame) {
        if(err){
            console.log('Failed!\n');
            next(err);
            return;
        }else{
            console.log('Success!\n');
            console.log(vgame);


        };
    console.log("test");
    res.status(200).render( 'shop', {vgame: vgame});
    console.log("end test");
     });


});
app.get('/style.css', function (req, res) {
    res.sendFile(__dirname + "/" + "style.css");
});
app.get('/index.js', function (req, res) {
    res.sendFile(__dirname + "/" + "index.js");
});

//  is it complex
app.get('/test', function (req, res) {

     mysql.pool.query('SELECT * FROM `vg` INNER JOIN genre on vg.genre = genre.id', function(err,result) {
        if(err){
            console.log('Failed!\n');
            return;
        }else{
            console.log('Success!\n');
            console.log(result);


        };
    res.status(200).render('home', {result: result});
    });
});
// Run Server
//app.listen(app.get('port'), function(){
app.listen( port, function(){
    console.log('Successfully launched at ' + port + '; Ctrl-C to end.');

});

