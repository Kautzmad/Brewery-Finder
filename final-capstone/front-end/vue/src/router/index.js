import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import Logout from '../views/Logout.vue'
import Register from '../views/Register.vue'
import store from '../store/index'
import Breweries from '../components/Breweries'
import Beers from '../components/Beers'
import BreweryDetails from '../components/BreweryDetails'
import BeerDetails from '../components/BeerDetails'
import Review from '../components/Review'
import Admin from '../components/Admin'

Vue.use(Router)

/**
 * The Vue Router is used to "direct" the browser to render a specific view component
 * inside of App.vue depending on the URL.
 *
 * It also is used to detect whether or not a route requires the user to have first authenticated.
 * If the user has not yet authenticated (and needs to) they are redirected to /login
 * If they have (or don't need to) they're allowed to go about their way.
 */

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home,
      meta: {
        requiresAuth: false,
        requiresAdmin: false
      }
    },
    {
      path: "/login",
      name: "login",
      component: Login,
      meta: {
        requiresAuth: false,
        requiresAdmin: false
      }
    },
    {
      path: "/logout",
      name: "logout",
      component: Logout,
      meta: {
        requiresAuth: false,
        requiresAdmin: false
      }
    },
    {
      path: "/register",
      name: "register",
      component: Register,
      meta: {
        requiresAuth: false,
        requiresAdmin: false
      }
    },
    {
    path: "/breweries",
    name: "breweries",
    component: Breweries,
    meta: {
      requiresAuth: false,
      requiresAdmin: false
    },
    },
    {
      path: "/beers",
      name: "beers",
      component: Beers,
      meta: {
        requiresAuth: false,
        requiresAdmin: false
      },
    },
    {
      path: `/breweries/:id`,
      name: "brewery-details",
      component: BreweryDetails,
      meta: {
        requiresAuth: false,
        requiresAdmin: false
      }
    },
    {
      path: `/beers/:id`,
      name: 'beer-details',
      component: BeerDetails,
      meta: {
        requiresAuth: false,
        requiresAdmin: false
      }
    },
    {
      path: "/reviews",
      name: "reviews",
      component: Review,
      meta: {
        requiresAuth: false,
        requiresAdmin: false
      },
    },
    {
      path: '/admin',
      name: 'admin',
      component: Admin,
      meta: {
        requiresAuth: true,
        requiresAdmin: true
      }
    }
 
  ]
})

router.beforeEach((to, from, next) => {
  // Determine if the route requires Authentication
  const requiresAuth = to.matched.some(x => x.meta.requiresAuth);
  const requiresAdmin = to.matched.some(x => x.meta.requiresAdmin)

  // If it does and they are not logged in, send the user to "/login"
  if ((requiresAuth || requiresAdmin) && store.state.token === '') {
    next("/login");
  }else if (requiresAdmin && store.state.user.username !== 'admin') {
    alert (
      "Sorry, but you don't have the privileges to view this page.",
      "Please log in as an admin to proceed."
    )
    next("/")
  }else {
    // Else let them go to their next destination
    next();
  }
});

export default router;
