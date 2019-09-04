const express=require("express");
const router=express.Router();
const pool=require("../pool");
/*************************************** ***** 功能 查询当前用户购物车信息******************* */
// 1.接收请求的方式GET 请求地址 /collect
router.get("/show",(req,res)=>{
  var uid=req.session.uid;
  if(!uid){
      // uid = 1;
      res.send({code:-1,msg:"请先登录"})
      return;
  }
      // 2.创建sql语句
    var sql ="SELECT * FROM tx_shopcart where uid= ?";
    // 3.通过连接池发送sql语句
    pool.query(sql,[uid],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result)
            console.log(result)
        };
    })
  
})
/*************************************** *****  购物车删除指定商品*/
router.get("/del",(req,res) =>{
  var id=req.query.id;
  var sql="Delete From tx_shopcart WHERE id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    //判断是否删除成功
    if(result.affectedRows>0){   
      res.send({code:1,msg:"删除成功"});
     }else{
      res.send({code:-1,msg:"删除失败"});
     }
  })
})

/*************************************** *****  删除购物车中指定多个商品*/
router.get("/delM",(req,res)=>{
  var ids=req.query.ids;
  var sql=`DELETE FROM tx_shopcart WHERE id IN(${ids})`;
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"删除成功"})
    }else{
      res.send({code:-1,msg:"删除失败"})
    }
  })
})



  module.exports=router;
