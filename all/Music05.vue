<template>
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
					<div class="mx" v-for="(list,i) of lists" :key="i">
						<div class="num">{{list.lid}}</div>
						<a href="javascript:;"><img :src="list.imgUrl"/></a>
						<div>
							<div>{{list.lmusic}}</div>
							<div>{{list.lname}}</div>
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
			<div class="xg">
				<h2>新歌榜</h2>
				<div>
					<div class="mx" v-for="(list,i) of lists" :key="i">
						<div class="num">{{list.lid}}</div>
						<a href="javascript:;"><img :src="list.imgUrl"/></a>
						<div>
							<div>{{list.lmusic}}</div>
							<div>{{list.lname}}</div>
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
			<div class="xg">
				<h2>新歌榜</h2>
				<div>
					<div class="mx" v-for="(list,i) of lists" :key="i">
						<div class="num">{{list.lid}}</div>
						<a href="javascript:;"><img :src="list.imgUrl"/></a>
						<div>
							<div>{{list.lmusic}}</div>
							<div>{{list.lname}}</div>
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
				<img src="../../assets/left.png" />
				<img src="../../assets/right.png" />
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
</template>

<script>
    export default {
        data(){
            return {
				lists:[
					{lid:"01",imgUrl:"http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60",lmusic:"木偶人",lname:"薛之谦"},
					{lid:"02",imgUrl:"http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60",lmusic:"木偶人",lname:"薛之谦"},
					{lid:"03",imgUrl:"http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60",lmusic:"木偶人",lname:"薛之谦"},
					{lid:"04",imgUrl:"http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60",lmusic:"木偶人",lname:"薛之谦"},
					{lid:"05",imgUrl:"http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60",lmusic:"木偶人",lname:"薛之谦"},
					{lid:"06",imgUrl:"http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60",lmusic:"木偶人",lname:"薛之谦"}
				],
				xzqs:[
					{imgUrl1:"http://qukufile2.qianqian.com/data2/pic/140d09665d1c204efe00973c3e16282c/612757841/612757841.jpg@s_2,w_250,h_250",xname:"薛之谦"},
					{imgUrl1:"http://qukufile2.qianqian.com/data2/pic/140d09665d1c204efe00973c3e16282c/612757841/612757841.jpg@s_2,w_250,h_250",xname:"薛之谦"},
					{imgUrl1:"http://qukufile2.qianqian.com/data2/pic/140d09665d1c204efe00973c3e16282c/612757841/612757841.jpg@s_2,w_250,h_250",xname:"薛之谦"},
					{imgUrl1:"http://qukufile2.qianqian.com/data2/pic/140d09665d1c204efe00973c3e16282c/612757841/612757841.jpg@s_2,w_250,h_250",xname:"薛之谦"},
					{imgUrl1:"http://qukufile2.qianqian.com/data2/pic/140d09665d1c204efe00973c3e16282c/612757841/612757841.jpg@s_2,w_250,h_250",xname:"薛之谦"},
					{imgUrl1:"http://qukufile2.qianqian.com/data2/pic/140d09665d1c204efe00973c3e16282c/612757841/612757841.jpg@s_2,w_250,h_250",xname:"薛之谦"},
									
				],
				xlist:[
					{imgUrl2:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_1559299469ad147537931c9fd8ab1d9aeb53e9053a.jpg@s_2,w_556,h_314",xdy:"永远同在(电影《千与千寻》主题曲)",xname:"木村弓"},
					{imgUrl2:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_1559299469ad147537931c9fd8ab1d9aeb53e9053a.jpg@s_2,w_556,h_314",xdy:"永远同在(电影《千与千寻》主题曲)",xname:"木村弓"},
					{imgUrl2:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_1559299469ad147537931c9fd8ab1d9aeb53e9053a.jpg@s_2,w_556,h_314",xdy:"永远同在(电影《千与千寻》主题曲)",xname:"木村弓"},
					{imgUrl2:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_1559299469ad147537931c9fd8ab1d9aeb53e9053a.jpg@s_2,w_556,h_314",xdy:"永远同在(电影《千与千寻》主题曲)",xname:"木村弓"}
				],
				slist:[
					{imgUrl3:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_15480660627d94bd0ab1c474c860a059c52b38f1fc.jpg@s_2,w_760,h_304",sname:"少年红星音乐计划"},
					{imgUrl3:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_15480660627d94bd0ab1c474c860a059c52b38f1fc.jpg@s_2,w_760,h_304",sname:"少年红星音乐计划"},
					{imgUrl3:"http://business.cdn.qianqian.com/qianqian/pic/bos_client_15480660627d94bd0ab1c474c860a059c52b38f1fc.jpg@s_2,w_760,h_304",sname:"少年红星音乐计划"}
				]
            }
        },
		created(){
			
		},
		methods:{
			
		}
    }
</script>

<style scoped>
    .container{
        width:1200px;
        margin:0 auto;
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
		padding-left:10px;
		margin-bottom:10px;
		background-color:rgba(91,148,0,.1);
		box-sizing:border-box;
	}
	.xg>div>div{
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