<template>
  <div id="demo" class="carousel" :style="{width:innerWidth+'px'}" @mouseenter="stop" @mouseleave="start">
      <!--1.轮播图片-->
    <div class="carousel-inner" :class="ulClass" :style="ulStyle">
      <div v-for="(img,i) of imgs" :key="i" class="carousel-item" :style="{width:innerWidth+'px'}">
        <router-link :to="img.to" :title="img.title">
          <img :src="img.src" :style="{width:innerWidth+'px'}"/>
        </router-link>
        <router-link :to="img.to" v-text="img.title"></router-link>
      </div>
      <div class="carousel-item" :style="{width:innerWidth+'px'}">
        <router-link :to="imgs[0].to" :title="imgs[0].title">
          <img :src="imgs[0].src" :style="{width:innerWidth+'px'}"/>
        </router-link>
        <router-link :to="imgs[0].to" v-text="imgs[0].title"></router-link>
      </div>
    </div>
    <!--2.左右箭头-->
    <a href="javascript:;" @click="move(1)" class="carousel-control-next">
        <span class="carousel-control-next-icon"></span>
    </a>
    <a href="javascript:;" @click="move(-1)" class="carousel-control-prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <!--3.轮播指示符-->
    <ul class="carousel-indicators">
        <li v-for="(img,idx) of imgs" :key="idx" :class="idx==i?'active':''" @click="moveTo(idx)"></li>
    </ul>
  </div>
</template>
<script>
export default {
  data(){
    return {
      innerWidth:window.innerWidth,
      ulClass:{ hasTrans:true },
      i:0,
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
        { 
          src:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_1563159912178ec2e899ee6fa9041b58ce111555e2.jpg@s_2,w_750,h_300",
          title:"曾轶可另类创作再出击 全新单曲《Truly》真心上线",
          to:"javascript:;"
        },
        { 
          src:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_15631992653df037df34a95305ce066c2ff337ddde.jpg@s_2,w_750,h_300",
          title:"16层新专辑先行单曲上线，精巧器乐铺排搭建诡异《失落园》",
          to:"javascript:;"
        },
        /*
        { 
          src:"/images/carousel_item/carousel-7.jpg",
          title:"标题如歌” | OBi《爱你》温柔上线",
          to:"javascript:;"
        },
        { 
          src:"/images/carousel_item/carousel-8.jpg",
          title:"李大奔的硬核浪漫：如果不是你，随便谁都一样",
          to:"javascript:;"
        }
        */
      ],
      canClick:true,
      timer:null
    }
  },
  created(){
    window.addEventListener("resize",()=>{
      this.innerWidth=window.innerWidth;
    })
    this.start();
  },
  methods:{
    stop(){
      clearInterval(this.timer);
    },
    start(){
      this.timer=setInterval(()=>{
        this.move(1);
      },3000)
    },
    move(i){
      if(this.canClick){
        this.canClick=false;
        if(i==-1&&this.i==0){
          this.ulClass.hasTrans=false;
          setTimeout(()=>{
            this.i=this.imgs.length;
            setTimeout(()=>{
              this.ulClass.hasTrans=true;
              this.i+=i;
              setTimeout(()=>{
                this.canClick=true;
              },200)
            },50)
          },50)
        }else if(i==1&&this.i==this.imgs.length-1){
          this.i+=i;
          setTimeout(()=>{
            this.ulClass.hasTrans=false;
            setTimeout(()=>{
              this.i=0;
              setTimeout(()=>{
                this.ulClass.hasTrans=true;
                setTimeout(()=>{
                  this.canClick=true;
                })
              },50)
            },50)
          },200)
        }else{
          this.i+=i;
          setTimeout(()=>{
            this.canClick=true;
          },300)
        }
      }
    },
    moveTo(i){
      if(this.canClick){
        this.i=i;
        this.canClick=false;
        setTimeout(()=>{
          this.canClick=true;
        },300)
      }
    }
  },
  computed:{
    ulStyle(){
      var width=this.innerWidth*(this.imgs.length+1)+"px";
      var marginLeft=-this.i*this.innerWidth+"px";  
      return { width, marginLeft }
    }
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
   section>.carousel>.carousel-inner.hasTrans{
     transition:all .2s linear;
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


