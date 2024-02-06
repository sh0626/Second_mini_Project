<template>
  <section class="recipe_Regi">
    <div class="regi_center">
      <div class="regi_title">
        레시피 등록
      </div>
      <div class="regi_cont">
        <div class="main_photo">
          <img src="/common/img/icon/main_photo_regist.gif" class="mainPhotoHolder"></div>
        <div class="cont_line">
          <p class="tit1">레시피 제목</p>
          <input type="text" class="inputDetails" placeholder="예) 소고기 미역국 끓이기">
        </div>
        <div class="cont_line">
          <p class="tit2">재료 추가</p>
          <ul class="intgd_regi">
            <li class="sun_li">
              <input type="text" class="ex" placeholder="돼지고기">
              <input type="text" class="ex" placeholder="300g">
            </li>
            <li class="sun_li">
              <input type="text" class="ex" placeholder="통후추">
              <input type="text" class="ex" placeholder="1t">
            </li>
            <li class="sun_li">
              <input type="text" class="ex" placeholder="식빵">
              <input type="text" class="ex" placeholder="6장">
            </li>
          </ul>
          <div class="btn_add">
            <button type="button" class="btn_add_add">추가</button>
          </div>
        </div>
      </div>
      <div class="regi_cont">
        <div class="cont_line">
          <p class="cont_list">요리 순서</p>
          <div class="recipe_insert">
            <p>요리 추가</p>
            <ul class="explain_cook">
              <li class="explin_li sun_li">
                <textarea class="explain">과정 설명</textarea>
                <img src="/common/img/icon/pic_none2.gif" class="explain_img">
              </li>
              <li class="explin_li sun_li">
                <textarea class="explain">과정 설명</textarea>
                <img src="/common/img/icon/pic_none2.gif" class="explain_img">
              </li>
            </ul>
            <div class="btn_add">
              <button type="button" class="btn_add_add">추가</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
<script setup>

</script>