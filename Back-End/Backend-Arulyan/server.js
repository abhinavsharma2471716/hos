const express = require("express");
const app = express();
const bodyparser = require("body-parser");
const cors = require("cors");
app.use(bodyparser.urlencoded({extended:false}));
app.use(bodyparser.json());

let PORT = 5000;

const mysql = require("mysql");
const connection = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"12345",
    database:"hosptal"
})

connection.connect((err)=>{
    if(err) throw err;
    console.log("Connected to DB");
});

app.use(cors());

//Get the name of the diseases
app.get('/diseases',(req,res)=>{
    var dis = "select name from diseases";
    connection.query(dis,(err,rows)=>{
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
    connection.query(prob, (err, result)=>{
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
app.listen(PORT, function(){
    console.log('listening on port:'+PORT);
});