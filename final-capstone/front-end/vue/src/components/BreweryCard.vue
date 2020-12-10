<template>
<router-link v-bind:to="{ name: 'brewery-details', params:{id: this.brewery.breweryId} }">
    <div id="card" data-aos="fade-left">
        <img class="company-logo" v-bind:src="this.brewery.breweryLogoUrl"/>
        <img class="company-logo" v-if="!brewery.breweryLogoUrl"  src="../img/404BeerNotFoundCrop.jpg">
        <a href="#" class="btn">{{this.brewery.name}}</a>
    </div>
</router-link>
</template>
<script>
export default {
    props: ["brewery"], 
}
</script>
<style scoped>
.btn {
    font-family: Arial, Helvetica, sans-serif;
    font-size: .9rem;
    display: inline-block;
    background: #000;
    color: #fff;
    text-align: center;
    padding: 5px 5px;
    margin-top: 1rem;
    border-radius: 5px;
}

.btn:hover {
    opacity: 0.8;
}

a:hover, a:visited, a:link, a:active {
    text-decoration: none;
}

img.company-logo {
    width: 100%;
}

#card {
    width: 300px;
    display: grid;
    grid-template-columns: 1fr;
    grid-gap: 0rem;
    background-color: #f1f1f1;
    margin-bottom: 2rem;
    border-radius: 5px;
}
</style>