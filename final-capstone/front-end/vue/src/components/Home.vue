<template>
<div id="background">
    <!-- <img id="cle-sign-bg" src='../img/cle-sign-bg.jpg'/> -->
    <div class="home">
        <div id="body">
            <h1 class="heading">Welcome to Brew Finder!</h1>
            <h3 class="subheading">A beer-lover's favorite website</h3>
        <h1>Popular Breweries</h1>
        <div class="brewery-list">
            <brewery-card class="card-space" v-for="brewery in breweries" v-bind:key="brewery.name" v-bind:brewery="brewery"/>
        </div>
        </div>
    </div>
  </div>
</template>
<script>
import BreweryCard from './BreweryCard.vue'
import applicationServices from "../services/ApplicationServices"
export default {
    name: 'home',
    props: ["brewery"],
    components: { 
        BreweryCard,
    },
    data() {
        return {
            breweries: []
        }
    },
    created() {
        applicationServices.getBreweries().then(response => {
            this.breweries = response.data
    })
    }
}
</script>
<style scoped>
div.home {
    background: white;
    margin-left: 65px; margin-right: 65px;
    align-content: center;
}
div#body {
    margin-left: 25px; margin-right: 25px; margin-bottom: 50px;
    padding-bottom: 100px;
    text-align: center;
}
h1 {
    text-align: center;
}
h1.heading {
    padding-top:25px;
}
div.brewery-list {
    display: flex;
    justify-content: space-around;
    text-align: center;
    align-items: baseline;
}

div#background {
    background-image: url('../img/cle-sign-bg.jpg');
    position: relative;
    background-position:center;
    background-size: cover;
    background-attachment: fixed;
    padding-top: 1150px;
    top: -10px;
}

</style>