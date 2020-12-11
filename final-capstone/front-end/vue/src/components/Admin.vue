<template>
    <div>
        <h1>Please Input Brewery Information</h1>
        <form>
            <div class="form-element">
                <label for="name">Brewery Name:</label>
                <input id="name" type="text" v-model="newBrewery.name" required/>
            </div>
            <div class="form-element">
                <label for="address">Brewery Address:</label>
                <input id="address" type="text" v-model="newBrewery.address" required/>
            </div>
            <div class="form-element">
                <label for="city">City:</label>
                <input id="city" type="text" v-model="newBrewery.city" required/>
            </div>
            <div class="form-element">
                <label for="zipcode">Zipcode:</label>
                <input id="zipcode" type="text" v-model="newBrewery.zipcode" required/>
            </div>
            <div class="form-element">
                <label for="description">Description:</label>
                <textarea id="description" v-model="newBrewery.description" required/>
            </div>
            
            <div class="form-element">
                <label for="logo-url">Logo URL:</label>
                <input id="logo-url" type="text" v-model="newBrewery.breweryLogoUrl"/>
            </div>
            <div class="form-element">
                <label for="web-url">Website URL:</label>
                <input id="web-url" type="text" v-model="newBrewery.websiteUrl"/>
            </div>
            <div class="form-element">
                <label for="user">Brewer ID:</label>
                <input id="user" type="text" v-model="newBrewery.userId"/>
            </div>
            <div class="form-element">
                <label for="hours">Hours of Operation:</label>
                <input id="hours" type="text" v-model="newBrewery.hours"/>
            </div>
            <div class="form-element">
                <label for="lat">Lattitude:</label>
                <input id="lat" type="text" v-model="newBrewery.lat"/>
            </div>
            <div class="form-element">
                <label for="long">Longitude:</label>
                <input id="long" type="text" v-model="newBrewery.lon"/>
            </div>
            <div>
                <button type="submit" class="submitBtn" onclick="window.location.reload();"
                 v-on:click.prevent="addNewBrewery()" >Submit</button>
            </div>
        </form>
        <div>
            <table>
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>UserId</th>
                       <!--  <th>Number of breweries</th> -->
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="user in users" v-bind:key="user.id" v-bind:user="user">
                        <td>{{user.username}}<td/>
                        <td>{{user.id}}<td/>
                        <!-- <td>{{getBreweryByUserId(user.id)}}<td/> -->
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<script>
import appServices from '../services/ApplicationServices'

export default {
    name: "brewery",
    props: [
        'brewery'
    ],
    components:{

    },

data(){
    return{
    users: [],
    newBrewery: {
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
       }
    };
},
methods:{
    addNewBrewery(){
        appServices.createNewBrewery(this.newBrewery).then(response=>{
          if(response.status === 201){
          alert(
            "Brewery successfully added"
          );
        }  
        })
    },
    getBreweryByUserId(id){
        appServices.getBreweryByUserId(id).then(response =>{
            
            let counter

            response.data.forEach(element => {
                console.log(element)
                counter ++
            });
            
            return counter
        })
    }
},
created(){
    appServices.getAllUsers().then(response=> {
        this.users = response.data;
        })
     }
    
}
</script>

<style scoped>

</style>