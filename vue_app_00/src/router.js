//router.js 引入路由
import Vue from 'vue'
import Router from 'vue-router'
//自定义组件
//1:引入Exam01.vue 组件 39
import Login from "./components/qq_music/Login"
import Reg from "./components/qq_music/Reg"
import Jump from "./components/qq_music/Jump"
import Music05 from "./components/qq_music/Music05"
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/Login',component:Login},
    {path:'/Reg',component:Reg},
    {path:'/Jump',component:Jump},
    {path:'/Music05',component:Music05},
  ]
})
