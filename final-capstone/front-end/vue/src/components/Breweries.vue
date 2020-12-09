<template>
<div id="background">
<div class="breweries">
    <h1 class="heading">All Our Breweries</h1>
    <div class="loading" v-if="isLoading">
            <img src="../img/beerClink.gif" />
    </div>
    <div class="brewery-list">
        <brewery-card class="card-space" v-for="brewery in breweries" v-bind:key="brewery.name" v-bind:brewery="brewery"/>
    </div>
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
            breweries: [],
            isLoading: true,
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

div.brewery-list {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    text-align: center;
    align-items: baseline;
}
div.breweries {
    background: white;
    margin-left: 10px; margin-right: 10px;
    align-content: center;
    margin-top: 220px;
}

div.loading {
    text-align: center;
    float: center;
    z-index: 998;
}


h1.heading {
    padding-top: 40px;
    padding-bottom: 40px;
    color: black;
    text-align: center;
}
div#background {
    background-image: url('../img/cle-sign-bg.jpg');
    position: relative;
    background-position:center;
    background-size: cover;
    background-attachment: fixed;
    padding-bottom: 150px;
    top: -10px;
}
.card-space {
    margin-left: 5px; margin-right: 5px;
    color: black;
    text-decoration: none;
}

.card-space:hover {
    color: #311D00;
    text-decoration: underline;
}

.card-space:visited {
    color: gray;
}

div#background {
    background-image: url('../img/cle-sign-bg.jpg');
    position: relative;
    background-position:center;
    background-size: cover;
    background-attachment: fixed;
    padding-top: 400px;
    top: -10px;
}
.brewery-list {
    display: grid;
    grid-gap: 10px 200px;
    align-self: start;
}

</style>