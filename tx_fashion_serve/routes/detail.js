const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
    var lid=req.query.lid;
    var output={
        product:{},
        pics:{}
    }
    // console.log("detail:" + lid)
    if(lid!==undefined){
         var sql1=`SELECT * from tx_product where lid =?`
         pool.query(sql1,[lid],(err,result)=>{
                 if(err) throw err;
                 output.product=result[0]
                 console.log(output.product);
                 var sql2=`SELECT * from tx_product_carousel where lid =?`
                 pool.query(sql2,[lid],(err,result) =>{
                     if(err) throw err;
                     output.pics=result;
                     console.log(output.pics)
                     res.send(output)
                 })
         })
    }
})

module.exports=router;