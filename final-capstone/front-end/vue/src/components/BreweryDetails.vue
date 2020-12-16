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

                <div class="tooltip" v-if="this.$store.state.user.id === this.brewery.userId || this.$store.state.user.id === 2">
                <button type="submit" class="brewerButton" id="show-update-brewery-form"
                v-on:click.prevent="showUpdateBreweryForm = true" v-if="showUpdateBreweryForm === false">
                <span class="tooltiptext">Update Brewery Form</span>
                <img src="../assets/edit-icon.png" id="editButton"/>
                </button>

            </div>
    </div>
            
    <div class="updateBreweryForm" v-if="showUpdateBreweryForm === true">

        <h1>Update Brewery Form</h1>

        <form>
            
            <label for="ABV">Brewery Name:</label>
            <input type="text" id="name"  v-model="updatedBrewery.name" required/>

            <label for="IBU">Brewery Address:</label>
            <input id="address" type="text" v-model="updatedBrewery.address" required/>

            <label for="Type">City:</label>
            <input id="city" type="text" v-model="updatedBrewery.city" required/>

            <label for="Type">Zipcode:</label>
            <input type="text" id="Info" v-model="updatedBrewery.zipcode" required/> 

            <label for="Type">Description:</label>
            <textarea id="description" v-model="updatedBrewery.description" required/>
            <br>
            <label for="logo-url">Logo URL:</label>
            <input id="logo-url" type="text" v-model="updatedBrewery.breweryLogoUrl"/>

            <label for="web-url">Website URL:</label>
            <input id="web-url" type="text" v-model="updatedBrewery.websiteUrl"/>

            <label for="hours">Hours of Operation:</label>
            <input id="hours" type="text" v-model="updatedBrewery.hours"/>

            <label for="lat">Lattitude:</label>
            <input id="lat" type="text" v-model="updatedBrewery.lat"/>

            <label for="long">Longitude:</label>
            <input id="long" type="text" v-model="updatedBrewery.lon"/>

            <div  class="show-form-button">
                <button
                    id="show-form-button"
                    href="#"
                    v-on:click.prevent="showUpdateBreweryForm = false"
                    v-if="showUpdateBreweryForm === true"
                    >
                    Hide Form
                </button>
            </div>

            <div class="submit-update-button">
                <button type="submit" id="submitButton" onclick="window.location.reload();"
                 v-on:click.prevent="updateBrewery(updatedBrewery)">Submit Brewery Update</button>
            </div>

        </form>

    </div>

    </div>

        <div class="subheading">
            <h3>Beers from {{brewery.name}}</h3>
        </div>
        <!-- <div id="show-form">
                    <img src='../assets/add-icon.png' id="show-form-button"
                    v-on:click.prevent="showForm = true"
                    v-if="showForm === false && this.$store.state.user.id === this.brewery.userId"/>
        </div> -->
<div id="beer-list">
        <div class="tooltip show-form" v-if="this.$store.state.user.id === this.brewery.userId  || this.$store.state.user.id === 2">

        <button class="brewerButton" id="show-form-button"
                v-on:click.prevent="showForm = true"
                    v-if="showForm === false && this.$store.state.user.id === this.brewery.userId  || this.$store.state.user.id === 2">
            <span class="tooltiptext">Add New Beer</span>
            <img src="../assets/add-icon.png" id="addButton"/>
        </button>

    </div>
        <div class="newBeerForm" v-if="showForm === true">
            <h1 class="brewery-name">New Beer Form</h1>
        <form>
            <label for="beerName">Name</label>
            <input type="text" id="beerName" placeholder="Name of the beer.." v-model="newBeer.name">
            <label for="ABV">ABV</label>
            <input type="text" id="ABV" placeholder="ABV.." v-model="newBeer.abv">
            <label for="IBU">IBU</label>
            <input type="text" id="IBU" placeholder="IBU.." v-model="newBeer.ibu">
            <label for="Type">Type</label>
            <input type="text" id="type" placeholder="Type.." v-model="newBeer.type">
            <label for="Type">Info</label>
            <input type="text" id="Info" placeholder="Info.." v-model="newBeer.info">

            <label for="acitve">Active Status</label>
            <select id="active" name="active" v-model="newBeer.isActive">
            <option value="True">Yes</option>
            <option value="False">No</option>
            </select>
            <label for="Type">Image URL</label>
            <input type="text" id="Info" placeholder="Image URL" v-model="newBeer.imgUrl">
            <div  class="show-form-button">
                <button
                    id="show-form-button"
                    href="#"
                    v-on:click.prevent="showForm = false"
                    v-if="showForm === true"
                    >
                    Hide Form
                </button>
            </div>
            <input type="submit" value="Submit" onclick="window.location.reload();"
                 v-on:click.prevent="addNewBeer()">
        </form>
    </div>
        
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
            brewery: {},
            updatedBrewery: {
                id: this.$route.params.id,
                name: "",
                address: "",
                city: "",
                zipcode: "",
                phoneNumber: "",
                description: "",
                websiteUrl: "",
                breweryLogoUrl: "",
                userId: 0,
                hours: "",
                lat: "",
                lng: ""
            },
            newBeer: {
                name: '',
                abv: 0,
                ibu: 0,
                type: "",
                info: '',
                imgUrl: '',
                isActive: true,
                breweryId: this.$route.params.id
            },
            showForm: false,
            showUpdateBreweryForm: false,
            beers: [],
            noDescReplacement: "We can't find a description of this brewery, but we're sure they're really great!"
        }
    },
    methods: {
        addNewBeer(){
            applicationServices.addNewBeer(this.newBeer).then(response=>{
            if(response.status === 201){
            alert("Beer successfully added");
            }
            })
        },
    updateBeer(beer){
            applicationServices.updateBeer(beer).then(response=>{
            if(response.status === 201){
            alert("Beer successfully updated");
            }
            })
        },
    updateBrewery(brewery){
            applicationServices.updateBrewery(brewery).then(response=>{
            if(response.status === 201){
            alert("Beer successfully updated");
            }
            })
        },
    },
    created() {
        applicationServices.getBreweryByID(this.$route.params.id).then(response => {
            this.brewery = response.data
            this.updatedBrewery = response.data
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
.submitBtn {
    text-align: center;
    margin: 15px;
}
.subheading {
    color:  #404040;
    font-size: 1.8rem;
    text-align: center;
    background-color: whitesmoke;
    background-position: center;
    margin: 8% 28% 5% 28%;
    border-radius: 15px;
    box-shadow: inset 0px 0px 10px #000;
}
@keyframes logo{
   0%{opacity: 0%; width: 0%;}
   20%{opacity: 20%; width: 20%;}
   40%{opacity: 40%; width: 40%;}
   60%{opacity: 60%; width: 60%;}
   80%{opacity: 80%; width: 80%;}
   100%{opacity: 100%; width: 100;}
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
    animation-name: logo;
    animation-duration: 1s;
    animation-timing-function: ease-in;
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
    color:  #696969;
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
    background-color:   #C0C0C0;
}
.card-space:nth-child(even) {
    background-color:   #F5F5F5;
}
.card-space:hover {
    background-color: rgb(139, 139, 139);
}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
   box-shadow: inset 0px 0px 3.5px #000;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  box-shadow: inset 0px 0px 3.5px #000;
  text-shadow: 2px 2px 5px #000;
}
input[type=submit]:hover {
  background-color: #45A049;
  box-shadow: inset 0px 0px 10px #000;
  text-shadow: 4px 4px 5px #000;
}
.newBeerForm {
  border-radius: 5px;
  background-color: #F2F2F2;
  padding: 20px;
   box-shadow: inset 0px 0px 10px #000;
}
.newBeerForm h1 {
    text-align: center;
}
#addButton {
  width: 50px;
  border-radius: 50%;
  justify-content: center;
}
#addButton:hover {
    width: 60px;
    transition: 0.25s ease;
    margin: -5px;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  padding: 5px 0;
  border-radius: 6px;
    margin-left: 50px;
  /* Position the tooltip text - see examples below! */
  position: absolute;
  z-index: 1;

}
.brewerButton {
    text-align: center;
}
.tooltip {
  position: relative;
  display: inline-block;

  /* border-bottom: 1px dotted black; If you want dots under the hoverable text */
}
/* Show the tooltip text when you mouse over the tooltip container */
.tooltip:hover .tooltiptext {
  visibility: visible;
}
.brewerButton {
    border-radius: 50%;
    border-color: transparent;
    background-color:transparent;
}

.updateBreweryForm {
    border-radius: 5px;
    background-color: #f2f2f2;
    text-align: center;
    padding: 10px;
    margin-top: 10vh;
    margin-left: 12vw;
    box-shadow: inset 0px 0px 10px #000;
    width: 100%;
}

.updateBreweryForm h1 {
    text-align: center;
}

#submitButton {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

#submitButton:hover {
  background-color: #45a049;
}

#deleteButton, #editButton{
    border-radius: 50%;
    width: 50px;
}
#deleteButton:hover, #editButton:hover {
    width: 60px;
    transition: 0.25s ease;
    margin: -5px;
}

#description {
    margin-top: 2vh;
    padding-bottom: 10vh;
}
</style>