<template>
  <div>
    <review-card v-for="review in reviews" v-bind:key="review.id" v-bind:review="review"/>
  </div>

</template>

<script>
import appServices from "../services/ApplicationServices";
import moment from "moment";
import ReviewCard from './ReviewCard.vue';

export default {
    name: "review",
    props: [
      'review'
    ], 
    components: {
      ReviewCard
    },
       

data(){
  return {
    reviews: [],
    isLoading: true,
    /* review: {
      name: "",
      description: "",
      rating: "",
      userId: 0,
      beerId: 0,
      createDate: null
    } */
  };
},
methods: {
  submitReview(){
    const newReview = {
      beerId: Number(this.$route.params.id),
      name: this.review.name,
      descrption: this.review.description,
      rating: this.review.rating,
      userId: this.review.userId,
      createDate: moment().format("MMM Do YYYY")
    };
  appServices.addReview(newReview).then(response =>{
        if(response.status === 201){
          alert(
            "Review successfully added"
          );
        }
  })
      
    },

},
created(){
  appServices.getReviewsByBeerID(this.$route.params.id).then(response => {
    this.reviews = response.data;
    this.isLoading = false;
  })
}
}

</script>

<style scoped>

</style>