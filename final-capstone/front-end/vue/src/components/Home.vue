<template>
  <div class="home">
    <div id="body">
    <h1>Popular Breweries</h1>
    <div class="brewery-list">
        <brewery-card class="card-space" v-for="brewery in breweries" v-bind:key="brewery.name" v-bind:brewery="brewery"/>
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
}
h1 {
    text-align: center;
}
div.brewery-list {
    display: flex;
    justify-content: space-around;
    text-align: center;
    align-items: baseline;
}
img {
    width: 125px
}
brewery-card.card-space {

}

</style>