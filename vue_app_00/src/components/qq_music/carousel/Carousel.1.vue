<template>
  <div id="demo" class="carousel" :style="{width:innerWidth+'px'}">
      <!--1.轮播图片-->
    <div class="carousel-inner">
      <div class="carousel-item">
        <a href="javascript:;" title="《Ghost Mane》| STARR J与恶魔一起住在Dark Castle">
          <img src="/images/carousel_item/carousel-1.jpg" :style="{width:innerWidth+'px'}"/>
        </a>
        <a to="javascript:;">《Ghost Mane》| STARR J与恶魔一起住在Dark Castle</a>
      </div>
    </div>
    <!--2.左右箭头-->
    <a href="javascript:;" class="carousel-control-next">
        <span class="carousel-control-next-icon"></span>
    </a>
    <a href="javascript:;" class="carousel-control-prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <!--3.轮播指示符-->
    <ul class="carousel-indicators">
        <li class="active"></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
  </div>
</template>
<script>
export default {
  data(){
    return {
      //在初始时，设置默认宽度为当前窗口的宽度
      innerWidth:window.innerWidth,
      imgs:[
        {
          src:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_1547466371f5a8864429456f49e904ab0430b8dc17.jpg@s_2,w_750,h_300",
          title:"《Ghost Mane》| STARR J与恶魔一起住在Dark Castle",
          to:"javascript:;"
        },
        { 
          src:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_1562813869ec66a9354c83cfc4961554f8ad439d4e.jpg@s_2,w_750,h_300",
          title:"赐我们一首比“情歌而已”更值得唱的歌 声音碎片第三支预热单曲《送流水》首发",
          to:"javascript:;"
        },
        { 
          src:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_1562840320531821f6439a9798a0f637ead1a16c7a.jpg@s_2,w_750,h_300",
          title:"我眼里只有一个3号他永远昂着头 | 黄旭全新单曲《低位》致敬韦德",
          to:"javascript:;"
        },
        { 
          src:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_15631992653df037df34a95305ce066c2ff337ddde.jpg@s_2,w_750,h_300",
          title:"彭坦春晓携女率性玩音乐 Modern Sky Kids厂牌汇聚亲子市场新能量",
          to:"javascript:;"
        },
        /*{ 
          src:"/images/carousel_item/carousel-5.jpg",
          title:"曾轶可另类创作再出击 全新单曲《Truly》真心上线",
          to:"javascript:;"
        },
        { 
          src:"/images/carousel_item/carousel-6.jpg",
          title:"16层新专辑先行单曲上线，精巧器乐铺排搭建诡异《失落园》",
          to:"javascript:;"
        },
        { 
          src:"/images/carousel_item/carousel-7.jpg",
          title:"标题如歌” | OBi《爱你》温柔上线",
          to:"javascript:;"
        },
        { 
          src:"/images/carousel_item/carousel-8.jpg",
          title:"李大奔的硬核浪漫：如果不是你，随便谁都一样",
          to:"javascript:;"
        }*/
      ]
    }
  },
  created(){
    window.addEventListener("resize",()=>{
      this.innerWidth=window.innerWidth;
    })
  },
  methods:{
    
  },
  computed:{
    
  }
}
</script>
<style scoped>
/* section>#carousel>.carousel-inner>div>a{
    display:block;
  } */
  section>.carousel{
    margin-top:60px;
    overflow:hidden;
  }
  section>.carousel:after{
    content:"";
    display:block;
    clear:both;
  }
  section>.carousel>.carousel-inner>.carousel-item{
    display:block;
    float:left;
  }
  section>.carousel>.carousel-inner>.carousel-item>a:last-child{
    display:block;
    height:50px;
    color:#fff;
    text-align:center;
    font-size:15px;
    line-height:50px;
    text-decoration:none;
    background-color:#f68cc6;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(2)>a:last-child{
    background-color:#fa9c77;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(3)>a:last-child{
    background-color:#ba4b5d;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(4)>a:last-child{
    background-color:#02c0f0f5;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(5)>a:last-child{
    background-color:#bc76dd;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(6)>a:last-child{
    background-color:#539788;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(7)>a:last-child{
    background-color:#c67ee79b;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(8)>a:last-child{
    background-color:#2f49079b;
  }

  /*重写指示符的样式*/
  .carousel-indicators{
    bottom:130px;
  }
  .carousel-indicators li{
    width:15px;height:15px;
    background-color:#fff;
    margin-left:6px;
    margin-right:6px;
    border-radius: 50%;
    top:60px;
  }
  .carousel-indicators>li:hover, .carousel-indicators>li.active{
    transform:scale(1.3)
  }
  .carousel-indicators>li:first-child{
    background-color:#f68cc6;
  }
  .carousel-indicators>li:nth-child(2){
    background-color:#fa9c77;
  }
  .carousel-indicators>li:nth-child(3){
    background-color:#ba4b5d;
  }
  .carousel-indicators>li:nth-child(4){
    background-color:#02c0f0f5;
  }
  .carousel-indicators>li:nth-child(5){
    background-color:#bc76dd;
  }
  .carousel-indicators>li:nth-child(6){
    background-color:#539788;
  }
  .carousel-indicators>li:nth-child(7){
    background-color:#c67ee79b;
  }
  .carousel-indicators>li:nth-child(8){
    background-color:#2f49079b;
  }
  /*重写左右箭头的样式*/
  .carousel-control-prev,
  .carousel-control-next{
    width:40px;height:100px;
    background-color:rgba(95, 95, 92, 0.3);
    top:20%;
    margin-left:40px;
    border-radius:0.25rem;
  }
  .carousel-control-next{
    margin-right:40px;
  }
</style>


