const express = require('express');
const mysql = require('mysql');
var bodyParser = require('body-parser');
var methodOverride = require('method-override');
var logger = require('morgan');
var cors = require('cors');

var app = express();
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(methodOverride());
app.use(cors());


var con = mysql.createConnection({
    // properties
    host: 'localhost',
    user: 'root',
    password: '12345',
    database: 'hosptal'
});
con.connect(function (error) {
    if (!!error) {
        console.log('Error');
    } else {
        console.log('Connected'); 
    }
    app.post('/add', (req, res) => {
        //res.send('Hello World');

        var pname = req.body.namep;
        var pid = req.body.idp;
        var ppass = req.body.passp;
        var dname = req.body.named;
        var dpmed = req.body.meddp;
        var date = req.body.date1;

        var sql = 'INSERT INTO haspitaltb (pname,pid,ppass,dname,dpmed,date) VALUES ("' + pname + '","' + pid + '","' + ppass + '","' + dname + '","'+ dpmed + '"," '+ date +'")';

        con.query(sql, function (err, result) {
            if (err) throw err;
            console.log("1 record inserted");
        });

    });

    
    app.post("/logindoctor",(req,res)=>{
        var Email = req.body.email21;
       var Cont = req.body.pass21;
       var sql= 'select * from admin where (email) = ("' + Email + '")';
       con.query(sql,(err,result)=>{
           if(result[0]!=null && result[0].pasword==Cont){
               res.json(result)
               console.log(result);
           }
           else{
              
               console.log(err);
               res.json({
                   success:false,
                   status:400
               })
           }
           })
    })

    app.post('/addstory', (req, res) => {
        //res.send('Hello World');

        var title = req.body.title1;
        var story = req.body.story1;
       

        var sql = 'INSERT INTO article (title,story) VALUES ("' + title + '","' + story + '")';

        con.query(sql, function (err, result) {
            if (err) throw err;
            console.log("1 story inserted");
        });

    });
 
    app.get('/getUsers', (req, res) => {
        


        var sql = 'SELECT * FROM article';

        con.query(sql, function (err, result) {
            res.send(result)

            console.log(sql);
        });
    })
    

});



const port1 = process.env.PORT || 4000;
var server = app.listen(port1, function () {
    var host = server.address().address
    var port = server.address().port

    console.log("Example app listening at http://%s:%s", host, port)
})