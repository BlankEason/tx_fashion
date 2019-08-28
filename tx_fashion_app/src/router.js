import Vue from 'vue'
import Router from 'vue-router'
import Home from "./components/Home.vue"


import Index from './components/home/Index.vue'
import Sort from './components/sort/Sort.vue'
import Cart from './components/cart/Cart.vue'
import Find from './components/find/Find.vue'
import Me from './components/me/Me.vue'
import Login from './components/me/Login.vue'
import User from './components/me/User.vue'  //用户详情
import Detail from './components/detail/Detail.vue' 

Vue.use(Router)

export default new Router({
  routes: [
    { path: '/Home',component: Home},
    { path: '/',component: Home},
    { path: '/Index',component: Index},
    { path: '/Sort',component:Sort},
    { path: '/Find',component:Find},
    { path: '/Cart',component:Cart},
    { path: '/Me',component:Me},
    {path:'/User',component:User},
    {path:'/Login',component:Login},
    {path:'/Detail',component:Detail},
  ]
})
