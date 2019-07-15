<template>
        <div id="qq">
            <ul>
                <li><img src="../../../public/img/header_footer/logo.png"></li>
                <li><a href="javascript:;">发现音乐</a></li>
                <li><a href="javascript:;">随心听</a></li>
                <li><a href="javascript:;">客户端</a></li>
                <li><a href="javascript:;">VIP</a></li>
                <li><a href="javascript:;">音乐人</a></li>
                <li><a href="javascript:;">演出</a></li>
                <li>
                    <input type="text" placeholder="请输入歌名 歌手或专辑">    
                </li>
				<li id="login">
                    <a href="javascript:;">登录</a> 
                    <a href="javascript:;">注册</a></li>
            </ul>   
        </div>
</template>


<script >
    export default {
        data() {
            return {
                
            }
        },

}
</script>




<style scoped>
    #qq{
        width:1440px;
        height:90px;
        font-style:normal;
        margin:0 auto;
        line-height:80px;
    }
    #qq>ul{
        display:flex;
        justify-content:space-around;
        list-style:none;
    }
    #qq>ul>li a{
        font-size:25px;
        text-decoration:none;
        color:#999;
    }
    #qq>ul>li input{
				width:200px;
				height:30px;
		}
		#login>a{
				font-size:20px;
		}
        #login>a:nth-child(2):before{content:"|"}
		#login>a:hover{
				color:red;

		}
</style>