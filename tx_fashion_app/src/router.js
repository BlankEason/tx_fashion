import Vue from 'vue'
import Router from 'vue-router'
import Home from "./components/Home.vue"


import Index from './components/home/Index.vue'
import Sort from './components/sort/Sort.vue'
import Community from './components/community/Community.vue'
import Find from './components/find/Find.vue'
import Me from './components/me/Me.vue'

Vue.use(Router)

export default new Router({
  routes: [
    { path: '/Home',component: Home},
    { path: '/',component: Home},
    { path: '/Index',component: Index},
    { path: '/Sort',component:Sort},
    { path: '/Find',component:Find},
    { path: '/Community',component:Community},
    { path: '/Me',component:Me},
  ]
})
