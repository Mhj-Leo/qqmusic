<template>
    <div>
        <MyHeader></MyHeader>
        <router-view/>
        <MyFooter></MyFooter>
    </div>
</template>
<script>
import MyHeader from "../components/qq_music/MyHeader"
import MyFooter from "../components/qq_music/MyFooter"
export default {
    data() {
        return {
            
        }
    },
    components:{
                MyHeader,
                MyFooter
            },
}
</script>