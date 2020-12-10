<template>
  <div id="app">
    <router-link v-bind:to="{ name: 'home' }"><img id="logo" src="@/img/BrewFootball.png"/></router-link>
    <nav class="navbar">
      <ul class="nav-links">
        <li><router-link id="browse-brewery" v-bind:to="{ name: 'breweries' }">Browse Breweries</router-link>&nbsp;|&nbsp;</li>
        <li><router-link id="browse-beer" v-bind:to="{ name: 'beers' }">Browse Beers</router-link>&nbsp;|&nbsp;</li>
        <li><router-link id="browse-random" v-bind:to="{ name: 'home' }">Random Beer</router-link>&nbsp;|&nbsp;</li>
        <li><router-link id="logout-link" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link></li>
        <li><router-link id="login-link" v-bind:to="{ name: 'login' }" v-if="$store.state.token === ''">Login</router-link></li>
      </ul>
    </nav>
    <router-view />
  </div>
</template>

<style scoped>
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box; 
}

#app {
  font-family: Arial, Helvetica, sans-serif;
  background-color: transparent;
}

.navbar {
  border-right: none;
  display: flex;
  justify-content: flex-end;
  background-color: transparent;
  
}

a, li {
  color: #FF3C00;
  text-decoration: none;
  display: inline-block;
  padding: 0px 5px;
  margin-right: 10px;
}

a:hover {
  color: #311D00;
}

a:hover, a:visited, a:link, a:active {
    text-decoration: none;
}

#logo {
  width: 250px; 
  z-index: 999;
}

/* #nav {
  background-image: url('./img/cle-sign-bg.jpg');
  position: relative;
  background-position:center;
  background-size: cover;
  background-attachment: fixed;
  position: fixed;
  text-shadow: 2px 2px 15px black;
  z-index: 999;
  display: flex;
  align-items: baseline;
  justify-content: space-around;
  flex-wrap: wrap;
  padding-bottom: 100px;
  margin-top: -20px; 
  width: 100%;
  margin-right: 60px;
} */
</style>
