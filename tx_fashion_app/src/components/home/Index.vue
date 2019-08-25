<template>
<div class="main" >
    <!-- 顶部搜索栏 -->
   <div class="search">
     <header class="aui-navBar aui-navBar-fixed">
      <a href="javascript:;" class="aui-navBar-item">
        <i class="icon icon-return"></i>
      </a>
      <div class="aui-center">
        <div class="aui-search-box">
          <i class="icon icon-search"></i>
          <input type="text" placeholder="UFO日 劵后最高享9.2折">
        </div>
      </div>
      <a href="javascript:;" class="aui-navBar-item" >
        <i class="icon icon-news"></i>
      </a>
    </header>
   </div>
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
    <!-- 楼层二 -->
    <!-- <div class="aui-flex aui-flex-one">
			<a href="#" class="aui-flex-box">
				<div class="aui-six-text">
					<h2>新品到着</h2>
					<p>发现最新好物</p>
				</div>
				<div class="aui-six-img">
					<img src="../../../public/image/pd-001.png" alt="">
				</div>
			</a>
			<a href="#" class="aui-flex-box">
				<div class="aui-six-text">
					<h2>限定发货</h2>
					<p>发现最新好物</p>
				</div>
				<div class="aui-six-img">
					<img src="../../../public/image/pd-002.png" alt="">
				</div>
			</a>
			<a href="#" class="aui-flex-box">
				<div class="aui-six-text">
					<h2>拼团</h2>
					<p>发现最新好物</p>
				</div>
				<div class="aui-six-img">
					<img src="../../../public/image/pd-003.png" alt="">
				</div>
			</a>
			<a href="#" class="aui-flex-box">
				<div class="aui-six-text">
					<h2>0元抢购</h2>
					<p>发现最新好物</p>
				</div>
				<div class="aui-six-img">
					<img src="../../../public/image/pd-004.png" alt="">
				</div>
			</a>
		</div> -->
    <!-- 分类列表 T恤 寸衫 -->
    <div class="aui-border">
			<div class="aui-palace aui-palace-one">
				<a href="#" class="aui-palace-grid">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-001.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>T恤</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-002.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>衬衫</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-003.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>短裤</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-004.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>休闲裤</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-005.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>牛仔裤</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-006.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>运动鞋</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid">
					<div class="aui-palace-grid-icon">
						<img src="../../../public/image/ll-007.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>帽子</h2>
					</div>
				</a>
				<a href="#" class="aui-palace-grid">
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
    <!-- 穿搭 球鞋 -->
    <!-- <div class="aui-palace aui-palace-two">
			<a href="#" class="aui-palace-grid">
				<div class="aui-palace-grid-icon">
					<img src="../../../public/image/nav-001.png" alt="">
				</div>
			</a>
			<a href="#" class="aui-palace-grid">
				<div class="aui-palace-grid-icon">
					<img src="../../../public/image/nav-002.png" alt="">
				</div>
			</a>
			<a href="#" class="aui-palace-grid">
				<div class="aui-palace-grid-icon">
					<img src="../../../public/image/nav-003.png" alt="">
				</div>
			</a>
			<a href="#" class="aui-palace-grid">
				<div class="aui-palace-grid-icon">
					<img src="../../../public/image/nav-004.png" alt="">
				</div>
			</a>
		</div> -->
    <!-- 列表 -->
    <div class="hot" >
      <h2>热门系列</h2>
    </div>
    <div class="aui-tab" data-ydui-tab>
			<div class="tab-panel">
				<div class="tab-panel-item tab-active">
					<div class="aui-list-theme-box">
						<a href="javascript:;" class="aui-list-item">
							<div class="aui-list-theme-img">
								<img src="../../../public/image/pd-007.png" alt="">
							</div>
							<div class="aui-list-theme-message">
								<h3 class="aui-list-theme-title">智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面</h3>
								<h4>￥29.99 <i>89.99</i></h4>
							</div>
						</a>
						<a href="javascript:;" class="aui-list-item">
							<div class="aui-list-theme-img">
								<img src="../../../public/image/pd-008.png" alt="">
							</div>
							<div class="aui-list-theme-message">
								<h3 class="aui-list-theme-title">智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面</h3>
								<h4>￥29.99 <i>89.99</i></h4>
							</div>
						</a>
						<a href="javascript:;" class="aui-list-item">
							<div class="aui-list-theme-img">
								<img src="../../../public/image/pd-009.png" alt="">
							</div>
							<div class="aui-list-theme-message">
								<h3 class="aui-list-theme-title">智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面</h3>
								<h4>￥29.99 <i>89.99</i></h4>
							</div>
						</a>
						<a href="javascript:;" class="aui-list-item">
							<div class="aui-list-theme-img">
								<img src="../../../public/image/pd-010.png" alt="">
							</div>
							<div class="aui-list-theme-message">
								<h3 class="aui-list-theme-title">智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面</h3>
								<h4>￥29.99 <i>89.99</i></h4>
							</div>
						</a>
						<a href="javascript:;" class="aui-list-item">
							<div class="aui-list-theme-img">
								<img src="../../../public/image/pd-007.png" alt="">
							</div>
							<div class="aui-list-theme-message">
								<h3 class="aui-list-theme-title">智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面</h3>
								<h4>￥29.99 <i>89.99</i></h4>
							</div>
						</a>
						<a href="javascript:;" class="aui-list-item">
							<div class="aui-list-theme-img">
								<img src="../../../public/image/pd-008.png" alt="">
							</div>
							<div class="aui-list-theme-message">
								<h3 class="aui-list-theme-title">智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面</h3>
								<h4>￥29.99 <i>89.99</i></h4>
							</div>
						</a>
						<a href="javascript:;" class="aui-list-item">
							<div class="aui-list-theme-img">
								<img src="../../../public/image/pd-009.png" alt="">
							</div>
							<div class="aui-list-theme-message">
								<h3 class="aui-list-theme-title">智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面</h3>
								<h4>￥29.99 <i>89.99</i></h4>
							</div>
						</a>
						<a href="javascript:;" class="aui-list-item">
							<div class="aui-list-theme-img">
								<img src="../../../public/image/pd-010.png" alt="">
							</div>
							<div class="aui-list-theme-message">
								<h3 class="aui-list-theme-title">智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面</h3>
								<h4>￥29.99 <i>89.99</i></h4>
							</div>
						</a>
						<a href="javascript:;" class="aui-list-item">
							<div class="aui-list-theme-img">
								<img src="../../../public/image/pd-007.png" alt="">
							</div>
							<div class="aui-list-theme-message">
								<h3 class="aui-list-theme-title">智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面</h3>
								<h4>￥29.99 <i>89.99</i></h4>
							</div>
						</a>
						<a href="javascript:;" class="aui-list-item">
							<div class="aui-list-theme-img">
								<img src="../../../public/image/pd-008.png" alt="">
							</div>
							<div class="aui-list-theme-message">
								<h3 class="aui-list-theme-title">智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面</h3>
								<h4>￥29.99 <i>89.99</i></h4>
							</div>
						</a>
						<a href="javascript:;" class="aui-list-item">
							<div class="aui-list-theme-img">
								<img src="../../../public/image/pd-009.png" alt="">
							</div>
							<div class="aui-list-theme-message">
								<h3 class="aui-list-theme-title">智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面</h3>
								<h4>￥29.99 <i>89.99</i></h4>
							</div>
						</a>
						<a href="javascript:;" class="aui-list-item">
							<div class="aui-list-theme-img">
								<img src="../../../public/image/pd-010.png" alt="">
							</div>
							<div class="aui-list-theme-message">
								<h3 class="aui-list-theme-title">智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面</h3>
								<h4>￥29.99 <i>89.99</i></h4>
							</div>
						</a>
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
      search:""
    }
  },
  methods:{
    handleChange(){     },
  },
}
</script>
<style scoped>
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