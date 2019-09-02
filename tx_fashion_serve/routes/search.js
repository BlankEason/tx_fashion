const express=require("express");
var router=express.Router();
var query=require("./query");
router.get("/",(req,res)=>{
  var output={
    count:0,
    pageSize:9,
    pageCount:0,
    pno:req.query.pno||0,
    data:[]
  };
  var kw=req.query.kw;
  console.log("kw:"+kw)
  if(kw){
    //"mac i5 128g"
    var kws=kw.split(" ");
    //[mac,i5,128g]
    kws.forEach((elem,i,arr)=>{
      arr[i]=`title like '%${elem}%'`;
    })
    console.log("kws:"+kws)
    /*[
      title like '%mac%',
      title like '%i5%',
      title like '%128g%'
    ]*/
    //join(" and ");
    var where=kws.join(" and ");
    console.log(where)
    //"title like '%mac%' and title like '%i5%' and title like '%128g%'"
    // var sql=`select *,(select md from tx_product where lid=lid limit 1) as md from tx_product where ${where}`;
    var sql=`select * from tx_index_product where ${where}`
    query(sql,[])
    .then(result=>{
      console.log(result)
      output.count=result.length;
      output.pageCount=
        Math.ceil(output.count/output.pageSize);
      sql+=` limit ?,?`;
      return query(sql,[output.pageSize*output.pno,output.pageSize]);
    })
    .then(result=>{
      output.data=result;
      res.send(output);
    })
  }else{
    res.send(output);
  }
})


router.get("/shelp",(req,res)=>{
  var kw=req.query.kw;
  var kws=kw.split(" ");
  kws.forEach((elem,i,arr)=>{
    arr[i]=`title like '%${elem}%'`;
  })
  var where=kws.join(" and ");
  var sql=`select lid,title from tx_product where ${where} limit 10`;
  query(sql,[]).then(result=>{
    res.send(result);
  })
})
module.exports=router;