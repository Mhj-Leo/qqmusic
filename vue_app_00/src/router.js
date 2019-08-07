//router.js 引入路由
import Vue from 'vue'
import Router from 'vue-router'
//自定义组件
//1:引入Exam01.vue 组件 39
import Home from "./views/Home"
import Login from "./components/qq_music/Login"
import Reg from "./components/qq_music/Reg"
import Jump from "./views/Jump"
import index from "./views/index"
import MyFooter from "./components/qq_music/MyFooter"
import MyHeader from "./components/qq_music/MyHeader"
import songSheet from "./components/qq_music/songSheet"
import Carousel from "./components/qq_music/carousel/Carousel"
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',component:Home,children:[
      {path:'/',component:index},
      {path:'/Jump',component:Jump},
      {path:'/songSheet',component:songSheet},
    ]},
    {path:'/Login',component:Login},
    {path:'/Reg',component:Reg},
    {path:'/MyFooter',component:MyFooter},
    {path:'/MyHeader',component:MyHeader},
    {path:'/Carousel',component:Carousel},
  ]
})
