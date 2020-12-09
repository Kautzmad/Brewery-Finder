<template>
    <div id="card">
        <h4 class="brewery-name" > {{this.brewery.name}} </h4>
        <h3>{{this.beer.name}} - <span class="beer-type"> {{this.beer.type}} </span></h3>
        <h5> {{this.beer.abv}} ABV </h5>
        <h4 class="beer-info"> {{this.beer.info}} </h4>
    </div>
</template>
<script>
import applicationServices from '../services/ApplicationServices'
export default {
    props: ["beer"], 
    data() {
        return { 
            brewery: {
                id: 0,
                name: '',
                description: '',
                breweryLogoUrl: '',
                website_url: ''
            },
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
    margin-bottom: -10px; padding-top: 50px;
}
.beer-info {
    padding-bottom: 10px;
}
h5 {
    margin-top: -10px; margin-bottom: -5px;
}

</style>