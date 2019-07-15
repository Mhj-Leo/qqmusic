<template>
    <div id="head">
        <ul>
            <li><a href="">推荐</a></li>
            <li><a href="">歌单</a></li>
            <li><a href="">歌手</a></li>
            <li><a href="">榜单</a></li>
            <li><a href="">分类</a></li>
            <li><a href="">MV</a></li>
            <li><a href="">U榜</a></li>
        </ul>
    </div>
    
    <div class="all">
        <div class="left">
            <span class="title">热门歌单</span>
            <span>更多</span>
            <div id="gd">
                <a href=""><img src="img/1.jpg" alt=""><p>chill&LA</p></a>
                <a href=""><img src="img/2.jpg" alt=""><p>飞跃地球</p></a>
                <a href=""><img src="img/3.jpg" alt=""><p>文青</p></a>
                <a href=""><img src="img/4.jpg" alt=""><p>我有一壶酒</p></a>
                <a href=""><img src="img/5.jpg" alt=""><p>纯音乐</p></a>
                <a href=""><img src="img/6.jpg" alt=""><p>华语经典</p></a>
                <a href=""><img src="img/7.jpg" alt=""><p>抄作业必备电音</p></a>
                <a href=""><img src="img/cf.png" alt=""><p>长峰出道三十年精选</p></a>
            </div>
        </div>

        <div class="right">
            <span class="title">分类听歌</span>
            <span>更多</span>
            <div class="fl">
            <a href="">情歌</a>
            <a href="">红歌</a>
            <a href="">劲爆</a>
            <a href="">天籁</a>
            <a href="">经典老歌</a>
            <a href="">欧美</a>
            <a href="">网络歌曲</a>
            <a href="">民歌</a>
            <a href="">80后</a>
            <a href="">儿歌</a> 
            <a href="">伤感</a>
            <a href="">安静</a>
            </div>
            
            <span class="title">推荐电台</span>
            <span>更多</span>
            <div class="dt">
            <a href=""><img src="img/dp.png" alt=""><p>店铺</p></a>
            <a href=""><img src="img/heart.png" alt=""><p>甜蜜</p></a>
            <a href=""><img src="img/lamp.png" alt=""><p>工作</p></a>
            <a href=""><img src="img/relax.png" alt="">旅游</a>
            <a href=""><img src="img/sofa.png" alt="">在家</a>
            <a href=""><img src="img/sports.png" alt="">放松</a>
            <a href=""><img src="img/wifi.png" alt="">上网</a>
            <a href=""><img src="img/music.png" alt="">听听</a>
            </div>
        </div>
    </div>
    <main id="main">
            <div id="banner">
              <div id="btn-left"></div>
              <ul id="ul-imgs" class="transition" style="width:5000px; margin-left:0px;">
                <li><a href="javascript:;"><img src="image/carousel_item/carousel-1.jpg"></a></li>
                <li><a href="javascript:;"><img src="image/carousel_item/carousel-2.jpg"></a></li>
                <li><a href="javascript:;"><img src="image/carousel_item/carousel-3.jpg"></a></li>
                <li><a href="javascript:;"><img src="image/carousel_item/carousel-4.jpg"></a></li>
                <!--注意！最后li个数要比实际图片张数多1，最后一个li里的img是重复第一张li的图片-->
                <li><a href="javascript:;"><img src="image/carousel_item/carousel-1.jpg"></a></li>
              </ul>
              <ul id="ul-idxs">
                <!--虽然li个数比实际图片张数多1，但小圆点的个数不必多1-->
                <li class="active"></li>
                <li></li>
                <li></li>
                <li></li>
              </ul>
              <div id="btn-right"></div>
            </div>
          </main>
          <script>
                var i=0;
                var LIWIDTH=1000;
                var DURATION=500;
                var LICOUNT=4;
                var ulImgs=document.getElementById("ul-imgs");
                var ulIdxs=document.getElementById("ul-idxs");
                var lis=ulIdxs.children;
                function moveTo(to){
                  if(to==undefined){
                    to=i+1;
                  }
                  if(i==0){
                    if(to>i){
                      ulImgs.className="transition";
                    }else{
                      ulImgs.className="";
                      ulImgs.style.marginLeft=-LIWIDTH*LICOUNT+"px";
                      setTimeout(function(){
                        moveTo(LICOUNT-1);
                      },100);
                      return;
                    }
                  }
                  i=to;
                  ulImgs.style.marginLeft=-i*LIWIDTH+"px";
                  for(var li of lis){
                    li.className=""
                  }
                  console.log(i);
                  if(i==LICOUNT){
                    i=0;
                    setTimeout(function(){
                      ulImgs.className="";
                      ulImgs.style.marginLeft=0;
                    },DURATION)
                  }
                  lis[i].className="active";
                }
              </script>
              <script>
                var btnLeft=document.getElementById("btn-left");
                var btnRight=document.getElementById("btn-right");
                var canClick=true;
                btnRight.onclick=function(){
                  move(1)
                }
                function move(n){
                  if(canClick){
                    console.log(i+n);
                    moveTo(i+n);
                    canClick=false;
                    setTimeout(function(){
                      canClick=true;
                    },DURATION+100);
                  }
                }
                btnLeft.onclick=function(){
                  move(-1);
                }
              </script>
              <script>
                var interval=3000;
                var timer=setInterval(function(){
                  moveTo()
                },3000);
                var banner=document.getElementById("banner");
                banner.onmouseover=function(){
                  clearInterval(timer);
                }
                banner.onmouseout=function(){
                  timer=setInterval(function(){
                    moveTo()
                  },3000);
                }
              </script>
              <script>
                var ulIdxs=document.getElementById("ul-idxs");
                var canClick=true;
                ulIdxs.onclick=function(e){
                  if(canClick){
                    var li=e.target;
                    if(li.nodeName=="LI"){
                      if(li.className!=="active"){
                        for(var i=0;i<lis.length;i++){
                          if(lis[i]==li){
                            break;
                          }
                        }
                        moveTo(i);
                        setTimeout(function(){
                          canClick=true;
                        },DURATION);
                      }
                    }
                  }
                }
              </script>
          
          <div class="f6">
                <div class="ph">
                        <div>精选MV</div>
                        <p>更多</p>
                </div>
                <div class="jx">
                    <div class="qyqx">
                        <img src="img/2.jpg" />
                        <p>《摩羯座》</p>
                        <p>周杰伦</p>
                    </div>
                    <div class="qyqx">
                            <img src="img/2.jpg" />
                            <p>《摩羯座》</p>
                            <p>周杰伦</p>
                        </div>
                        <div class="qyqx">
                            <img src="img/2.jpg" />
                            <p>《摩羯座》</p>
                            <p>周杰伦</p>
                        </div>
                        <div class="qyqx">
                            <p>《摩羯座》</p>
                            <p>周杰伦</p>
                        </div>
                        <div class="qyqx">
                            <img src="img/2.jpg" />
                            <p>《摩羯座》</p>
                            <p>周杰伦</p>
                        </div>
                </div>
            </div>
            <div class="container">
		<div class="f4">
			<div class="ph">
					<div>排行榜</div>
					<p>更多</p>
			</div>
			<div class="dis">
			<div class="xg">
				<h2>新歌榜</h2>
				<div>
					<div  class="mx">
						<div>01</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mx">
						<div>02</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mx">
						<div>03</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mxh">
						<div>04</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mxh">
						<div>05</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mxh">
						<div>06</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="query">
						查看完整榜单>
					</div>
				</div>
			</div>
			<div class="xg">
				<h2>新歌榜</h2>
				<div>
					<div  class="mx">
						<div>01</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mx">
						<div>02</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mx">
						<div>03</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mxh">
						<div>04</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mxh">
						<div>05</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mxh">
						<div>06</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="query">
						查看完整榜单>
					</div>
				</div>
			</div>
			<div class="xg">
				<h2>新歌榜</h2>
				<div>
					<div  class="mx">
						<div>01</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mx">
						<div>02</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mx">
						<div>03</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mxh">
						<div>04</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mxh">
						<div>05</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="mxh">
						<div>06</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>
					<div class="query">
						查看完整榜单>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="f5">
			<div class="ph">
					<div>热门歌手</div>
					<p>更多</p>
			</div>
			<div class="gs">
				<div class="rm">
					<img src="../../assets/xzq.jpg" />
					<p>薛之谦</p>
				</div>
				<div class="rm">
					<img src="../../assets/xzq.jpg" />
					<p>薛之谦</p>
				</div>
				<div class="rm">
					<img src="../../assets/xzq.jpg" />
					<p>薛之谦</p>
				</div>
				<div class="rm">
					<img src="../../assets/xzq.jpg" />
					<p>薛之谦</p>
				</div>
				<div class="rm">
					<img src="../../assets/xzq.jpg" />
					<p>薛之谦</p>
				</div>
				<div class="rm">
					<img src="../../assets/xzq.jpg" />
					<p>薛之谦</p>
				</div>
			</div>
		</div>
		<div class="f6">
			<div class="ph">
					<div>精选MV</div>
					<p>更多</p>
			</div>
			<div class="jx">
				<div class="qyqx">
					<img src="http://business.cdn.qianqian.com/qianqian/pic/bos_client_1559299469ad147537931c9fd8ab1d9aeb53e9053a.jpg@s_2,w_556,h_314" />
					<p>永远同在(电影《千与千寻》主题曲)</p>
					<p>木村弓</p>
				</div>
				<div class="qyqx">
					<img src="http://business.cdn.qianqian.com/qianqian/pic/bos_client_1559299469ad147537931c9fd8ab1d9aeb53e9053a.jpg@s_2,w_556,h_314" />
					<p>永远同在(电影《千与千寻》主题曲)</p>
					<p>木村弓</p>
				</div>
				<div class="qyqx">
					<img src="http://business.cdn.qianqian.com/qianqian/pic/bos_client_1559299469ad147537931c9fd8ab1d9aeb53e9053a.jpg@s_2,w_556,h_314" />
					<p>永远同在(电影《千与千寻》主题曲)</p>
					<p>木村弓</p>
				</div>
				<div class="qyqx">
					<img src="http://business.cdn.qianqian.com/qianqian/pic/bos_client_1559299469ad147537931c9fd8ab1d9aeb53e9053a.jpg@s_2,w_556,h_314" />
					<p>永远同在(电影《千与千寻》主题曲)</p>
					<p>木村弓</p>
				</div>
			</div>
		</div>
		<div class="f7">
			<div class="ph">
					<div>热门活动</div>
					<p>更多</p>
			</div>
			<div class="hd">
				<div class="hx">
					<img src="http://business.cdn.qianqian.com/qianqian/pic/bos_client_15480660627d94bd0ab1c474c860a059c52b38f1fc.jpg@s_2,w_760,h_304" />
					<p>少年红星音乐计划</p>
				</div>
				<div class="hx">
					<img src="http://business.cdn.qianqian.com/qianqian/pic/bos_client_15480660627d94bd0ab1c474c860a059c52b38f1fc.jpg@s_2,w_760,h_304" />
					<p>少年红星音乐计划</p>
				</div>
				<div class="hx">
					<img src="http://business.cdn.qianqian.com/qianqian/pic/bos_client_15480660627d94bd0ab1c474c860a059c52b38f1fc.jpg@s_2,w_760,h_304" />
					<p>少年红星音乐计划</p>
				</div>
			</div>
		</div>
	</div>
</template>
<script>
export default {
    data() {
        return {
            
        }
    },
}
</script>
<style scoped>
    #head{
            width: 100%;
            height: 50px;
            background:#ccc;
        }
        ul{
            width:1000px;
            display: flex;
            justify-content: space-around;
            list-style:none;
            line-height: 50px;
            margin-left:380px;
        }

        ul>li>a{
            text-decoration: none;
            color:black;
        }
        .all{
            width: 1100px;
            height:400px;
            display: flex;
            justify-content: space-around;
            margin-left:350px;
        }
        .title{
            font-size:20px;
        }
        .left{
            width: 650px;
            height: 350px;
            margin-top: 50px;
        }
        #gd{
            width: 630px;
            height: 330px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 20px;
        }
        #gd>a{
            text-decoration: none;
            color: gray;
        }
        #gd>a img{
            width: 150px;
            height: 150px;
        }
        #gd a:nth-child(5),:nth-child(6),:nth-child(7),:nth-child(8){
            margin-top:55px;
        }
        .right{
            width: 400px;
            height: 400px;
            margin-top:50px;
        }
        .fl{
            display: flex;
            justify-content: space-around;
            width: 350px;
            height: 150px;
            flex-wrap: wrap;
            margin-bottom:25px;
        }
        .fl>a{
            display: block;
            width: 80px;
            height: 35px;
            border:1px solid black ; 
            border-radius: 40px;
            text-decoration: none;
            text-align: center;
            line-height: 35px;
            color: black;
            margin-top:5px;
            padding:0px;
        }
        .dt{
            width: 350px;
            height: 95px;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .dt>a{
            display: block;
            width: 45px;
            height: 45px;
            border:1px solid black;
            border-radius: 50%;
            text-decoration: none;
            margin-left: 10px;
            margin: 20px;
            color:grey;
        }
        .dt>a img{
            width: 30px;
            height: 30px;
            margin:7px 0px 8px 8px;
        }
        *{margin:0; padding:0;}
    #main{
      width:1100px;
      margin:100px;
      margin-top: 150px;
      margin-left:375px;
    }
    #banner{
      width:1000px;
      overflow:hidden;
      position:relative;
    }
    #ul-imgs{
      list-style:none;
    }
    #ul-imgs.transition{
      transition:all .5s linear;
    }
    #ul-imgs>li{
      width:1000px;
      float:left;
    }
    #ul-imgs img{
      width:1000px;
    }
    #ul-idxs{
      width:100px;
      margin:0 auto;
      list-style:none;
      position:absolute;
      bottom:25px;
      left:50%;
      margin-left:-50px;
    }
    #ul-idxs>li{
      float:left;
      width:10px; height:10px;
      background-color:#fff;
      border-radius:5px;
      margin:0 5px;
      cursor:pointer;
    }
    #ul-idxs>li.active{
      background-color:blue;
    }
    #btn-left,#btn-right{
      width:60px;
      height:100%;
      position:absolute;
      top:0;
      background-repeat:no-repeat;
      background-position:center;
      cursor:pointer;
    }
    #btn-left{
      left:20px;
      background-image:url(image/carousel_item/left_ar.png);
    }
    #btn-right{
      right:20px;
      background-image:url(image/carousel_item/right_ar.png);
    }
    #btn-left:hover,#btn-right:hover{
      background-size:40px 70px
    }
    .container{
        width:1200px;
        margin:0 auto;
    }
	.f4,.f5,.f6,.f7{
		width:100%;
		margin-bottom:60px;
	}
	.ph{
		height:38px;
		margin-bottom:20px;
	}
	.ph>div{
		float:left;
		font-size:24px;
		line-height:38px;
	}
	.ph>p{
		float:left;
		line-height:22px;
		font-size:14px;
		color:#999;
		padding:16px 16px 0;
		box-sizing:border-box;
	}
	.xg{
		width:32%;
		border:1px solid #5B9400;
	}
	.xg:not(:first-child){
		margin-left:2%;
	}
	.xg>h2{
		height:66px;
		color:#5B9400;
		line-height:66px;
		padding-left:8px;
		margin-bottom:10px;
		background-color:rgba(91,148,0,.1);
		box-sizing:border-box;
	}
	.xg>div>div{
		width:100%;
		display:flex;
	}
	.mx,.mxh{
		height:64px;
		padding:8px 10px;
		box-sizing:border-box;
	} 
	.mx>div:last-child>div:first-child,
	.mxh>div:last-child>div:first-child{
		font-size:14px;
		color:#333;
	}
	.mx>div:last-child>div:last-child,
	.mxh>div:last-child>div:last-child{
		font-size:15px;
		color:#999;
	}
	.mx>div:first-child{
		font-size:20px;
		align-items:center;
		padding:8px 15px 0 15px;
		color:#5B9400;
		box-sizing:border-box;
	}
	.mxh>div:first-child{
		font-size:20px;
		align-items:center;
		padding:8px 15px 0 15px;
		color:#777;
		box-sizing:border-box;
	}
	.mx>img,
	.mxh>img{
		width:48px;
		height:48px;
		margin-right:20px;
	}
	.query{
		padding-left:60%;
		padding-bottom:15px;
		font-size:14px;
		color:#999;
		box-sizing:border-box;
	}
	.dis{
		display:flex;
	}
	.gs{
		width:100%;
		display:flex;
		padding:0 1.5%;
		box-sizing:border-box;
	}
	.rm{
		width:11%;
	}
	.rm>img{
		width:100%;
		border-radius:50%;
	}
	.rm:not(:first-child){
		margin-left:7%;
	}
	.rm>p{
		text-align:center;
		margin-left:5%;
		margin-top:8px;
		font-size:15px;
		color:#666;
	}
	.jx,.hd{
		width:100%;
		display:flex;
	}
	.jx>.qyqx{
		width:23%;
	}
	.jx>.qyqx>img{
		width:100%;
	}
	.jx>.qyqx>p:last-child{
		font-size:15px;
		color:#999;
	}
	.jx>.qyqx:not(:first-child){
		margin-left:2.6%;
	}
	.hd>.hx{
		width:32%;
	}
	.hd>.hx>img{
		width:100%;
	}
	.jx>.qyqx>p,
	.hd>.hx>p{
		font-size:14px;
		color:#333;
		text-align:center;
	}
	.hd>.hx:not(:first-child){
		margin-left:2%;
	}
</style>