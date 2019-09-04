<template>
<div>
	<search/>
	<div style="margin-top:10px"></div>
	<div class="aui-ad-img">
        <img src="../../../public/image/ad-004.png" alt="">
    </div>
  <div class="tab-panel">
		<div v-if="result==true" class="tab-panel-item tab-active">
			<div class="aui-list-theme-box">
				<div class="aui-list-item" v-for="(item,i) of plist" :key="i">
						<div class="aui-list-theme-img" >
							<!-- <router-link :to="item.href"> -->
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
		<div v-else>
			<h1 style="color:red">没有你要搜索的宝贝</h1>
			<h2>请再次搜索</h2>
		</div>
	</div>
</div>
</template>
<script>
export default {
  data() {
		return {
			plist:[],
			result:""
		}
	},
	props:["kw"], 
	methods: {
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
			 console.log(title)
			//  请求地址
			 var url="add/addshopcart"
			//  请求参数
			var obj={pid,title,price,pic,spec,color,href}
			this.axios.get(url,{params: obj}).then(res =>{
				if (res.data.code == -1) {
          this.$messagebox("消息", "请先登录再加入购物车").then(res => {
            this.$router.push("/Login");
            return;
          });
        } else{
          this.$toast("添加成功");
        } 
      });
		 },
		//  加载数据
		 load(){
			 var url ="/search"
			 this.axios.get(url,{params:{kw:this.kw}}).then(result => {
				//  console.log(result.data.data.length)
				 if(result.data.data.length==0){
					 this.result=false
				 }else{
					this.plist=result.data.data
					this.result=true
				 	// console.log(this.plist)
				 }
				 
			 })
		 },
		 //  跳转至详情页
			goTo(item) {
				this.$router.push(`/Detail/${item.href.split("=")[1]}`)
			},
	},
	// 首次加载数据
	created() {
		this.load()
	},
	watch: {
		"kw"(){ 
			this.load()  
		},
	},
}
</script>
<style scoped>

</style>
