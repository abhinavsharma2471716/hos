const express = require('express');
const mysql = require('mysql');
var bodyParser = require('body-parser');
var methodOverride = require('method-override');
var logger = require('morgan');
var cors = require('cors');
var bcrypt = require('bcrypt');
const saltRounds = 10;





var app = express();
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(methodOverride());
app.use(cors());


var con = mysql.createConnection({
    // properties
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'hosptal'
});

con.connect(function (error) {
    if (!!error) {
        console.log('Error');
    } else {
        console.log('Connected');
    }

});



//Get the name of the diseases
app.get('/diseases',(req,res)=>{
    var dis = "select name from diseases";
    con.query(dis,(err,rows)=>{
        if(err){
            console.log(err);
            res.json({
                success:false,
                status:400
            })
        }
        else{
            console.log(rows);
            res.json(rows);
        }
    })
})

//Get the name of the possible diseases
app.post("/probdiseases",(req,res)=>{
    const name = req.body.syms;
    var prob = 'select * from diseases where (Name) = ("'+name+'")';
    con.query(prob, (err, result)=>{
        if(err){
            console.log(err);
            res.json({
                success:false,
                status:400
            })
        }
        else{
            res.json(result);
            console.log(result);
        }
    })
})






app.post('/add', (req, res) => {
    //res.send('Hello World');

    var Pass = req.body.pass1;
    var Email = req.body.email1;
    var Num = req.body.num2;
    var Bg = req.body.bg1;
    var Add = req.body.add1;
    var Name = req.body.name1;
    var Pm = req.body.pm1;
    var Gen = req.body.gen1;
    var Age = req.body.age;


    bcrypt.hash(Pass, saltRounds, function (err, hash) {
        // Store hash in your password DB.
        var sql = 'INSERT INTO Table1 (NAME,PASSWORD,EMAIL,AGE,CONTACT,BLOOD,ADDRESS,MEDICATION,GENDER) VALUES ("' + Name + '","' + hash + '","' + Email + '","' + Age + '","' + Num + '","' + Bg + '","' + Add + '","' + Pm + '","' + Gen + '")';
        con.query(sql, function (err, result) {
            if (err) throw err;
            console.log("1 record inserted");
        });
    });


});




app.post('/adds', (req, res) => {
    //res.send('Hello World');


    var Email = req.body.email1;
    var Num = req.body.num2;
    var Name = req.body.name1;


    var sql = 'INSERT INTO Table7 (NAME,EMAIL,CONTACT) VALUES ("' + Name + '","' + Email + '","' + Num + '")';
    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("1 record inserted");
    });


});







    








    app.post('/add1', (req, res) => {
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
    










app.post("/login", (req, res) => {
    var mail = req.body.email1;
    var pass = req.body.pass1;
    var queryy = 'SELECT * from Table1 where EMAIL="' + mail + '"';

    con.query(queryy, (err, result) => {
        if (err)
            console.log(err)
        // res.send('Insert success.');
        else {
            console.log(result);
            if (result.length == 0) {
                res.json({
                    status: 404,
                    success: false
                })
            }
            else if (result.length == 1) {
                console.log(result[0].Password);
                bcrypt.compare(pass, result[0].PASSWORD, function (err, result) {
                    console.log(result);
                    if (result == true) {
                        res.json({
                            status: 200,
                            success: true
                        })
                    }
                });
            }
            else {
                res.json({
                    status: 400,
                    success: false
                })
            }
        }
    })

}
)


app.get('/getUsera', (req, res) => {


    var sql = 'SELECT * FROM Table2 ';

    con.query(sql, function (err, result) {
        res.send(result)

        console.log(sql);
    });
})
app.get('/getchild', (req, res) => {


    var sql = 'SELECT * FROM Table3 ';

    con.query(sql, function (err, result) {
        res.send(result)

        console.log(sql);
    });
})
app.get('/getskin', (req, res) => {


    var sql = 'SELECT * FROM Table4 ';

    con.query(sql, function (err, result) {
        res.send(result)

        console.log(sql);
    });
})
app.get('/geteyes', (req, res) => {


    var sql = 'SELECT * FROM Table5 ';

    con.query(sql, function (err, result) {
        res.send(result)

        console.log(sql);
    });
})
app.get('/getheart', (req, res) => {


    var sql = 'SELECT * FROM Table6 ';

    con.query(sql, function (err, result) {
        res.send(result)

        console.log(sql);
    });
})









const port1 = process.env.PORT || 3000;
var server = app.listen(port1, function () {
    var host = server.address().address
    var port = server.address().port
    console.log("Example app listening at http://%s:%s", host, port)
})