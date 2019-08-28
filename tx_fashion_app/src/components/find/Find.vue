<template>
  <div>
    <mt-navbar v-model="selected" fixed>
      <mt-tab-item id="1">关注</mt-tab-item>
      <mt-tab-item id="2">精选</mt-tab-item>
      <mt-tab-item id="3">推荐官</mt-tab-item>
      <mt-tab-item id="4">直播</mt-tab-item>
      <mt-tab-item id="5">视频</mt-tab-item>
    </mt-navbar>
    <div style="margin-top:55px;"></div>
    <!-- tab-container -->
    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="1">
        <interest/>
      </mt-tab-container-item>
      <mt-tab-container-item id="2">
        <chosen/>
      </mt-tab-container-item>
      <mt-tab-container-item id="3">
        <recommend/>
      </mt-tab-container-item>
      <mt-tab-container-item id="4">
        <live/>
      </mt-tab-container-item>
      <mt-tab-container-item id="5">
        <videos/>
      </mt-tab-container-item>
    </mt-tab-container>
  </div>
</template>

<script>
// 引入
import Interest from "./Interest";
import Chosen from "./Chosen";
import Recommend from "./Recommend";
import Live from "./Live";
import Videos from "./Videos";
import Head from "./Head";

export default {
  data(){
    return{
      selected:"3"
    }
  },
  components:{
    // 注册
    "interest":Interest,
    "chosen":Chosen,
    "recommend":Recommend,
    "live":Live,
    "videos":Videos,
    "head":Head

  }
}
</script>

<style scoped>
  
</style>