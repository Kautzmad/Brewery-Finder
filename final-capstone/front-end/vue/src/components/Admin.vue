<template>
    <div>
        <h1>Please Input Brewery Information</h1>
        <form>
            <div class="form-element">
                <label for="name">Brewery Name:</label>
                <input id="name" type="text"/>
            </div>
            <div class="form-element">
                <label for="address">Brewery Address:</label>
                <input id="address" type="text"/>
            </div>
            <div class="form-element">
                <label for="city">City:</label>
                <input id="city" type="text"/>
            </div>
            <div class="form-element">
                <label for="zipcode">Zipcode:</label>
                <input id="zipcode" type="text"/>
            </div>
            <div class="form-element">
                <label for="description">Description:</label>
                <textarea id="description"/>
            </div>
            
            <div class="form-element">
                <label for="logo-url">Logo URL:</label>
                <input id="logo-url" type="text"/>
            </div>
            <div class="form-element">
                <label for="web-url">Website URL:</label>
                <input id="web-url" type="text"/>
            </div>
            <div class="form-element">
                <label for="user">Brewer ID:</label>
                <input id="user" type="text"/>
            </div>
            <div class="form-element">
                <label for="hours">Hours of Operation:</label>
                <input id="hours" type="text"/>
            </div>
            <div class="form-element">
                <label for="lat">Lattitude:</label>
                <input id="lat" type="text"/>
            </div>
            <div class="form-element">
                <label for="long">Longitude:</label>
                <input id="long" type="text"/>
            </div>
            <div>
                <button type="submit">Submit</button>
            </div>
        </form>
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
       
    }
}
}
</script>
<style scoped>

</style>