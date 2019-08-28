const express=require("express");
const router=express.Router();
const pool=require("../pool");
//添加到收藏夹中
router.get("/addshopcart",(req,res)=>{
    // 参数
    // 当前用户登录id
    var uid=req.session.uid;
    if(!uid){
        // uid = 1;
        res.send({code:-1,msg:"请先登录"})
        return;
    }
    // console.log(uid)
    // 获取参数
    var pid=req.query.pid
    var title=req.query.title
    var price=req.query.price
    var pic=req.query.pic
    var spec=req.query.spec
    var color=req.query.color
    var href=req.query.href
    // console.log(req.query)
    //查询指定菜系用户是否收藏过
    var sql ="SELECT id FROM tx_shopcart Where uid=? AND pid=?";
    pool.query(sql,[uid,pid],(err,result)=>{
        if(err) throw err;
        // console.log(result);
        //如果没有收藏过
        var sql=""
        if(result.length==0){//未购买过 插入
            sql=`INSERT INTO tx_shopcart VALUES(null,${uid},${pid},'${title}','${price}','${pic}','${spec}','${color}','${href}',1)`;
            
        }else{  //已购买
            sql=`UPDATE tx_shopcart SET count=count+1 WHERE uid=${uid} AND pid=${pid}`;
        }
        // 更新购物车
        pool.query(sql,(err,result) =>{
            if(err)throw err;
            // console.log(result);
            res.send({code:1,msg:"添加成功"})
        })
    })
})

//http://127.0.0.1:3000/user/login?uname=tom&upwd=123
//http://127.0.0.1:3000/add/addcollect?uid=01%fid=02&cid=02&title=yu&subtitle=hahah&detail=xixixi&pic=01.jpg&href=hadfsd
//用户登录收藏过的图标变红
// router.get("/add_active",(req,res)=>{
//     var uid=req.session.uid
//     if(!uid){
//         res.send({code:-1,msg:"未登录"})
//     }else{
//         var sql="SELECT cid,display FROM cook_collect where uid=? "
//         pool.query(sql,[uid],(err,result)=>{
//             if(err) throw err;
//             res.send({code:1,data:result})
//         })
//     }
// })

module.exports=router;