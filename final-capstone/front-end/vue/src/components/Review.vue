<template>
  <div>
    
<!--     <form class="reviewForm">
    <div class ="form-group">
      <label for="name">Review Title:</label>
      <input id="name" type="text" class="form-control" v-model="review.name" />
    </div>
    </form>

    
    <div class="reviews"> 
      <h2>Reviews</h2>
      <div class="review" v-for="review in reviews>

      </div>
    </div> -->
  </div>

</template>

<script>
import appServices from "../services/ApplicationServices";
import moment from "moment";

export default {
    name: "review",
    props: {
      reviewId:{
        type: Number,
        default: 0
      }
  },    
data(){
  return {
    review: {
      name: "",
      description: "",
      rating: "",
      userId: 0,
      beerId: 0,
      createDate: null
    }
  };
},
methods: {
  submitReview(){
    const newReview = {
      beerId: Number(this.$route.params.beerId),
      name: this.review.name,
      descrption: this.review.description,
      rating: this.review.rating,
      userId: this.review.userId,
      createDate: moment().format("MMM Do YYYY")
    };
  appServices.addReview(newReview).then(response =>{
        if(response.status === 201){
          this.$route.push(`/beers/${newReview.beerId}`);
        }
  })
      
    },

  displayReviews
}
};
</script>

<style scoped>

</style>