<template>
<div id="container">
    <div id="head">
        <ul>
            <li><a href="javascript:;">推荐</a></li>
            <li><a href="javascript:;">歌单</a></li>
            <li><a href="javascript:;">歌手</a></li>
            <li><a href="javascript:;">榜单</a></li>
            <li><a href="javascript:;">分类</a></li>
            <li><a href="javascript:;">MV</a></li>
            <li><a href="javascript:;">U榜</a></li>
        </ul>
		<!--=============================================-->
    </div>
    <div class="all">
        <div class="left">
            <span class="title">热门歌单</span>
            <span>更多</span>
            <div id="gd">
				<div :data-index="index" v-for="(elem,index) of task" :key="index"
				@mouseenter="showBegin" @mouseleave="hideBegin">
					<img :src="elem.pic" alt="">
					<img :class="bClass[index]" src="../../public/img/index/begin.png" alt="">
					<p v-text="elem.title"></p>
				</div>
				</div>
        </div>
        <div class="right">
            <span class="title">分类听歌</span>
            <span>更多</span>
            <div class="fl">
            <a href="javascript:;">情歌</a>
            <a href="javascript:;">红歌</a>
            <a href="javascript:;">劲爆</a>
            <a href="javascript:;">天籁</a>
            <a href="javascript:;">经典老歌</a>
            <a href="javascript:;">欧美</a>
            <a href="javascript:;">网络歌曲</a>
            <a href="javascript:;">民歌</a>
            <a href="javascript:;">80后</a>
            <a href="javascript:;">儿歌</a> 
            <a href="javascript:;">伤感</a>
            <a href="javascript:;">安静</a>
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
					<a href="javascript:;">更多</a>
			</div>
			<div class="dis">
			<div class="xg">
				<h2>新歌榜</h2>
				<div>
					<div class="mx" v-for="(list,i) of task1" :key="i">
						<div class="num" v-text="list.pid"></div>
						<a href="javascript:;"><img :src="list.pic"/></a>
						<div>
							<div v-text="list.title"></div>
							<div v-text="list.singer"></div>
						</div>
					</div>
					<!--<div  class="mx">
						<div>01</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>-->
					<div class="query">
						<a href="javascript:;">查看完整榜单></a>
					</div>
				</div>
			</div>
			<div class="rg">
				<h2>热歌榜</h2>
				<div>
					<div class="mx" v-for="(list,i) of task2" :key="i">
						<div class="num" v-text="list.pid"></div>
						<a href="javascript:;"><img :src="list.pic"/></a>
						<div>
							<div v-text="list.title"></div>
							<div v-text="list.singer"></div>
						</div>
					</div>
					<!--<div  class="mx">
						<div>01</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>-->
					<div class="query">
						<a href="javascript:;">查看完整榜单></a>
					</div>
				</div>
			</div>
			<div class="wlg">
				<h2>网络歌榜</h2>
				<div>
					<div class="mx" v-for="(list,i) of task3" :key="i">
						<div class="num" v-text="list.pid"></div>
						<a href="javascript:;"><img :src="list.pic"/></a>
						<div>
							<div v-text="list.title"></div>
							<div v-text="list.singer"></div>
						</div>
					</div>
					<!--<div  class="mx">
						<div>01</div>
						<img src="http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60" />
						<div>
							<div>木偶人</div>
							<div>薛之谦</div>
						</div>
					</div>-->
					<div class="query">
						<a href="javascript:;">查看完整榜单></a>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="f5">
			<div class="ph">
					<div>热门歌手</div>
					<a href="javascript:;">更多</a>
			</div>
			<div class="gs">
				<!--<div class="rm">
					<img src="http://qukufile2.qianqian.com/data2/pic/140d09665d1c204efe00973c3e16282c/612757841/612757841.jpg@s_2,w_250,h_250" />
					<p>薛之谦</p>
				</div>-->
				<div class="rm" v-for="(xzq,i) of xzqs" :key="i">
					<div><a href="javascript:;"><img :src="xzq.imgUrl1" /></a></div>
					<p>{{xzq.xname}}</p>
				</div>
			</div>
		</div>
		<div class="f6">
			<div class="ph">
					<div>精选MV</div>
					<a href="javascript:;">更多</a>
			</div>
			<div class="jx">
				<img src="../../public/img/index/返回.png" />
				<img src="../../public/img/index/更多.png" />
				<div class="qy">
					<!--<div class="qx">
						<img src="http://business.cdn.qianqian.com/qianqian/pic/bos_client_1559299469ad147537931c9fd8ab1d9aeb53e9053a.jpg@s_2,w_556,h_314" />
						<p>永远同在(电影《千与千寻》主题曲)</p>
						<p>木村弓</p>
					</div>-->
					<div class="qx" v-for="(item,i) of xlist" :key="i">
						<a href="javascript:;">
							<img :src="item.imgUrl2" />
							<p>{{item.xdy}}</p>
							<p>{{item.xname}}</p>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="f7">
			<div class="ph">
					<div>热门活动</div>
					<a href="javascript:;">更多</a>
			</div>
			<div class="hd">
				<!--<div class="hx">
					<img src="http://business.cdn.qianqian.com/qianqian/pic/bos_client_15480660627d94bd0ab1c474c860a059c52b38f1fc.jpg@s_2,w_760,h_304" />
					<p>少年红星音乐计划</p>
				</div>-->
				<div class="hx" v-for="(item,i) of slist" :key="i">
					<a href="javascript:;">
						<img :src="item.imgUrl3" />
						<p>{{item.sname}}</p>
					</a>
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
			task:[],
			task1:[],
			task2:[],
			task3:[],
				xzqs:[
					{imgUrl1:"http://qukufile2.qianqian.com/data2/pic/140d09665d1c204efe00973c3e16282c/612757841/612757841.jpg@s_2,w_250,h_250",xname:"薛之谦"},
					{imgUrl1:"http://qukufile2.qianqian.com/data2/pic/d06f59a51303f15f86a801b0e0c64f76/580384071/580384071.jpg@s_2,w_250,h_250",xname:"周华健"},
					{imgUrl1:"http://qukufile2.qianqian.com/data2/pic/4e2f99725085e29afbe3004b34e3b3ea/566870515/566870515.jpg@s_2,w_250,h_250",xname:"龙梅子"},
					{imgUrl1:"http://qukufile2.qianqian.com/data2/pic/246708025/246708025.jpg@s_2,w_250,h_250",xname:"林俊杰"},
					{imgUrl1:"http://qukufile2.qianqian.com/data2/pic/0d8e3007d1cb42db293a80f12e9c4771/612860331/612860331.JPG@s_2,w_250,h_250",xname:"许嵩"},
					{imgUrl1:"http://qukufile2.qianqian.com/data2/pic/246708144/246708144.jpg@s_2,w_250,h_250",xname:"刘若英"},
									
				],
				xlist:[
					{imgUrl2:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_156275756788765ad8eaeacfb64a33d8317ee51f01.jpg@s_2,w_556,h_314",xdy:"为你着魔",xname:"信"},
					{imgUrl2:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_1562670860bf4ab6567298d1fd32c12bc46e8c3519.jpg@s_2,w_556,h_314",xdy:"灼人秘密",xname:"陈珊妮"},
					{imgUrl2:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_1562481394f080b581f3d7365c1aafc1dc44ca4941.jpg@s_2,w_556,h_314",xdy:"Glitter",xname:"Celeina"},
					{imgUrl2:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_1562239224cd761647fe2b70efdea824e4f569b45c.jpg@s_2,w_556,h_314",xdy:"夏日假期",xname:"曹格"}
				],
				slist:[
					{imgUrl3:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_15480660627d94bd0ab1c474c860a059c52b38f1fc.jpg@s_2,w_760,h_304",sname:"少年红星音乐计划"},
					{imgUrl3:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_15480662673c21cb33585df55ea59d202a537c0fc8.jpg@s_2,w_760,h_304",sname:"千千Nu创音乐榜"},
					{imgUrl3:"http://business0.qianqian.com/qianqian/pic/bos_client_1562233714b509fe25c14d368fe296bd00c6e4f4ef.jpg@s_2,w_760,h_304",sname:"蔡琴 · 2019「好新琴」演唱会成都站赠票活动"}
				],
				bClass:[
					{fade:true},
					{fade:true},
					{fade:true},
					{fade:true},
					{fade:true},
					{fade:true},
					{fade:true},
					{fade:true}
				],//刚运行时
    		}
    },
	methods:{
		showBegin(e){
				var idx=e.target.dataset.index;
				this.bClass[idx].fade=!this.bClass[idx].fade;
		},
		hideBegin(e){
				var idx=e.target.dataset.index;
				this.bClass[idx].fade=!this.bClass[idx].fade;
			
		},
	},
	created(){
      		//发送ajax请求 axios
            var url="index";//请求地址
            this.axios.get(url).then(result=>{
				this.task=result.data;
				console.log(result)
            })
			//发送ajax请求 axios
            var url="index1";//请求地址
            this.axios.get(url).then(result=>{
				this.task1=result.data;
				console.log(result)
            })
			//发送ajax请求 axios
            var url="index2";//请求地址
            this.axios.get(url).then(result=>{
				this.task2=result.data;
				console.log(result)
            })
			//发送ajax请求 axios
            var url="index3";//请求地址
            this.axios.get(url).then(result=>{
				this.task3=result.data;
				console.log(result)
            })
  },
}
</script>
<style scoped>
	.fade{
		display:none;
	}
    #head{
            width: 100%;
            height: 50px;
            background:#eee;
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
            margin:10px auto;
        }
        .title{
            font-size:20px;
        }
        .left{
            width: 800px;
            height: 350px;
            margin-top: 50px;
        }
        #gd{
            width: 700px;
            height: 330px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 20px;
        }
		#gd>div{width:150px;height:150px;}
        #gd>div {
			position:relative;
        }
		#gd>div p{
			font-size:10px;
			color:#333333;
			}
        #gd>div img:first-child{
            width: 150px;
            height: 150px;
			transition:all 0.8s;
        }
		#gd>div img:nth-child(2){
			width:40px;height:40px;
			position:absolute;
			top:55px;
			left:55px;
		}
		#gd>div img:first-child:hover{
			transform:scale(1.05);
		
		}
        #gd div:nth-child(5),#gd div:nth-child(6),#gd div:nth-child(7),#gd div:nth-child(8){
            margin-top:70px;
        }
        .right{
            width: 400px;
            height: 400px;
            margin-top:80px;
        }
		.right span:nth-child(2),.left span:nth-child(2){
			margin-left:20px;
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
        margin:0 auto;
		margin-top:150px;
    }
	a{
		text-decoration:none;
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
	.ph>a{
		float:left;
		line-height:22px;
		font-size:14px;
		color:#999;
		padding:16px 16px 0;
		box-sizing:border-box;
	}
	.xg,.rg,.wlg{
		width:32%;
		border:1px solid #5B9400;
	}
	.xg:not(:first-child),.rg:not(:first-child),.wlg:not(:first-child){
		margin-left:2%;
	}
	.xg>h2,.rg>h2,.wlg>h2{
		height:66px;
		color:#5B9400;
		font-size:25px;
		line-height:66px;
		padding-left:10px;
		margin-bottom:10px;
		background-color:rgba(91,148,0,.1);
		box-sizing:border-box;
	}
	.rg>h2{color:#db5800;background-color:rgba(219,88,0,.1);}
	.wlg>h2{color:#21bfa6;background-color:rgba(20,88,200,.1);}
	.xg>div>div,.rg>div>div,.wlg>div>div{
		width:100%;
		display:flex;
	}
	.mx{
		height:64px;
		padding:10px 10px;
		box-sizing:border-box;
	} 
	.dis{
		display:flex;
	}
	.mx>div:last-child>div:first-child{
		font-size:14px;
		color:#333;
	}
	.mx>div:last-child>div:last-child{
		font-size:15px;
		color:#999;
	}
	.num{
		font-size:20px;
		align-items:center;
		padding:10px 15px 0 15px;
		font-weight: 600;
		color:#999;
		box-sizing:border-box;
	}
	.three-num{
		color:#5B9400;
	}
	.mx>a>img{
		width:48px;
		height:48px;
		margin-right:20px;
	}
	.xg>div>.query{
		padding:10px 10px 30px;
		box-sizing:border-box;
	}
	.query>a{
		margin-left:70%;
		color:#999;
		font-size:14px;
	}
	.query>a:hover{
		color:#666;
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
	.rm>div{
		width:126px;
		height:126px;
		border-radius:50%;
	}
	.rm>div img{
		width:100%;
		border-radius:50%;
		transition: transform .5s ease;
	}
	.rm>div img:hover{
		transform:scale(1.1);
		transition:all .5s linear;
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
	.jx{
		width:100%;
		position:relative;
	}
	.jx>.qy{
		display:flex;
	}
	.jx>.qy>.qx{
		width:23%;
	}
	.jx>img{
		position:absolute;
		width:5%;
		height:60%;
		color:#666;
		top:10%;
	}
	.jx>img:nth-child(1){
		left:-80px;
	}
	.jx>img:nth-child(2){
		right:-80px;
	}
	.jx>.qy>.qx>a>img{
		width:100%;
		transition: transform .5s ease;
	}
	.jx>.qy>.qx>a>img:hover{
		transform:scale(1.05);
		transition:all .5s linear;
	}
	.jx>.qy>.qx>a>p:last-child{
		font-size:15px;
		color:#999;
	}
	.jx>.qy>.qx:not(:first-child){
		margin-left:2.6%;
	}
	.hd{
		width:100%;
		display:flex;
	}
	.hd>.hx{
		width:32%;
	}
	.hd>.hx>a>img{
		width:100%;
		transition: transform .5s ease;
	}
	.hd>.hx>a>img:hover{
		transform:scale(1.05);
		transition:all .5s linear;
	}
	.jx>.qy>.qx>a>p,
	.hd>.hx>a>p{
		font-size:14px;
		color:#333;
		text-align:center;
	}
	.hd>.hx:not(:first-child){
		margin-left:2%;
	}
</style>