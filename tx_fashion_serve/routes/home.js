const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
    // var uid = req.session.uid;
    // console.log(uid);
    // var sql ="SELECT d.fid,d.cid,d.title,d.subtitle,d.detail,d.pic,d.href,d.pic_collect_active,d.pic_collect,c.display  FROM cook_index_detail d,cook_collect c";
    var sql ="SELECT * FROM tx_index_product";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        if(result.length>0) {
            res.send({code:1,data:result})
        }
    })
})
router.get("/shirt",(req,res)=>{
    // var uid = req.session.uid;
    // console.log(uid);
    // var sql ="SELECT d.fid,d.cid,d.title,d.subtitle,d.detail,d.pic,d.href,d.pic_collect_active,d.pic_collect,c.display  FROM cook_index_detail d,cook_collect c";
    var sql ="SELECT * FROM tx_product_shirt";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        if(result.length>0) {
            res.send({code:1,data:result})
        }
    })
})

router.get("/men",(req,res)=>{
    // var uid = req.session.uid;
    // console.log(uid);
    // var sql ="SELECT d.fid,d.cid,d.title,d.subtitle,d.detail,d.pic,d.href,d.pic_collect_active,d.pic_collect,c.display  FROM cook_index_detail d,cook_collect c";
    var sql ="SELECT * FROM tx_product_men";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        if(result.length>0) {
            res.send({code:1,data:result})
        }
    })
})
router.get("/tshirt",(req,res)=>{
    // var uid = req.session.uid;
    // console.log(uid);
    // var sql ="SELECT d.fid,d.cid,d.title,d.subtitle,d.detail,d.pic,d.href,d.pic_collect_active,d.pic_collect,c.display  FROM cook_index_detail d,cook_collect c";
    var sql ="SELECT * FROM tx_product_tshirt";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        if(result.length>0) {
            res.send({code:1,data:result})
        }
    })
})


module.exports=router;