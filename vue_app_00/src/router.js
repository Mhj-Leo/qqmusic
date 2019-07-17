//router.js 引入路由
import Vue from 'vue'
import Router from 'vue-router'
//自定义组件
//1:引入Exam01.vue 组件 39
import Login from "./components/qq_music/Login"
import Reg from "./components/qq_music/Reg"
import Jump from "./views/Jump"
import indexm from "./views/indexm"
import MyFooter from "./components/qq_music/MyFooter"
import MyHeader from "./components/qq_music/MyHeader"
import Carousel from "./components/qq_music/carousel/Carousel"
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/Login',component:Login},
    {path:'/Reg',component:Reg},
    {path:'/Jump',component:Jump},
    {path:'/indexm',component:indexm},
    {path:'/MyFooter',component:MyFooter},
    {path:'/MyHeader',component:MyHeader},
    {path:'/Carousel',component:Carousel},
  ]
})
