<template>
    <div class="container">
        <div id="songSheet">
            <div v-for="(elem,i) of songList" :key="i">
                <p>我的歌单</p>
                <img :src="elem.img_url">
                <p v-text="elem.songName"></p>
            </div>
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return{
               songList:[]
            }
        },
        created(){
            //发送ajax请求 axios
            var url="songSheet";//请求地址
            this.axios.get(url).then(result=>{
				this.songList=result.data.data;
                console.log(result.data.data)
            })
        },
}
</script>
<style scoped>
   .container{
       width:70%;
       height:600px;
       background:#eee;
       margin:10px auto;
       margin-bottom:20px;
   }
   #songSheet{
       width:600px;
       height:500px;
       display:flex;
       justify-content:space-around;
       flex-wrap:wrap;
       margin:0 auto;
   }
   #songSheet div{
       width:180px;
       height:180px;
   }
   #songSheet div img{
       width:110px;
       height:110px;
   }
   #songSheet div p:first-child{
       font-size:30px;
       margin-bottom:30px;
   }
   #songSheet div p:nth-child(3){
       font-size:18px;
       margin-top:30px;
   }
</style>