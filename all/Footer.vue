<template>
    <div id="foot">
        <div id="foot-item">
        <div id="left">
            <p>下载客户端</p>
            <ul>
                <li><img src="../../assets/qqmusic/PC.png" alt="">PC版</li>
                <li><img src="../../assets/qqmusic/Mac.png" alt="">MAC版</li>
                <li><img src="../../assets/qqmusic/安卓.png" alt="">安卓版</li>
                <li><img src="../../assets/qqmusic/苹果.png" alt="">苹果版</li>
            </ul>
        </div>
        <div id="center">
            <p>关于千千音乐</p>
            <div>
                <a href="">意见反馈</a>
                <a href="">联系我们</a>
                <a href="">帮助中心</a>
                <a href="">资源开放平台</a>
                <a href="">太合音乐人</a>
            </div>
        </div>
        <div id="right">
            <p>关注千千音乐</p>
            <div><img src="../../assets/qqmusic/音乐.png" alt="">
                音乐随心听</div>
                <div>
                        <div><img src="../../assets/qqmusic/微博.png" alt="">
                            关注微博</div>
                        <div><img src="../../assets/qqmusic/微信.png" alt="">
                            微信公众号</div>
                </div>
        </div>
    </div>
    <div id="foot-text">
        <p>@2019 Qianqian 粤网文[2018]0902-359号</p>
        <p>粤公网安备 44030502002309号 增值电信业务经营许可证：粵B2-20180819</p>
        <p>违法和不良信息举报电话: 010-84369708 转8012 举报邮箱: jubao@taihe.com 反馈中心</p>
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
    #foot{
            width:100%;
            height:500px;
            background:#333;
        }
        #foot-item{
            width:1300px;
            display:flex;
            justify-content:space-around;
            margin-left:260px;
        }
        #left,#center,#right{margin-top:40px;}
        #left{
            width:350px;
        }
        #left ul{
            display:flex;
            justify-content: space-between;
            list-style: none;
        }
        #left ul>li{
            color:#939393;
            padding:20px;
            font-size:14px;
            }
        #left p{
            color:#fff;
            font-size:18px;
            margin-left:60px;
        }
        #left ul>li img{
            width:50px;
            height:50px;
        }
        #center{
            width:380px;
        }
        #center div{
            display:flex;
            justify-content: space-between;
            flex-wrap:wrap;
        }
        #center p{
            color:#fff;
            font-size:18px;
            margin-left:30px;
        }
        #center a{
            color:#939393;
            text-decoration: none;
            padding:18px;
            font-size:14px;
        }
        
        #right p{
            color:#fff;
            font-size:18px;
        }
        #right div {color:#939393;padding:10px;font-size:14px;}
        #right div:nth-child(3){
            display:flex;

        }
        #right div img{
            width:20px;
            height:20px;
        }
        #foot-text{
            text-align: center;
            margin-top:80px;
        }
        #foot-text p{
            color:#939393;
        }
</style>