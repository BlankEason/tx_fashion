import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    tabShow:'home'
  },
  getters:{
    getTabShow(state) {
      return  state.tabShow
    }
  },
  mutations: {
    setTabShow (state,val) {
      state.tabShow = val
    }
  },
  actions: {

  }
})
