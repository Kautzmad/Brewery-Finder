<template>
<div class="breweries">
    <h1 class="heading">All Our Breweries</h1>
    <div class="brewery-list">
        <brewery-card class="card-space" v-for="brewery in breweries" v-bind:key="brewery.name" v-bind:brewery="brewery"/>
    </div>
</div>
</template>
<script>
import BreweryCard from "../components/BreweryCard"
import applicationServices from "../services/ApplicationServices"
export default {
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
div.brewery-list {
    display: flex;
    justify-content: space-around;
    text-align: center;
    align-items: baseline;
}
div.breweries {
    margin-top: 150px;
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
    color: black;
    text-align: center;
}
h1.heading {
    padding-top:25px;
}
</style>