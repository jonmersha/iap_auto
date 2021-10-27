const express=require('express');
const app=express();
const converter = require('json-2-csv');
const commands=require('./dp_op/commonSQL.js')

const path = require('path')

const cores =require('cors')
app.use(cores())
//app.options('https://inventory.besheger.com',cores())

//app.set('view engine', 'ejs');
//app.set('views', path.join(__dirname, 'views'));


app.use(
    express.urlencoded({
      extended: true
    })
  )
  
  app.use(express.json())
  app.use('/', express.static(path.join(__dirname, 'public')))
//basic Get infoemation
  app.get('/test',(req,res)=>{
      res.send("the page is working")
  })

 app.get('/anp',(req,res)=>{
    commands.selectAll(res,'bank_organ');    
})

app.get('/customer',(req,res)=>{ 
    commands.selectAll(res,'Customer');  
})

//Post Registration End
app.post('/reg',(req,res)=>{
    commands.generateInsertSql(req.body.data,req.body.tableName,res) 
})


app.listen(8888,()=>{
  console.log("Started @ Port 8888");
})