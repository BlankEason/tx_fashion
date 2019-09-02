<template>
  <div class="shoping-page" id="shopping">
    <div class="">
        <!-- <div class="shopping-box">
            <div class="box1">购物车 (<span id="countNum">4</span>)</div>
            <div class="box2">编辑</div>
        </div> -->
        <mt-header title="购物车(1)" fixed>
            <router-link to="" slot="left">
                <mt-button icon="back" @click="back"></mt-button>
            </router-link>
            <mt-button icon="more" slot="right"></mt-button>
        </mt-header>
    </div>
    <div style="height:44px;"></div>
    <div class="shopping-item">
      <!-- 店铺名称 -->
        <!-- <div class="shopping-name1" onclick="singleAll(this)">
            <div class="shopping-check" >
                <input type="checkbox" class="checkbox_css" >
            </div>
            九月的小铺
        </div> -->
        <!-- 商品 -->
        <div class="goods-item" v-for="(item,i) of list" :key="i">
            <!-- 每件商品 -->
            <div class="good-list">
                <div class="store-goods">
                  <!-- 左边 选择框 -->
                    <div class="shopping-check" >
                        <input type="checkbox" class="checkbox_css" v-model="item.cb" >
                    </div>
                    <!--<span class="shopping-select"></span>-->
                    <!-- 图片 -->
                    <div class="cartimg" @click="upDetail(item)">
                     <img :src="`http://127.0.0.1:3000/`+item.pic" alt="">
                    </div>
                    <!-- 介绍 -->
                    <div class="good-property">
                        <div class="shopping-name">{{item.title}}</div>
                        <div class="goods-size">
                            <span>{{item.color}};{{item.spec}}</span>
                            <mt-button
                              :data-id="item.id" 
                              :data-title="item.title"
                               @click="delitem">
                                <img class="delimg" style="width:20px;height:20px" src="../../../public/image/del.png" >
                            </mt-button>
                        </div>
                        
                        <!-- 价格 数量 -->
                        <div class="goods-footer">
                            <div class="goods-price">￥<span>{{item.price}}</span></div>
                            <div class="goods-count"  >
                                <span @click="setSub(item.id)">-</span> 
                                    <!-- <input type="text" v-model="item.count" @change="countChanged"> -->
                                    <span>{{item.count}}</span>
                                <span @click="setAdd(item.id)" >+</span>
                            </div>
                        </div> 
                    </div>
                </div>
                <div class="bg" ></div>
            </div>
        </div>
    </div>
    <!-- 全选 合计 结算 -->
    <div class="shopping-account" >
      <div class="d1">
        <div class="shopping-check" @change="selectAll" >
            <input type="checkbox" class="checkbox_css">
        </div>
        <div>全选</div>
      </div>
      <mt-button style="width:100px;height:30px" @click="delMItem">删除所有</mt-button>
                
      <div class="shopping-count">合计:
          <div class="count-color">￥<span>{{sumPrice}}</span></div>
          <div class="total" onclick="Count()">结算 </div>
      </div>
    </div>
   
</div>
</template>
<script>
import { mapActions ,mapGetters} from 'vuex'
export default {
  data() {
      return {
        //  del_show:false,
         list:[],
        //  count:1,
         sumPrice:0,
         totalNumber: 0, //总数
         
      }
  },
  methods: {
    // countChange(){
    //   console.log(this.$store)
    // },
    // 删除多条数据
    
    delMItem(){                                  //删除购物车多个指定商品
      // 1.创建变量保存多个购物车商品id
      var str="";
      // 2.创建循环遍历数组 获取状态为true的id值
      for(var item of this.list){
          if(item.cb){// true  当前商品选中
              str+=item.id+","; //将id拼接
          }
      }
      // 2.1用户是否选中了商品
      if(str.length==0){
          // 2.2如果没选中商品，显示确认消息
          this.$messagebox("请选择要删除的商品")
          return;//停止执行
      }
      console.log(str) 
      // 3.截取字符串中最后，
      str=str.substring(0,str.length-1);
      // console.log(str) 
      // console.log(str);
      // 4.显示交互式提示框，用户再次确认是否删除
      this.$messagebox.confirm("是否删除数据")
      .then(res=>{
          //用户确认按钮
          var url="shopcart/delM";
          var ids={ids:str};//参数名ids：值拼接
          // 5.发送ajax请求 删除多个数据
          this.axios.get(url,{params:ids}).then(res=>{
              //执行成功删除后重新加载
              this.$toast("删除成功")
              this.load();
          })
      }).catch(err=>{

      })
      
      // 6.提示用户删除成功 并且重新加载数据
    },
    
    // 删除指定商品
    
    delitem(e){
      var id=e.target.dataset.id;
      console.log(id)
      var title=e.target.dataset.title
      // 交互提示用户是否删除指定商品
      // 同意
      this.$messagebox.confirm(`是否删除${id}为${title}`).then(res=>{
        var obj={id}
          // 发送ajax 服务器端程序 ?id=id
        this.axios.get("shopcart/del",{params:obj}).then(res=>{
          // console.log(res);
          if(res.data.code>0){
                // 返回服务器返回内容
              // 重新调用loadMore() 更新购物车列表
              this.$toast("删除成功")
              this.load();
              // console.log(123)
          } 
        })
      }).catch(err=>{
          // console.log("取消删除")
      })
    },
    
    selectAll(e){ //                               全选按钮处理函数
      // 1.获取全选按钮状态
       var cb=e.target.checked;
       // console.log(cb)
       // 2.创建一个循环 遍历购物车数组
       for(var item of this.list){
             // 3.将全选的状态赋值购物车商品选中状态
         //  item.cb为商品的状态 = cb 为全选按钮状态
          item.cb=cb;
      }
    },
    // 返回上一页
    back(){
      this.$router.back(-1);
    },
    //   数量加减
    setAdd(id){
      for(var item of this.list){
        if(item.id==id){
          item.count++
        }
      }
      
    },
    // 数量减
    setSub(id){
      for(var item of this.list){
        if(item.id==id && item.count>1){
          item.count--; 
        }
        
      }
    },
    //   跳转详情
    upDetail(item){
        this.$router.push(item.href)
        console.log(item.href)
    },
    load(){
      //   发送请求
      var url="shopcart/show"
      this.axios.get(url).then(res =>{
          // this.list=res.data
          if(res.data.code==-1){
              // 3.如果用户没有执行登录操作
              this.$messagebox("消息","请先登录").then(res=>{
                  // 提示交互提示 跳转登录组件
                  // this.$router.push("/Login");
                  // return;
              });
          }else{
              // 4.获取数据成功
              var list=res.data;
              //4.1创建循环遍历数组并且为每个元素添加cb属性表示，商品前复选框状态
              //  注意先添加 cb属性再赋值list

              //加载前清空
                  // console.log(res.data)
              this.$store.commit("clear");
              for(var item of list){
                  //4.1.1添加cb属性表示状态
                  item.cb=false;
                  //4.1.2修改共享购物车中是数值 vuex
                  this.$store.commit("increment")
              }
              // 购物车数量
              
              // 5.保存数据
              this.list=list;
              // console.log(this.list)
          }
          // 计算合计
          var sumPrice=0;
          for(var item of this.list){
              sumPrice+=(item.price*item.count)
          }
          this.sumPrice=sumPrice;

      })
    },
  },
    created() {
        this.load()
    },
   watch: {
   },
   computed: {
    //  ...mapGetters(['carList','allMoney','allSelsect'])   
   },
}
</script>
<style scoped>
.d1{
  display: flex;
  justify-content: space-around;
}
.mint-button{
  width: 20px;
  height: 20px;
  margin-right: 20px;
  border-radius: 50%;
}
.delimg{
  display: block;
  position: absolute;
  left: 2px;
  top: 0px;
  /* margin-right: 10px; */
  margin-right: 0 !important;
}

.cartimg{
    width: 85px;
    height: 80px;
}
.cartimg img{
    width: 85px;
    height: 80px;
}
.subRight collection{
  display: block;
  float: right;
}
.goods-item{
    /* border:1px solid red; */
    padding:5px;
}
body {
    background: #f4f4f4;
}
.shoping-page{
    padding-bottom: 100px;
}
.shoping-page .shopping-name{
   display: flex;
   font-size: 16px;
   height: 54px;
  /* line-height:16px; */
   /*文字超出显示...*/
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
  width:235px;

}
.shoping-page .shopping-name1{
   display: flex;
   font-size: 16px;
}
.shoping-page .shopping-item {
    width: 90%;
    margin: 10px auto;
    /* padding: 10px; */
    background: #ffffff;
    border-radius: 5px;
    align-items: center;
}

.shoping-page .shopping-item img {
    width: 80px;
    height: 80px;
    border-radius: 5px;
    margin-right: 5px;
}

.shoping-page .goods-size {
    display: flex;
    position: relative;
    justify-content: space-between;
    margin-top: 5px;
}

.shoping-page .goods-size span {
    background: #f4f4f4;
    color: #999999;
}

.shoping-page .shopping-select {
    display: inline-block;
    width: 20px;
    height: 20px;
    background: url("../../../public/image/select.png") no-repeat center;
    background-size: 100% 100%;
    margin-right: 10px;
}

.shoping-page .good-property {
    flex: 2;
    display:flex;
    flex-direction:column;
    justify-content: space-between;
    height:125px;
    /* margin-bottom:10px */
}

.shoping-page .goods-footer {
    display: flex;
    align-items: center;
    margin-top: 10px;
    justify-content: space-between;
}
.header_box {
    width:100%;
    height: 44px;
    position: fixed;
    /* width: 94%; */
    padding: 0 3%;
    line-height: 44px;
    background: #ffffff;
    top: 0;
    z-index: 999999;
    border-bottom:1px solid #666;
}
.box1{
    text-align: center;width: 60%;margin: 0 auto
}
.box2{
    text-align: center;
    width: 20%;
    position: absolute;
    display: inline;
    top: 0;
    right: -20px;
}
.shoping-page  .shopping-box{
    position: relative;
}
.shoping-page .goods-count span {
    border: 1px solid #f4f4f4;
    padding: 2px 10px;
    border-top-left-radius: 3px;
    border-bottom-left-radius: 3px;
}
.shoping-page .good-list{
    /* display: flex; */
    position: relative;
    /* border:1px solid #666; */
    padding:10px;
    /* border-bottom:1px solid #666; */
    margin-bottom:10px;
}
.bg{
    height:5px;
    width:100%;
    background-color:#666;
}
.shoping-page .goods-count span + span {
    border-top-right-radius: 3px;
    border-bottom-right-radius: 3px;
}
.shoping-page .store-goods{
    display: flex;
    justify-content: center;
    align-items: center;
    background: #ffffff;
    z-index: 1;
    margin: 5px 0;
    transform: translate3d(0px,0px,0px);
    /*规定应用过渡的CSS属性*/
    transition-property:transform;
    /*规定应用过渡所花费的时间*/
    transition-duration: 0s;
    /*规定过渡效果从何开始，默认是0*/
    transition-delay: 0;
    /*规定过渡的时间曲线*/
    transition-timing-function: linear;
}
.subListTitle {
    position: absolute;
    line-height: 89px;
}
.right > .subRight {
    display: block;
    float: left;
    padding: 0 12px;
}

.collection {
    background-color: #c7c7cc;
    color: white;
}
.update {
    background-color: #ffc900;
    color: white;
}
.delete {
    background-color: #ef473a;
    color: white;
}

.shoping-page .shopping-check {
    width: 25px;
    height: 25px;
    /* background: url("../../../public/image/select.png") no-repeat center; */
    background-size: 100% 100%;
    margin-right: 10px;
}

.shoping-page .checkbox_css {
    width: 20px;
    height: 20px;
    vertical-align: middle;
    opacity: 1;
    margin-right: 10px;
}

.shoping-page .goods-count input {
    border-top: 1px solid #f4f4f4;
    border-bottom: 1px solid #f4f4f4;
    width: 40px;
    padding: 2px 0;
    text-align: center;
}

.shoping-page .goods-price {
    font-weight: bold;
    color: #ff0000;
}

.shoping-page .footer-icon {
    background: #f4f4f4;
}

.shoping-page .shopping-account {
    background: #ffffff;
    position: fixed;
    bottom: 58.5px;
    width: 100%;
    height: 46.5px;
    display: flex;
    padding: 0 3%;
    justify-content: space-between;
    align-items: center;
    z-index: 99;
}

.shoping-page .shopping-count {
    font-size: 16px;
    margin-right: 5px;
}

.shoping-page .shopping-account div {
    display: flex;
    align-items: center;
}

.count-color {
    color: darkred;
}

.shoping-page .total {
    background: darkred;
    margin-left: 10px;
    padding: 5px 10px;
    border-radius: 20px;
    color: #ffffff;
}
</style>