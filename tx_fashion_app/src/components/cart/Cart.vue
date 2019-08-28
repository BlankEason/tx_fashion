<template>
  <div class="shoping-page" id="shopping">
    <div class="header_box">
        <div class="shopping-box">
            <div class="box1">购物车 (<span id="countNum">4</span>)</div>
            <div class="box2">编辑</div>
        </div>
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
                    <div class="shopping-check" onclick="check_goods(this)">
                        <input type="checkbox" class="checkbox_css" name="id">
                    </div>
                    <!--<span class="shopping-select"></span>-->
                    <!-- 图片 -->
                    <div class="cartimg">
                     <img :src="`http://127.0.0.1:3000/`+item.pic" alt="">
                    </div>
                    <!-- 介绍 -->
                    <div class="good-property">
                        <div class="shopping-name">{{item.title}}</div>
                        <div class="goods-size"><span>{{item.color}};{{item.spec}}</span></div>
                        <!-- 价格 数量 -->
                        <div class="goods-footer">
                            <div class="goods-price">￥<span>{{item.price}}</span></div>
                            <div class="goods-count">
                                <span >-</span>
                                    {{item.count}}
                                <span >+</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- <div class="subListTitle right">
                    <a class="subRight collection" onclick="Delete()">收藏</a>
                    <a class="subRight delete" onclick="Delete(this)">删除</a>
                </div> -->
                <div class="bg" ></div>
            </div>
        </div>
    </div>
    <!-- 全选 合计 结算 -->
    <div class="shopping-account" >
            <div class="shopping-check" onclick="checkAll(this)" id="check_all">
                <input type="checkbox" class="checkbox_css">
            </div>
            全选
        <div class="shopping-count">合计:
            <div class="count-color">￥<span id="total">0</span></div>
            <div class="total" onclick="Count()">结算 （<span id="count">0</span>）</div>
        </div>
    </div>
   
</div>
</template>
<script>
export default {
  data() {
      return {
          list:[]
      }
  },
  methods: {
      load(){
        //   发送请求
        var url="shopcart/show"
        this.axios.get(url).then(res =>{
            this.list=res.data

        })
      },
  },
  created() {
      this.load()
  },
}
</script>
<style scoped>
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
    width: 20px;
    height: 20px;
    background: url("../../../public/image/select.png") no-repeat center;
    background-size: 100% 100%;
    margin-right: 10px;
}

.shoping-page .checkbox_css {
    width: 20px;
    height: 20px;
    vertical-align: middle;
    opacity: 0;
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