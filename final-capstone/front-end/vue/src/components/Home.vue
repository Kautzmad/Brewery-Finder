<template>
<div id="background">
    <div class="home">
        <div id="body">
            <!-- <div class="bg-image-list">
                <img src="../img/hops.jpg">
            </div> -->
            <h1 class="heading">Welcome to Brew Finder!</h1>
            <h3 class="subheading">A beer-lover's favorite website</h3>
        <h1>Popular Breweries</h1>
        <div class="loading" v-if="isLoading">
            <img src="../img/beerClink.gif" />
        </div>
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
            breweries: [],
            isLoading: true
        }
    },
    created() {
        applicationServices.getBreweries().then(response => {
            this.breweries = response.data
            this.isLoading = false;
    })
    }
}
</script>
<style scoped>
* {
  padding: 0px;
  margin-left: -10px;
  margin-right: -10px;
  box-sizing: border-box;
}

div.home {
    margin-left: 10px; margin-right: 10px;
    align-content: center;
}

/* .bg-image-list {
    background-image: url('../img/hops.jpg');
    position: relative;
    background-position:center;
    background-size: cover;
    filter: blur(2px);
    z-index: 2;
    margin-top: 200px;
} */

div#body {
    background-color: white;
    margin-left: 4px; margin-right: 4px; margin-bottom: 50px;
    margin-top: -100px;
    padding-bottom: 50px;
    text-align: center;
}
h1 {
    text-align: center;
    margin-top: 100px;
}

.brewery-list {
    display: grid;
    grid-gap: 10px 200px;
    align-self: start;
}

.card-space {
    margin-left: 10px; margin-right: 10px;
    align-content: center;
    margin-top: 120px;
}

.card-space:hover {
    color: #311D00;
    text-decoration: underline;
}

.card-space:visited {
    color: gray;
}

h1.heading {
    padding-top:25px;
}
div.brewery-list {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    text-align: center;
    align-items: baseline;
}

div.loading {
    text-align: center;
    float: center;
    z-index: 998;
}

div#background {
    background-image: url('../img/cle-sign-bg.jpg');
    position: relative;
    background-position:center;
    background-size: cover;
    background-attachment: fixed;
    padding-top: 760px;
    top: -10px;
}

</style>