<template>
  <div class="tab-panel">
				<div class="tab-panel-item tab-active">
					<div class="aui-list-theme-box">
						<div class="aui-list-item" v-for="(item,i) of list" :key="i">
								<div class="aui-list-theme-img">
									<img :src="`http://127.0.0.1:3000/`+item.pic" >
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
</template>
<script>
export default {
  data() {
		return {
			list:[]
		}
	},
	 //  加入购物车
		 addshoppcart(e){
			//  console.log(111)
			//  获取数据
			 var pid=e.target.dataset.pid
			 var title=e.target.dataset.title
			 var price=e.target.dataset.price
			 var pic=e.target.dataset.pic
			 var spec=e.target.dataset.spec
			 var color=e.target.dataset.color
			 var href=e.target.dataset.href
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
	methods: {
		// 加入购物车
		//  加入购物车
		 addshoppcart(){
			 console.log(111)
		 },
		 load(){
			 var url ="home"
			 this.axios.get(url).then(result => {
				 this.list=result.data.data
				//  console.log(this.list)
			 })
		 },
	},
	created() {
		this.load()
	},
}
</script>
<style scoped>

</style>
