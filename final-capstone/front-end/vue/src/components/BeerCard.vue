<template>
<div id="card" @mouseover="showBeer = true" @mouseleave="showBeer = false">
    <div v-if="showBeer == false">
        <img>
    </div>
    <div class="middle" v-else-if="showBeer != false">
        <img v-if="this.beer.imgUrl == 'no img'" v-bind:src="this.brewery.breweryLogoUrl" alt="Avatar" class="image" >
        <img v-if="this.beer.imgUrl != 'no img'" v-bind:src="this.beer.imgUrl"  alt="Avatar" class="image">
    </div>
    <router-link v-bind:to="{ name: 'beer-details', params:{id: this.beer.id} }">
        <h4 class="brewery-name" > {{this.brewery.name}} </h4>
        <h3>{{this.beer.name}} - <span class="beer-type"> {{this.beer.type}} </span></h3>
        <h5> {{this.beer.abv}} ABV <span v-if="beer.ibu"> - {{this.beer.ibu}} IBU </span></h5>
        <h4 class="beer-info" v-if="beer.info != 'No description'" > {{this.beer.info}} </h4>
        <h4 class="beer-info" v-if="beer.info == 'No description'" > {{noDesc}} </h4>
    </router-link>
    <div class="tooltip" v-if="this.$store.state.userId === this.brewery.usedId">
        <button type="submit" class="brewerButton" v-on:click.prevent="deleteBeer(this.beer.id)"
                onclick="window.location.reload();" >
                <span class="tooltiptext">Delete Beer</span>
                <img src="../assets/delete-icon.png" id="deleteButton"/>
        </button>
    </div>
    <div class="tooltip" v-if="this.$store.state.userId === this.brewery.usedId">
        <button type="submit" class="brewerButton">
            <span class="tooltiptext">Update Beer</span>
            <img src="../assets/edit-icon.png" id="editButton"/>
        </button>
    </div>
</div>
</template>
<script>
import applicationServices from '../services/ApplicationServices'
export default {
    props: ["beer"], 
    data() {
        return { 
            showBeer: false,
            brewery: {
                id: 0,
                name: '',
                description: '',
                breweryLogoUrl: '',
                website_url: ''
            },
            noDesc: 'We can\'t find any info on this beer, but we\'re sure it\'s great!'
        }
    },
    methods:{
        updateBeer(beer){
            applicationServices.updateBeer(beer).then(response=>{
            if(response.status === 201){
            alert("Beer successfully updated");
            }  
            })
        },
        deleteBeer(id){
            if(confirm(`Are you sure you want to delete this beer?`)){
            applicationServices.deleteBeer(id).then(response =>{
                if(response.status === 201){
                    alert("Beer deleted")
                }
            })
        }
     }
    },
    created() {
        applicationServices.getBreweryByID(this.beer.breweryId).then(response => {
            this.brewery = response.data
        })
    }
}
</script>
<style scoped>

img.company-logo {
    width: 200px;
}
div#card {
    margin-left: 150px; margin-right: 150px;
   
}
span.beer-type {
    color:rgb(65, 65, 65);
}
.brewery-name {
    color:rgb(65, 65, 65);
    margin-bottom: -10px; padding-top: 25px;
}
.beer-info {
    padding-bottom: 35px;
}
h5 {
    margin-top: -10px; margin-bottom: -5px;
}
a {
    text-decoration: none;
    color: inherit;
}
a:hover {
    background-color: gray; 
    box-shadow: inset 0px 0px 10px 10px #000;

}

.container {
  position: relative;
  width: 50%;
}

.image {
  width: 17%;
  height: 17%;
  align-items: center;
}

.overlay {
  transition: 1s ease;
  background-color: #008CBA;
}

.container:hover .overlay {
  opacity: 1;
}

div.card:nth-child(even) {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    text-align: center;
    align-items: baseline;
    background-color: rgb(221, 221, 221);
}

#deleteButton, #editButton{
    border-radius: 50%;
    width: 5%;
    height: 5%;
}

/* Tooltip container */
.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black; /* If you want dots under the hoverable text */
}

/* Tooltip text */
.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  padding: 5px 0;
  border-radius: 6px;
 
  /* Position the tooltip text - see examples below! */
  position: absolute;
  z-index: 1;
}

/* Show the tooltip text when you mouse over the tooltip container */
.tooltip:hover .tooltiptext {
  visibility: visible;
}
</style>

