<template>
  <div class="search">
     <header class="aui-navBar aui-navBar-fixed">
       <!-- 首页图标 -->
      <div v-if="dis==true" class="aui-navBar-item">
        <img src="../assets/index.png" alt="" >
      </div>
      <!-- 显示返回图标 -->
      <div v-else class="aui-navBar-item">
        <img src="../assets/return.png" alt="" @click="toHome" >
      </div>
      <div class="aui-center">
				<!-- 搜索框 -->
        <div class="aui-search-box">
          <i class="icon icon-search" @click="search"></i>
          <input type="text" v-model="kw" @keyup.13="search" placeholder="Nike 男子">
        </div>
      </div>
      <a href="javascript:;" class="aui-navBar-item" >
        <i class="icon icon-news"></i>
      </a>
    </header>
   </div>
</template>
<script>
export default {
  data(){
    return{
      kw:"",
      dis:true,
    }
  },
  mounted(){
    this.kw=this.$route.params.kw;
  },
  watch:{
    "$route"(){
      this.kw=this.$route.params.kw;
    },
    "kw"(){
      if(this.kw!=null){
        this.dis=false;
      }
    },
  },
  methods:{
    search(){
      console.log("搜索")
      this.$router.push(`/searchlist/${this.kw}`);
    },
    // 搜索栏返回首页
    toHome(){
      this.$router.push("/Home")
      // console.log(11)
    },
  },
}
</script>
<style>
  
</style>