<template>
    <div id="card">
        <!-- <img src="{{brewery.breweryLogoUrl}}"/> -->
        <h1>{{this.brewery.name}}</h1>
    </div>
</template>
<script>
export default {
    props: ["brewery"]
}
</script>
<style scoped>

</style>