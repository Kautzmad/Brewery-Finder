<template>
  <div id="app">
    <router-link v-bind:to="{ name: 'home' }"><img id="logo" src="./assets/BrewFootball.png"/></router-link>
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


div#app {
  font-family: Arial, Helvetica, sans-serif;
  background-image: url('assets/cle-sign-bg.jpg');
  position: relative;
  background-position:left top;
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  margin: -8px;
}

.navbar {
  border-right: none;
  display: flex;
  justify-content: flex-end;
  background-color: transparent;
  margin-top: -3rem;
}

.nav-links {
  list-style-type: none;
}

a, li {
  color: #311D00;
  text-decoration: none;
  display: inline-block;
  padding: 0px 3px;
  margin-right: 5px;
  list-style-type: none;
}

a:hover {
  color: #FF3C00;
}

a:hover, a:visited, a:link, a:active {
    text-decoration: none;
}

#logo { 
  max-width: 15%;
  margin-top: 1rem;
  margin-left: 1rem;
}
</style>
