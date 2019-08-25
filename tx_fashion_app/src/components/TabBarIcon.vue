<template>
<div>
    <!-- <h1>TabBarIcon.vue</h1> -->
    <img slot="icon" :src="focused?selectedImage:normalImage" class="imgstyle">
    <!-- 1.显示一张图片 -->
        <!-- 如果当前是选中的状态 显示选中图片 -->
        <!-- 如果当前默认的状态 显示默认图片 -->
</div>
</template>
<script>
export default {
    props:{
        focused:false,//默认
        selectedImage:{default:""},
        normalImage:{default:""}
    },
    methods: {
        
    },
}
</script>
<style scoped>
.imgstyle{
    display: block;
    margin-left: 29px;
    width: 25px;
    height: 25px;
    margin-bottom: 5px;
}
</style>
