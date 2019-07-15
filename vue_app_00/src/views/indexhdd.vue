<template>
<div id="container">
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
                <a v-for="(elem,i) of imgList" :key="i" href="">
				<img :src="elem.imgUrl" alt=""><p v-text="elem.title"></p>
				</a>
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
            <a href=""><img src="../../public/img/index/store.png" alt=""><p>店铺</p></a>
            <a href=""><img src="../../public/img/index/heart.png" alt=""><p>甜蜜</p></a>
            <a href=""><img src="../../public/img/index/lamp.png" alt=""><p>工作</p></a>
            <a href=""><img src="../../public/img/index/travel.png" alt=""><p>旅游</p></a>
            <a href=""><img src="../../public/img/index/sofa.png" alt=""><p>在家</p></a>
            <a href=""><img src="../../public/img/index/sports.png" alt=""><p>运动</p></a>
            <a href=""><img src="../../public/img/index/wifi.png" alt=""><p>上网</p></a>
            <a href=""><img src="../../public/img/index/music.png" alt=""><p>听听</p></a>
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
					<img src="../../public/img/index/xzq.jpg" />
					<p>薛之谦</p>
				</div>
				<div class="rm">
					<img src="../../public/img/index/xzq.jpg" />
					<p>薛之谦</p>
				</div>
				<div class="rm">
					<img src="../../public/img/index/xzq.jpg" />
					<p>薛之谦</p>
				</div>
				<div class="rm">
					<img src="../../public/img/index/xzq.jpg" />
					<p>薛之谦</p>
				</div>
				<div class="rm">
					<img src="../../public/img/index/xzq.jpg" />
					<p>薛之谦</p>
				</div>
				<div class="rm">
					<img src="../../public/img/index/xzq.jpg" />
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
	</div>
</template>
<script>
export default {
    data() {
        return {
            imgList:[{imgUrl:"http://musicugc.qianqian.com/ugcdiy/pic/7f0147a86aa4b592ebfea178d121d14c.jpg",title:"chill&LA"},
			{imgUrl:"http://musicugc.qianqian.com/ugcdiy/pic/2cb0e25842cb462ef078a2269adf6809.jpg",title:"飞跃地球"},
			{imgUrl:"http://musicugc.qianqian.com/ugcdiy/pic/cdfc38047a8a7a095c92c91ffc1825e1.jpg",title:"文青"},
			{imgUrl:"http://musicugc.qianqian.com/ugcdiy/pic/f2533e1dcded12b3ccade7da424d2fcc.jpg",title:"我有一壶酒"},
			{imgUrl:"http://musicugc.qianqian.com/ugcdiy/pic/a894bd47f1f8406af55be6477dcf953a.jpg",title:"纯音乐"},
			{imgUrl:"http://musicugc.qianqian.com/ugcdiy/pic/ff4f363354ff8c9a579052e91c9d56fa.jpg",title:"华语经典 "},
			{imgUrl:"http://musicugc.qianqian.com/ugcdiy/pic/9043c6c4c3c31c31df79082d439be049.jpg",title:"抄作业必备电音"},
			{imgUrl:"http://musicugc.qianqian.com/ugcdiy/pic/9043c6c4c3c31c31df79082d439be049.jpg",title:"出道三十年精选"}]
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
        #head ul{
            width:70%;
            display: flex;
			flex-wrap:nowrap;
            justify-content: space-around;
            list-style:none;
            line-height: 50px;
			margin:0 auto;
        }
        #head>ul>li>a{
            text-decoration: none;
            color:black;
        }
		#head>ul>li>a:hover{color:red;}
        .all{
            width: 1100px;
            height:400px;
            display: flex;
            justify-content: space-around;
            margin:0 auto;
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
		#gd>a p{
			font-size:12px;
			color:#333333;
			}
        #gd>a img{
            width: 150px;
            height: 150px;
        }
		#gd>a img{
			transition:all 0.8s;
		}
		#gd>a img:hover{
			transform:scale(1.05);
		
		}
        #gd a:nth-child(5),#gd a:nth-child(6),#gd a:nth-child(7),#gd a:nth-child(8){
            margin-top:55px;
        }
        .right{
            width: 400px;
            height: 400px;
            margin-top:80px;
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
			color:#333333;
			font-size:12px;
            margin-top:5px;
        }
		.fl>a:hover{
			background-color:#eee;
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
		.dt>a{
			transition:all 0.8s;
			}
		.dt>a:hover{
			transform:scale(1.05);
		}
		.dt>a p{
			font-size:12px;
			margin-left:10px;
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
      background-image:url(../../public/img/index/返回.png);
    }
    #btn-right{
      right:20px;
      background-image:url(../../public/img/index/更多.png);
    }
    #btn-left:hover,#btn-right:hover{
      background-size:40px 70px
    }
    .container{
        width:1200px;
        margin:90px auto;
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