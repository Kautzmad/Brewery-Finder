<template>
    <div id="details">
        <div class="heading">
            <h1 class="brewery-name">{{brewery.name}}</h1>

            <div class="address">
                <h2><span v-if="brewery.address" >{{brewery.address}}, </span>{{brewery.city}}</h2>
            </div>

            <div class="website">
                <a v-bind:href="brewery.websiteUrl" target="_blank"><h3> {{brewery.websiteUrl}}</h3> </a>
            </div>  

            <img class="company-logo" v-bind:src="this.brewery.breweryLogoUrl"/>

            <div class="description">
                <h2 class="brewery-desc">{{brewery.description}}</h2>
                <h2 class="brewery-desc" v-if="!brewery.description">{{noDescReplacement}}</h2>
            </div>
        </div>
        
        <div class="subheading">
            <h3>Beers from {{brewery.name}}</h3>
        </div>

        <div id="beer-list">
            <beer-card class="card-space" v-for="beer in beers" v-bind:key="beer.name" v-bind:beer="beer"/>
        </div>
    </div>
</template>
<script>
import applicationServices from '../services/ApplicationServices'
import BeerCard from './BeerCard'
export default {
    name: "brewery-details",
    components: {
        BeerCard
    },
    data() {
        return {
            brewery: {
                id: 0,
                name: '',
                description: '',
                breweryLogoUrl: '',
                websiteUrl: ''
            },
            beers: [],
            noDescReplacement: "We can't find a description of this brewery, but we're sure they're really great!"

        } 
    },
    created() {
        applicationServices.getBreweryByID(this.$route.params.id).then(response => {
            this.brewery = response.data
        })
        applicationServices.getBeerByBreweryID(this.$route.params.id).then(response => {
            this.beers = response.data
        })
    }
}
</script>
<style scoped>
#details {
  padding: 0;
  margin-bottom: -10vh;
  box-sizing: border-box;
  
}

.heading {
    display: grid;
    grid-template-columns: auto auto;
    margin-top: 100px;
    grid-column-gap: 1vw;
    background-color: #C0C0C0;
    margin: 15vh 20vw 0 20vw;
    border-radius: 15px;
    box-shadow: inset 0px 0px 10px #000;
}

.subheading {
    color: 	#404040;
    font-size: 1.8rem;
    text-align: center;
    background-color: whitesmoke;
    background-position: center;
    margin: 8% 28% 5% 28%;
    border-radius: 15px;
    box-shadow: inset 0px 0px 10px #000;
}

img.company-logo {
    grid-column: 1/2;
    grid-row: 1/2;
    background-color: rgb(209, 209, 209);
    border-radius: 15px;
    max-width: 300px;
    justify-self: center;
    align-self: center;
    margin-top: 2vh;
}

.brewery-name {
    grid-column: 2/2;
    font-size: 3rem;
    grid-row: 1/1;
    
}

.website {
    grid-column: 2/2;
    grid-row: 2/2;
    margin-top: -1vh;
}

.address {
    grid-column: 2/2;
    grid-row: 2/2;
    font-size: 12px;
    color: black;
    margin-top: -5vh;
}

a:link {
    text-decoration: none;
    color: black;
    font-size: 12px;
}

a:hover {
    color: 	#696969;
}

.description {
    grid-column: 1/3;
    grid-row: 3/3;
    text-align: center;
    margin: 2vh 2vw 0 2vw;
}

span.beer-type {
    color:rgb(65, 65, 65);
}

#beer-list {
    padding-top: 15px;
    text-align: center;
}

.card-space {
    border-radius: 15px;
    margin-bottom: 10vh;
    box-shadow: inset 0px 0px 10px #000;
}

.card-space:nth-child(odd) {
    background-color: 	#C0C0C0;
}

.card-space:nth-child(even) {
    background-color: 	#F5F5F5;
}

.card-space:hover {
    background-color: rgb(139, 139, 139);
}
</style>