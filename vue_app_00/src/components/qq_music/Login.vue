<template>
    <div id="container">
        <table>
            <tr>
                <td id="l1">登录</td>
                <td><a href="#">新用户注册</a></td>
            </tr>
            <tr>
                <td colspan="2">
                    用户名：<input id="uname" 
                    type="text" 
                    placeholder="请输入您的用户名"
                    v-model="uname">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    密码：<input id="upwd"
                    type="password" 
                    placeholder="请输入您的密码"
                    v-model="upwd">
                </td>
            </tr>
            <tr>
                <td><input type="checkbox">自动登录</td>
                <td><a href="#">忘记密码？</a></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button id="login" @click="login">登录</button>
                </td>
            </tr>
						<tr>
                <td colspan="2">
                    <img src="../../../public/img/login/weibo.png" alt="">
                    <img src="../../../public/img/login/qq.png" alt="">
                    <img src="../../../public/img/login/weixin.png" alt="">
                </td>
            </tr>
        </table>
    </div>
</template>
<<script>
export default {
    data(){
        return{
            uname:"",
            upwd:"",
        }
    },
    methods:{
        login(){
            //完成登录
            //1.获取用户名和密码
            var n=this.uname;
            var p=this.upwd;
            //2.创建一个正则表达式,字母数字下划线，3-12位
            var reg=/^[a-z0-9_]{3,12}$/i;
            //3.验证用户名，出错提示
            if(!reg.test(n)){
                alert("用户名格式不正确");
                return;
            }
            //4.验证密码，出错提示
            if(!reg.test(p)){
                alert("密码格式不正确");
                return;
            }
            //5.发送ajax请求 axios
            var url="login";//请求地址
            var obj={uname:n,upwd:p};
            this.axios.get(url,{params:obj}).then(result=>{
                console.log(result)
                //1.判断服务器返回结果
                //2.code:>0 跳转Home组件
                if(result.data.code>0){
                    alert("登录成功");
                }
                //3.创建Home.vue组件
                //4.code:<0 交互提示框
                else{
                    alert("用户信息错误");
                }
            })
        }
    },
}
</script>
<style scoped>
        #container{
            width:1900px;
            height:900px;
            background: url("../../../public/img/login/login_bg.jpg");
            position:relative;
        }
				#l1{
					font-size:25px;
				}
        #container>table{
            width:500px;
            height:400px;
            border:1px solid #fff;
            background:rgba(0,0,0,0.3);
            color:#fff;
            text-align: center;
            position:absolute;
            top:100px;
            left:900px;
        }
        #container>table td a{
            color:#fff;
            text-decoration: none;
        }
				#container>table img{
					width:30px;
					height:30px;
				}
        #uname,#upwd
        {
            width:300px;
            height:28px;
            border-radius: 5px;
        }
        #login{
            background: #27b0f6;
            width:300px;
            height:50px;
            border:none;
            color:#fff;
            font-size:18px;
			border-radius:25px;
        }
    </style>