<template>
    <div id="card">
        <h3>{{this.beer.name}}</h3>
    </div>
</template>
<script>
export default {
    props: ["beer"], 
}
</script>
<style scoped>
img.company-logo {
    width: 200px;
}

</style>