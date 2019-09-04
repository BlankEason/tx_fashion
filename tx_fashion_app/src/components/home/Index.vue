<template>
<div class="main" >
    <!-- 顶部搜索栏 -->
		
   <!-- <div class="search">
     <header class="aui-navBar aui-navBar-fixed">
      <a href="javascript:;" class="aui-navBar-item">
        <i class="icon icon-return"></i>
      </a>
      <div class="aui-center">
	
        <div class="aui-search-box">
          <i class="icon icon-search" @click="search"></i>
          <input type="text" v-model="kw" @keyup.13="search" placeholder="UFO日 劵后最高享9.2折">
        </div>
      </div>
      <a href="javascript:;" class="aui-navBar-item" >
        <i class="icon icon-news"></i>
      </a>
    </header>
   </div> -->
	 <search/>
   <!-- 保留元素 -->
   <div style="margin-top:44px;"></div>
   <!-- 轮播图 -->
   <div class="carousel">
    <mt-swipe @change="handleChange" :auto="3000" :show-indicators="true">
      <mt-swipe-item>
         <img src="../../../public/image/banner.png" alt="">
      </mt-swipe-item>
      <mt-swipe-item>
         <img src="../../../public/image/banner.png" alt="">
      </mt-swipe-item>
      <mt-swipe-item>
         <img src="../../../public/image/banner.png" alt="">
      </mt-swipe-item>
      <mt-swipe-item>
         <img src="../../../public/image/banner.png" alt="">
      </mt-swipe-item>
    </mt-swipe>
   </div>
    <!-- 分类列表 T恤 寸衫 -->
    <div class="aui-border">
			<div class="aui-palace aui-palace-one">
				<!-- <a href="javascript:;" class="aui-palace-grid" @click="upToTshirt" > -->
				<a href="javascript:;" class="aui-palace-grid" @click="upToTshirt('2')" >
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-001.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>T恤</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid" @click="upToTshirt('3')">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-002.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>衬衫</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid" @click="upToTshirt('4')">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-003.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>短裤</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid " @click="upToTshirt('5')">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-004.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>休闲裤</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid" @click="upToTshirt('6')">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-005.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>牛仔裤</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid" @click="upToTshirt('1')">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-006.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>运动鞋</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid" @click="upToTshirt('1')">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-007.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>帽子</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid" @click="upToTshirt('1')">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-008.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2 style="color:#0e0e0e">查看更多</h2>
					</div>
				</a>
			</div>
		</div>
    <!-- 广告图 -->
    <div class="aui-flex">
			<div class="aui-flex-box">
				<img src="../../../public/image/ad-001.png" alt="">
			</div>
		</div>
    <!-- 列表 -->
    <div class="hot" >
      <h2>热门系列</h2>
    </div>
    <div class="aui-tab" data-ydui-tab>
			<div class="tab-panel">
				<div class="tab-panel-item tab-active">
					<div class="aui-list-theme-box">
							<!-- <div class="aui-list-item">
								<div class="aui-list-theme-img">
									<img src="../../../public/image/pd-007.png" alt="">
								</div>
								<div class="aui-list-theme-message">
									<h3 class="aui-list-theme-title">111子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面</h3>
									<h4>￥1 <i>829.99</i></h4>
									<div class="btn">
										<mt-button
											@click="addshoppcart"
											:data-title="item.title"
											:data-price="item.pic"
											:data-spec="item.spec"
											:data-color="item.color"
											:data-href="item.href"
											>
								 			<img class="btn-cart" :src="`http://127.0.0.1:3000/`+item.pic_collect">
								 		</mt-button>
								</div>
							</div> -->
							<!-- 每个商品 -->
						<div class="aui-list-item" v-for="(item,i) of list" :key="i">
								<div class="aui-list-theme-img" >
									<!-- <router-link :to="item.href"> -->
										<!-- 跳转至详情页 -->
										<img :src="`http://127.0.0.1:3000/`+item.pic"  @click="goTo(item)">
									<!-- </router-link> -->
								</div>
								<div class="aui-list-theme-message">
									<h3 class="aui-list-theme-title">{{item.title}}</h3>
									<h4>￥{{item.price}} <i>{{item.subprice}}</i></h4>
									<div class="btn">
										<mt-button
											@click="addshoppcart"
											:data-pid="item.pid"
											:data-title="item.title"
											:data-price="item.price"
											:data-pic="item.pic"
											:data-spec="item.spec"
											:data-color="item.color"
											:data-href="item.href"
											>
								 			<img class="btn-cart" :src="`http://127.0.0.1:3000/`+item.pic_collect">
								 		</mt-button>
									</div>
								</div>
						</div>
				  </div>
				</div>
			</div>
		</div>

</div>
</template>
<script>
export default {
	 data() {
		 return {
		 search:"",
		 list:[],	//接收服务端数据
		 }
	 },

	 methods:{
		 //  加入购物车
		 addshoppcart(e){
			  console.log(111)
			 //  获取数据
			 var pid=e.target.dataset.pid
			 var title=e.target.dataset.title
			 var price=e.target.dataset.price
			 var pic=e.target.dataset.pic
			 var spec=e.target.dataset.spec
			 var color=e.target.dataset.color
			 var href=e.target.dataset.href
			 console.log(pid)
		 	 //  请求地址
			 var url="add/addshopcart"
		 	 //   请求参数
			 var obj={pid,title,price,pic,spec,color,href}
			 this.axios.get(url,{params: obj}).then(res =>{ 
				 if (res.data.code == -1) {
					 this.$messagebox("消息", "请先登录再加入购物车").then(res => {
						 this.$router.push("/Login");
						 return;
					 });
				 }else{
					 this.$toast("添加成功");
				 } 
			 });
			 this.load()
		 },
		 //  首页数据加载
		 load(){
			 var url ="home"
			 this.axios.get(url).then(result => {
				 this.list=result.data.data
				  // console.log(this.list)
			 })
		 },
		//  跳转至详情页
		 goTo(item) {
			 this.$router.push(`/Detail/${item.href.split("=")[1]}`)
			 },
		 // 分类跳转
		 upToTshirt(val){
			this.$emit("upToTshirt",['sort',val])
		 },
		 // 轮播
		 handleChange(){     },
	 },//methods结束
	 created() {
		 this.load(); //首页信息加载
	 },
}
</script>
<style scoped>
.btn{
	position:absolute;
	width:32px;
	height:32px;
	left:50%;
	margin-left:50px;
	top:50%;
	margin-top:5px;
}
.btn>.mint-button{
	position:absolute;
	border-radius: 50%;
  width: 32px;
  height: 32px;
}
.btn-cart{
	position:absolute;
	margin-left:50%;
	left:-8px;
	margin-top:-8px;
	width:16px;
	height:16px;
}
.main {
  overflow: hidden;
}
  .search{
    position: fixed;
    width: 100%;
    z-index: 999;
  }
  /* 轮播图 */
  .carousel{
    height: 200px;
    width: 100%;
  }
  .hot{
    padding: 0 15px;
    padding-bottom: 10px;
  }
</style>