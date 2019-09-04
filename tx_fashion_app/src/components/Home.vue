<template>
   <div class="page-tabbar">
    <div class="page-wrap">
      <mt-tab-container class="page-tabbar-container" v-model="active">
          <mt-tab-container-item id="home">
             <index  @upToTshirt="changeTabbar($event)"/>
          </mt-tab-container-item>
          <mt-tab-container-item id="sort">
            <sort :active="change"/>
          </mt-tab-container-item>
          <mt-tab-container-item id="find">
                <find/>  
          </mt-tab-container-item>
           <mt-tab-container-item id="community">
               <cart :fresh="cartFresh" @returnFresh="changeFresh"/> 
          </mt-tab-container-item>
          <mt-tab-container-item id="me">
           <me/>
          </mt-tab-container-item>          
        </mt-tab-container>
      <!-- 底部导航条 -->
      <mt-tabbar v-model="active" fixed>
        <mt-tab-item id="home" @click.native="changeState(0)">
         <tabbaricon
          :selectedImage="require('../assets/home_a.png')"
          :normalImage="require('../assets/home.png')"
          :focused="currentIndex[0].isSelect">
         </tabbaricon>
         首页   
        </mt-tab-item>
        <mt-tab-item id="sort" @click.native="changeState(1)">
         <tabbaricon
         :normalImage="require('../assets/sort.png')"
         :selectedImage="require('../assets/sort_a.png')"
         :focused="currentIndex[1].isSelect">
         </tabbaricon>
         分类
        </mt-tab-item>
        <!-- <mt-tab-item id="find" @click.native="changeState(2)">
          <tabbaricon
          :normalImage="require('../assets/find.png')"
          :selectedImage="require('../assets/find_a.png')"
          :focused="currentIndex[2].isSelect"> 
          </tabbaricon>
          发现
        </mt-tab-item> -->
        <mt-tab-item id="community" @click.native="changeState(3)">
          <tabbaricon
          :normalImage="require('../assets/community.png')"
          :selectedImage="require('../assets/community_a.png')"
          :focused="currentIndex[3].isSelect"> 
          </tabbaricon>
            购物车
        </mt-tab-item>
        <mt-tab-item id="me" @click.native="changeState(4)">
          <tabbaricon
           :normalImage="require('../assets/me.png')"
           :selectedImage="require('../assets/me_a.png')"
           :focused="currentIndex[4].isSelect"
          ></tabbaricon>
          我的
        </mt-tab-item>
      </mt-tabbar>
    </div>
   </div>
</template>
<script>
//引入组件
import TabBarIcon from "./TabBarIcon.vue"
import Index from "./home/Index.vue"
import Sort from "./sort/Sort.vue"
import Find from "./find/Find.vue"
import Cart from "./cart/Cart.vue"
import Me from "./me/Me.vue"

export default {
  data(){
    return {
      //面板中显示子组件id
      active:"home",
      //创建数组保存图片焦点状态
      currentIndex:[
        {isSelect:true},
        {isSelect:false},
        {isSelect:false},
        {isSelect:false},
        {isSelect:false}
      ],
      change:'1',
      turnBack:'',
      cartFresh:0,
    }
  },
  methods: {
    changeState(n){
      //函数功能:将当前参数下标
      //对应数组值修改true其它修改false
      //1:创建循环,循环数组中内容
      for(var i=0;i<this.currentIndex.length;i++){
       //2:判断如果循环下标与n相等 20
       if(n==i){
        //3:当前下标元素true 10:22
        this.currentIndex[i].isSelect=true;
       }else{
        //4:其它元素修改false
        this.currentIndex[i].isSelect=false;
       }
      }
    },
    changeTabbar(val){
      this.change = val[1]
       this.active = val[0];
     },
     //点详情页购物车 回到购物车
     getTurnBack() {
        this.turnBack=this.$store.getters.getTabShow;
        for(var item of this.currentIndex) {
          item.isSelect = false;
        }
        // this.currentIndex[3].isSelect = true;
     },
     changeFresh() {
       this.cartFresh = 0;
     }
  },
  components:{
    "tabbaricon":TabBarIcon,
    "index": Index,
    "sort" : Sort,
    "cart" : Cart,
    "find" : Find,
    "me":Me
  },
  mounted(){
    this.getTurnBack();//点详情页购物车 回到购物车
  },
  watch: {
    //点详情页购物车 回到购物车
    turnBack() {
      this.active = this.turnBack;
    },
    // 监控页面到购物车部分
    active() {
      if(this.active == "community") {
        this.cartFresh = 1;
      }
    }
  },
}
</script>
<style  scoped>
/*最外层父元素Home.vue*/
.page-tabbar{
  overflow: hidden;/*溢出隐藏*/
}
/*修改 tabbar 默认文字颜色*/
.mint-tabbar>.mint-tab-item{
  color:#999999;
}
/*修改默认tab选中文字样式*/
.mint-tabbar>.mint-tab-item.is-selected{
  background-color: transparent;
  color:#45c018;
}
.page-wrap{
  overflow:auto;/*溢出显示轮动条*/
  padding-bottom: 60px;
}
</style>


