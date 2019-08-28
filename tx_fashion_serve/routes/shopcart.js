const express=require("express");
const router=express.Router();
const pool=require("../pool");

// 1.接收请求的方式GET 请求地址 /collect
router.get("/show",(req,res)=>{
    var uid=req.session.uid;
    if(!uid){
        // uid = 1;
        res.send({code:-1,msg:"请先登录"})
        return;
    }
        // 2.创建sql语句
      var sql ="SELECT * FROM tx_shopcart";
      // 3.通过连接池发送sql语句
      pool.query(sql,[],(err,result)=>{
          if(err) throw err;
          if(result.length>0){
              res.send(result)
            //   console.log(result)
          };
      })
    
  })

  module.exports=router;
