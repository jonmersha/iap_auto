const mysql=require('mysql')
var con = mysql.createConnection({
    host: "localhost",
    user: "beshegercom_iap",
    database:"beshegercom_iap",
    password: "Yohannes@hira123321"
  });

  con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
  });  
  module.exports=con;