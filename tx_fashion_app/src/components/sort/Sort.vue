<template>
  <div>
    
    <mt-navbar v-model="selected" fixed>
      <mt-tab-item id="1">男生</mt-tab-item>
      <mt-tab-item id="2">T恤</mt-tab-item>
      <mt-tab-item id="3">衬衫</mt-tab-item>
      <mt-tab-item id="4">短裤</mt-tab-item>
      <mt-tab-item id="5">休闲裤</mt-tab-item>
      <mt-tab-item id="6">牛仔裤</mt-tab-item>
    </mt-navbar>
    <div style="margin-top:55px;"></div>
    <!-- <div @click="actClick">1231232131</div> -->
    <!-- tab-container -->
    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="1">
        <!--男生 -->
        <men/>
      </mt-tab-container-item>
      <mt-tab-container-item id="2">
        <tshirt/>
      </mt-tab-container-item>
      <mt-tab-container-item id="3">
        <shirt/>
      </mt-tab-container-item>
      <mt-tab-container-item id="4">
        <short/>
      </mt-tab-container-item>
      <mt-tab-container-item id="5">
        <casualpants/>
      </mt-tab-container-item>
      <mt-tab-container-item id="6">
        <jeans/>
      </mt-tab-container-item>
    </mt-tab-container>
  </div>
</template>

<script>
// 引入
import Men from "./Men";
import Tshirt from "./Tshirt";
import Shirt from "./Shirt";
import Short from "./Short";
import CasualPants from "./CasualPants";
import Jeans from "./Jeans";

export default {
  data(){
    return{
      selected:"1"
    }
  },
  props:['active'],
  components:{
    // 注册
    // "sichuan":Sichuan,
    "men":Men,
    "tshirt":Tshirt,
    "shirt":Shirt,
    "short":Short,
    "casualpants":CasualPants,
    "jeans":Jeans,
  },
  watch:{
    active() {
      this.selected = this.active;
    }
  },
  methods:{
    // actClick() { test
    //   console.log(this.active)
    //   console.log(this.selected)
    // }
  }
}
</script>

<style scoped>
  
</style>