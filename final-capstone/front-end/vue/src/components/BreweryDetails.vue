<template>
<div id="background">
    <div id="details">
        <h1>{{brewery.name}}</h1>
        <img class="company-logo" v-bind:src="this.brewery.breweryLogoUrl"/>
        <h3>{{brewery.address}}, {{brewery.city}}</h3>
        <h2>{{brewery.description}}</h2>
    </div>
</div>
</template>
<script>
import applicationServices from '../services/ApplicationServices'
export default {
    name: "brewery-details",
    data() {
        return {
            brewery: {
                id: 0,
                name: '',
                description: '',
                breweryLogoUrl: ''
            }
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
    padding-top: 150px;
    text-align: center;
    background-color: white;
    margin-left: 65px; margin-right: 65px;
}
div#background {
    background-image: url('../img/cle-sign-bg.jpg');
    position: relative;
    background-position:center;
    background-size: cover;
    background-attachment: fixed;

}
img.company-logo {
    width: 200px;
}
</style>