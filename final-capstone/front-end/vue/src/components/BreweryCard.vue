<template>
    <div id="card">
        <img class="company-logo" v-bind:src="this.brewery.breweryLogoUrl"/>
        <h2>{{this.brewery.name}}</h2>
    </div>
</template>
<script>
export default {
    props: ["brewery"], 
}
</script>
<style scoped>
img.company-logo {
    width: 200px;
}

</style>