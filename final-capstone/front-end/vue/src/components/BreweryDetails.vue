<template>
    <div id="details">
        <h1>{{brewery.name}}</h1>
        <h2>{{brewery.description}}</h2>
    </div>
</template>
<script>
import applicationServices from '../services/ApplicationServices'
export default {
    data() {
        return {
            brewery: []
        }
       
    },
    created() {
        applicationServices.getBreweryByID(this.$route.params.id).then(response => {
            this.brewery = response.data
        })
    }
}
</script>
<style scoped>
div#details {
    padding-top: 500px;
    background-color: white;
}
</style>