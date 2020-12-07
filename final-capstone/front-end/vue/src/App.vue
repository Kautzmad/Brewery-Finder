<template>
  <div id="app">
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }"><img id="logo" src="@/img/BrewNewUSETHISONE.png"/></router-link>
      <router-link class="nav-link" id="browse-brewery" v-bind:to="{ name: 'breweries' }">Browse<br>Breweries</router-link>&nbsp;|&nbsp;
      <router-link class="nav-link" id="browse-beer" v-bind:to="{ name: 'beers' }">Browse<br>Beers</router-link>&nbsp;|&nbsp;
      <router-link class="nav-link" id="browse-random" v-bind:to="{ name: 'home' }">Random<br>Beer</router-link>&nbsp;|&nbsp;
      <router-link class="nav-link" id="logout-link" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
      <router-link class="nav-link" id="login-link" v-bind:to="{ name: 'login' }" v-if="$store.state.token === ''">Login</router-link>
    </div>
    <router-view />
  </div>
</template>
<style scoped>
template {
  width: 100%;
  overflow-x: hidden;
}
#app {
    border-color: black;
    border-width: 10px;
    border-style: solid;
    background-color: black;
    color: black;
    font-family: 'Arial';
}
#logo {
    width: 250px;
    margin-bottom: -110px;
    margin-top: -35px;
}
#nav {

    position: fixed;
    display: flex;
    align-items: baseline;
    justify-content: space-around;
    flex-wrap: wrap;
    padding-bottom: 25px;
    margin-top: -20px; 
    background-color: black;
    width: 100%;
}
.nav-link {
  color: #FFDE59;
  text-decoration: none;
  font-weight: 700;
  text-align: center;
}
#browse-beer, #logout-link, #login-link {
  color: #38B6FF;
}

</style>
