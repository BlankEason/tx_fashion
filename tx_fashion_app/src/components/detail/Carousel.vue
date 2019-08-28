<template>
<div class="carousel">
        <mt-swipe @change="handleChange" :auto="3000" :show-indicators="true">
        <mt-swipe-item>
            <img src="../../../public/image/aj1.png" alt="">
        </mt-swipe-item>
        <mt-swipe-item>
            <img src="../../../public/image/aj2.png" alt="">
        </mt-swipe-item>
        <mt-swipe-item>
            <img src="../../../public/image/aj3.png" alt="">
        </mt-swipe-item>
        <mt-swipe-item>
            <img src="../../../public/image/aj4.png" alt="">
        </mt-swipe-item>
        </mt-swipe>
</div>
</template>
<script>
export default {
    data() {
        return {
            
        }
    },
    methods:{
    handleChange(){     },
  },
}
</script>
<style scoped>
.carousel{
    width: 100%;
    height: 317px;
}
  
</style>
