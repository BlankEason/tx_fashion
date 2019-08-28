const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
    var lid=req.query.lid;
    console.log("detail:" + lid)
    if(lid!==undefined){
      var sql=`SELECT * from tx_product where lid =?`
      pool.query(sql,[lid],(err,result)=>{
        if(err) throw err;
        if(result.length>0) {
            res.send({code:1,data:result})
        }
    })
    }
})

module.exports=router;