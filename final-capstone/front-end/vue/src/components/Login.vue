<template>
    <div id="login" class="text-center">
    <form class="form-signin" @submit.prevent="login">
      <h1 class="h3 mb-3 font-weight-normal heading">Please Sign In</h1>
      <br>
      <div
        class="alert alert-danger"
        role="alert"
        v-if="invalidCredentials"
      >Invalid username and password!</div>
      <div
        class="alert alert-success"
        role="alert"
        v-if="this.$route.query.registration"
      >Thank you for registering, please sign in.</div>
      <br>
      <div class="form-field">
      <label for="username" class="sr-only">Username</label>
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      />
      </div>
      <br>
      <div class="form-field">
      <label for="password" class="sr-only">Password</label>
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      />
      </div>
      <br>
      <div class="form-field">
      <router-link :to="{ name: 'register' }">Need an account?</router-link> 
      <button type="submit">Sign in</button>
      </div>
    </form>
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
    data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    }
  }
    
}
</script>


<!-- CSS -->
<style scoped>
div#login {
    background: white;
    margin-left: 65px; margin-right: 65px;
    align-content: center;
    margin-top: 150px;
}

form.form-signin {
    background: white;
    margin-left: 65px; margin-right: 65px; margin-bottom: 10px;
    padding-bottom: 10px;
    align-content: center;
    text-align: center;
}

.h3 {
    font-size: 2rem;
    margin: 1;
}

.sr-only {
    font-size: 50;
    margin-right: 1%;
}

h1.heading {
    padding-top:25px;
}
</style>