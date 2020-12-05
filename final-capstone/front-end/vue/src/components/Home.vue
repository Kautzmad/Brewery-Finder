<template>
  <div class="home">
    <div id="body">
    <h1>Popular Breweries</h1>
    <div class="brewery-list">
        <p><img src="@/img/image-not-available.jpg"/><br>Brewery 1</p>
        <p><img src="@/img/image-not-available.jpg"/><br>Brewery 2</p>
        <p><img src="@/img/image-not-available.jpg"/><br>Brewery 3</p>
    </div>
    </div>
  </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
div.home {
    background: white;
    margin-left: 65px; margin-right: 65px;
    align-content: center;
}
div#body {
    margin-left: 25px; margin-right: 25px; margin-bottom: 50px;
    padding-bottom: 100px;
}
h1 {
    text-align: center;
}
div.brewery-list {
    display: flex;
    justify-content: space-around;
    text-align: center;
}
img {
    width: 125px
}

</style>