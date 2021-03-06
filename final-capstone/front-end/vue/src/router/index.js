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
      }
    },
    {
      path: "/login",
      name: "login",
      component: Login,
      meta: {
        requiresAuth: false,
      }
    },
    {
      path: "/logout",
      name: "logout",
      component: Logout,
      meta: {
        requiresAuth: false,
      }
    },
    {
      path: "/register",
      name: "register",
      component: Register,
      meta: {
        requiresAuth: false,
      }
    },
    {
    path: "/breweries",
    name: "breweries",
    component: Breweries,
    meta: {
      requiresAuth: false,
    },
    },
    {
      path: "/beers",
      name: "beers",
      component: Beers,
      meta: {
        requiresAuth: false,
      },
    },
    {
      path: `/breweries/:id`,
      name: "brewery-details",
      component: BreweryDetails,
      meta: {
        requiresAuth: false,
      }
    },
    {
      path: `/beers/:id`,
      name: 'beer-details',
      component: BeerDetails,
      meta: {
        requiresAuth: false,
      }
    },
    {
      path: "/reviews",
      name: "reviews",
      component: Review,
      meta: {
        requiresAuth: false,
      },
    },
    {
      path: '/admin',
      name: 'admin',
      component: Admin,
      beforeEnter: (to, from, next) =>{
        if (store.state.user.authorities.some(e => e['name'] === 'ROLE_ADMIN')){
          next()
        } else{
          alert (
            "Sorry, but you don't have the privileges to view this page.",
            "Please log in as an admin to proceed."
          )
          next(from)
        }
      },
      meta: {
        requiresAuth: true,
      }
    }
 
  ]
})

router.beforeEach((to, from, next) => {
  // Determine if the route requires Authentication
  const requiresAuth = to.matched.some(x => x.meta.requiresAuth);

  // If it does and they are not logged in, send the user to "/login"
  if ((requiresAuth) && store.state.token === '') {
    next("/login");
  }else {
    // Else let them go to their next destination
    next();
  }
});

export default router;

