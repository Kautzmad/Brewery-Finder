<template>
<div class="beers">
    <h1 class="heading">All Our Beers</h1>
    <div class="beer-list">
        <beer-card class="card-space" v-for="beer in beers" v-bind:key="beer.name" v-bind:beer="beer"/>
    </div>
</div>
</template>
<script>
import BeerCard from "../components/BeerCard"
import applicationServices from "../services/ApplicationServices"
export default {
    props: ["beer"],
    components: { 
        BeerCard,
    },
    data() {
        return {
            beers: []
        }
    },
    created() {
        applicationServices.getBeers().then(response => {
            this.beers = response.data
    })
    }
}
</script>
<style scoped>
div.beer-list {
    display: flex;
    justify-content: space-around;
    text-align: center;
    align-items: baseline;
}
div.beers {
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