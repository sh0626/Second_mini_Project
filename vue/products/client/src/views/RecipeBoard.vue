<template>
  <section class="RecipeBoard">
    <button class="btn_add_add" id="write"><a class="write_a" href="RecipeRegister">글작성</a></button>
    <table class="Board_table">
      <tbody class="Board_tbody">
      <tr class="Board_tr">
        <th>
          <span class="th_span">분류</span>
          <span class="th_span">재료</span>
        </th>
        <td>
          <div class="cateL">
            <div class="cate_list">
              <a class="cate_list_text" href="#" v-for="cat in cate" :key="cat.RecipeCate">{{ cat.RecipeCate }}</a>
            </div>
            <div class="cate_list">
              <a class="cate_list_text" href="#" v-for="ingd in ingdn" :key="ingd.ingdName">{{ ingd.ingdName }}</a>
            </div>
          </div>
        </td>
      </tr>
      </tbody>
    </table>

    <!-- 썸네일 사진 넣기 -->
    <div class="RecipeThumbnail">
      <div class="row" id="thumbnail">
        <div class='col-lg-4 col-md-6 col-sm-6' v-for="item in items" :key="item.RecipeID">
          <div class='thumbnail_item'>
            <a href="RecipeDetails">
              <img class="thumbnail_item__pic" :src="item.TitleImg" alt="">
              <div class='thumbnail_item__name'>
                <h6>{{ item.RecipeName }}</h6>
                <div class='thumbnail_item__price'>{{ item.userNa }}</div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
<script>
import axios from "axios";

export default {
  name: "RecipeBoard",
  data() {
    return {
      items: [],
      ingdn: [],
      cate: [],
    };
  },
  created() {
    this.showRecipe();
    this.showIngredient();
    this.showCategory();
  },
  methods: {
    async showRecipe() {
      try {
        const response = await axios.get("http://localhost:5000/recipe");
        this.items = response.data;
      } catch (err) {
        console.log(err);
      }
    },
    async showIngredient() {
      try {
        const response = await axios.get("http://localhost:5000/ingredient");
        this.ingdn = response.data;
      } catch (err) {
        console.log(err);
      }
    },
    async showCategory() {
      try {
        const response = await axios.get("http://localhost:5000/category");
        this.cate = response.data;
      } catch (err) {
        console.log(err);
      }
    }
  }
}
</script>