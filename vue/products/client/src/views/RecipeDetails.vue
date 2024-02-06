<template>
  <section class="RecipeDetails">
    <div class="recipe_title" v-for="tit in title" :key="tit.RecipeName">
      <div class="recipe_title_img">
        <!-- 음식 완성 사진-->
        <img class="title_img" :src="tit.TitleImg">
      </div>
      <div class="title">
        <h3>{{ tit.RecipeName }}</h3><br>
        <div class="writer">{{ tit.UserNa }} | {{ tit.RecipDate }} | 조회수 {{ tit.RecipeView }} |
          좋아요 {{ tit.RecipeLike }}
        </div>
        <button><img class="btn_img" src="../../public/common/img/icon/heart-icon.png">좋아요</button>
      </div>
      <div class="time_people">
        <div class="time_people1">
          <img src="../../public/common/img/icon/time-check-icon.png">
          {{ tit.RecipTime }}분
        </div>
        <div class="time_people1">
          <img src="../../public/common/img/icon/number_person.jpg">
          {{ tit.RecipeServings }}인분
        </div>
      </div>
      <div class="Ingredient" style="color: black">
        <div class="Ingredient_name">재료</div>
        <div class="ingredient_Area">
          <ul class="area_details">
            <li class="area_ingrd" v-for="ing in indg" :key="ing.ingdName">{{ ing.ingdName }}
              <span>{{ ing.ingdAm }}</span></li>
          </ul>
        </div>
      </div>
      <div class="recipe_view">
        <div class="view_title">요리 순서</div>
        <div class="stepDiv1" v-for="de in detail" :key="de.RecipeDetailsNo">
          <div class="details">
            <div class="desc">{{de.RecipeDetailsNo}}. {{ de.RecipeDetails }}</div>
          </div>
          <div class="process">
            <img class="cook_process_img" :src="de.RecipeComImg">
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
<script>
import axios from "axios";

export default {
  name: "RecipeDetails",
  data() {
    return {
      title: [],
      detail: [],
      ingd: [],
    };
  },
  created() {
    this.showTitle();
    this.showIngd();
    this.showDetail();
  },
  methods: {
    async showTitle() {
      try {
        const response = await axios.get("http://localhost:5000/title");
        this.title = response.data;
      } catch (err) {
        console.log(err);
      }
    },
    async showDetail() {
      try {
        const response = await axios.get("http://localhost:5000/detail");
        this.detail = response.data;
      } catch (err) {
        console.log(err);
      }
    },
    async showIngd() {
      try {
        const response = await axios.get("http://localhost:5000/ingd");
        this.ingd = response.data;
      } catch (err) {
        console.log(err);
      }
    },
  }
}


</script>