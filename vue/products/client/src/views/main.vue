<template>
  <div class="content section01">
    <!-----------------------------------------
            메인-1 슬라이드 사진부분
    -------------------------------------------->
    <!-- 플러그인 설치 " npm install @splidejs/vue-splide " 설치해야 작동됨-->
    <!-- <div id="mainslider"> -->

    <div class="main1">
      <splide :options="options">
        <splide-slide>
          <img src="../../public/common/img/img_JY/main_1.png" alt="main1" />
        </splide-slide>
        <splide-slide>
          <img src="../../public/common/img/img_JY/main_2.png" alt="main2" />
        </splide-slide>
        <!-- <splide-slide>
        <img src="@/img/main_3.jpg" alt="main3">
        </splide-slide>-->
      </splide>
    </div>

    <!-----------------------------------------
                 메인-2 부분
    -------------------------------------------->

    <!-- 메인2-1 -- 인기검색어 부분 -->
    <div class="main2 row justify-content-md-center">
      <!-- row해서 하나로 만든다(메인2번) -->
      <div class="sec01_tag col-lg-3 col-md-3 col-sm-3">
        <h2>
          이건 어때요?
          <strong>인기 검색어</strong>
        </h2>
        <p>고민을 덜어주는 추천 검색어</p>
        <div class="Tag">
          <ul>
            <li v-for="dbma2_1 in dbmain2_1" :key="dbma2_1.RecipeName">
              <a href="/category/search.asp?s_value=dbma2_1.RecipeName">#{{ dbma2_1.RecipeName}}</a>
            </li>
          </ul>
        </div>
      </div>
      <!-- 메인2-1 -- 인기검색어 부분 -->

      <!-- 메인2-2 -- 사이트소개 부분 -->
      <div class="blog_total col-lg-3 col-md-3 col-sm-3">
        <div class="blog__item">
          <div class="blog__item__pic">
            <img src="../../public/common/img/img_JY/siteint_1.jpg" alt />
          </div>
          <div class="blog__item__text">
            <h5>
              <a class="acolor" href="/RecipeBoard">1. 재료 선택 기능</a>
            </h5>
            <br />
            <p class="fontcolor">집에 있는 재료로 만들고 싶다면?</p>
            <p class="psize">
              집에 있는 재료들을 여러개 선택하여
              그 재료로 만들 수 있는 요리들을 한번에 볼 수 있습니다.
              감자와 당근이 있다면 그 재료로 만들 수 있는 요리를 찾아보세요 !
            </p>
            <a class="acolor" href="/RecipeBoard">보러가기</a>
          </div>
        </div>
      </div>
      <div href="/TipBoard" class="blog_total col-lg-3 col-md-3 col-sm-3">
        <div class="blog__item">
          <div class="blog__item__pic">
            <img src="../../public/common/img/img_JY/siteint_2.jpg" alt />
          </div>
          <div class="blog__item__text">
            <h5>
              <a class="acolor" href="/TipBoard">2. 꿀팁 페이지</a>
            </h5>
            <br />
            <p class="fontcolor">요리시작 전 기본적인 TIP이 궁금하다면?</p>
            <p class="psize">
              요리를 시작하기 전, 궁금하고 몰랐던 꿀팁들을 알 수 있습니다.
              밥을 맛있게 짓는 방법, 달걀 쉽게 까는 방법 등 몰랐던 TIP들을 알아보는 시간을 가져보세요 !
            </p>
            <a class="acolor" href="/TipBoard">  보러가기 </a>
          </div>
        </div>
      </div>
      <!-- 메인2-2 -- 사이트소개 부분 -->

      <!-- 메인2-3 -- 꿀팁 소개 부분 -->
      <div class="sec04_tip col-lg-3 col-md-3 col-sm-3">
        <a class="sec04_tip_a" href="/TipBoard">
          <img class="sec04_tip_image" src="../../public/common/img/img_JY/mainTip.png" alt />
        </a>
      </div>
      <!-- 메인2-3 -- 꿀팁 소개 부분 -->
    </div>
    <!-- 메인2부분 끝 -->

    <!-----------------------------------------
                 메인-3 광고부분
    -------------------------------------------->
    <!-- Banner Begin -->
    <div class="banner">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="banner__pic">
              <img src="../../public/common/img/img_JY/banner-1.jpg" alt />
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="banner__pic">
              <img src="../../public/common/img/img_JY/banner-2.jpg" alt />
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 메인3 광고 부분 끝 -->

    <!-----------------------------------------
                 메인-4 분류 부분
    -------------------------------------------->

    <!-----------------------------------------
                 메인-5 조회수별 나열 부분
    -------------------------------------------->

    <section class="latest-product spad">
      <div class="container">
        <div class="row">

          <!-- 1번째 -->
          <div class="col-lg-4 col-md-6">
            <div class="latest-product__text">
              <h4 class="main5_title">인기레시피</h4>
              <div class="latest-product__slider owl-carousel">

                <!-- 이 부분이 반복되어야 함 -->
                <div v-for="dbma5_1 in dbmain5_like" :key="dbma5_1.RecipeName">
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <!-- 이미지 부분 반복 -->
                      <img class="imgsize" :src="dbma5_1.TitleImg" alt />
                    </div>
                    <div class="latest-product__item__text">
                      <!-- 요리제목 반복 -->
                      <h6>{{ dbma5_1.RecipeName }}</h6>
                      <!-- 작성자 반복 -->
                      <span>작성자 - {{ dbma5_1.UserNa}}</span>
                      <span>{{ dbma5_1.RecipeLike }}</span>
                    </div>
         
                  </a>
                </div>

              </div>
            </div>
          </div>
          <!-- 1번째 -->

          <!-- 2번째 -->
          <div class="col-lg-4 col-md-6">
            <div class="latest-product__text">
              <h4 class="main5_title">많은조회레시피</h4>
              <div class="latest-product__slider owl-carousel">
                
                <!-- 이 부분이 반복되어야 함 -->
                <div v-for="dbma5_2 in dbmain5_view" :key="dbma5_2.RecipeName">
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <!-- 이미지 부분 반복 -->
                      <img class="imgsize" :src="dbma5_2.TitleImg" alt />
                    </div>
                    <div class="latest-product__item__text">
                      <!-- 요리제목 반복 -->
                      <h6>{{ dbma5_2.RecipeName }}</h6>
                      <!-- 작성자 반복 -->
                      <span>작성자 - {{ dbma5_2.UserNa}}</span>
                    </div>
                  </a>
                </div>

              </div>
            </div>
          </div>
            <!-- 2번째 -->

            <!-- 3번째 -->
            <div class="col-lg-4 col-md-6">
              <div class="latest-product__text">
                <h4 class="main5_title">최신레시피</h4>
                <div class="latest-product__slider owl-carousel">
                  
                  <!-- 이 부분이 반복되어야 함 -->
                  <div v-for="dbma5_3 in dbmain5_new" :key="dbma5_3.RecipeName">
                    <a href="#" class="latest-product__item">
                      <div class="latest-product__item__pic">
                        <!-- 이미지 부분 반복 -->
                        <img class="imgsize" :src="dbma5_3.TitleImg" alt />
                      </div>
                      <div class="latest-product__item__text">
                        <!-- 요리제목 반복 -->
                        <h6>{{ dbma5_3.RecipeName }}</h6>
                        <!-- 작성자 반복 -->
                        <span>작성자 - {{ dbma5_3.UserNa }}</span>
                      </div>
                    </a>
                  </div>

                </div>
              </div>
            </div>
            <!-- 3번째 -->
          
        </div>
      </div>
    </section>
    <!------------------ 메인5번 끝 ------------------->
  </div>
</template>


<style scoped>
/* #mainslider{
  text-align: center;
  align-items: center;
} */

.content {
  padding-top: 5px;
  /* position: relative; */
  /* width: 1280px; */

  /* margin: 10px auto; */
  /* text-align: center; */
  /* content에서 글씨 센터를 하게 되면 인기검색어도 센터가 되어 깨지게 된다 각 부분 클래스로 적용하기 */
  /* vertical-align: top; */
  /* display: flex; */
}

/********************** 
       main-1번
***********************/
.splide__slide {
  backface-visibility: hidden;
  box-sizing: border-box;
  -ms-flex-negative: 0;
  flex-shrink: 0;
  list-style-type: none !important;
  margin: 0;
  position: relative;
  text-align: center;
}

/********************** 
       main-2번
***********************/
.main2 {
  /*text-align: center;*/
  margin: 3em auto;
  width: 1600px;
  /* margin-left: 50px; */
  /* margin-right: 50px; */
}

/* 꿀팁 소개 부분 css (오키친) */
.sec04_tip {
  /* background-color: rgb(255, 237, 147); */
  padding: 0px 0px;
}


.sec04_tip_a:hover,
.sec04_tip_a:active,
.sec04_tip_a:focus {
  text-decoration: none;
  color: #333;
}
.sec04_tip_image {
  /* flex: 0 0 auto; */
  width: 100%;
}

/* 사이트소개 부분 css (오가닉) */

.blog__item__pic img {
  /* img사이즈를 전체 크기에 맞추기 */
  inline-size: -webkit-fill-available;
  margin-top: 15px;
}
.blog__item__text {
  margin-top: 10%;
}
.fontcolor {
  color: rgb(97, 97, 243);
  font-weight: bold;
}
.psize{
  font-size: 15px;
}

/* 인기검색어 부분 css (오키친) */
.sec01_tag strong {
  display: block;
}
.section01 .sec01_tag .Tag li {
  display: block;
}

.sec01_tag h2 {
  font-size: 40px;
  color: #333;
  /* line-height: 1.1; */
  /* font-weight: normal; */
}
.Tag a {
  font-size: 20px;
  /* line-height: 25px; */
  color: #777777;
  padding: 5px 20px 7px;
  border: 1px solid #c1c1c1;
  background: #fff;
  border-radius: 50px;
}
.Tag li {
  display: inline-block;
  margin: 5px 2px;
  min-height: 40px;
}
a {
  text-decoration: none;
  /* color: #ab7272; */
}
.acolor{
  color: #ab7272;
}
.Tag {
  text-align: left;
  margin-top: 30px;
}

/********************** 
       main-3번
***********************/
.banner__pic{
  margin: 0 30px;
}



/********************** 
       main-4번
***********************/
.main5_title{
  background-color: #b5d87f;
  color: white;
  padding: 0.5em;
}

.latest-product{
  margin-top: 3em;
  margin-bottom: 3em;
  text-align: center;
}


.latest-product__item{

}


/* 이미지div */
.latest-product__item__pic{

}

/* 이미지 부분 */
.imgsize{
  margin-top: 1.5em;
  margin-bottom: 0.5em;
  width: 18em;
  height: 15em;
}

/* 요리제목,작성자 text 부분 */
.latest-product__item__text{

}


</style>



<script>
// main 1번(배너슬라이더 부분)
import { Splide, SplideSlide } from "@splidejs/vue-splide";
import "@splidejs/splide/dist/css/themes/splide-default.min.css";
import axios from "axios";

export default {
  name: "main1",
  components: {
    Splide,
    SplideSlide
  },
  data() {
    return {
      options: {
        type: "loop",
        rewind: true,
        perPage: 1,
        autoplay: true,
        pauseOnHover: false,
        arrows: false,
        dots: true,
        animatedDots: true
      },
      dbmain2_1: [],
      dbmain5_like: [],
      dbmain5_view: [],
      dbmain5_new: [],
    };
  },
  created() {
    this.showmain2_1();
    this.showmain5_like();
    this.showmain5_view();
    this.showmain5_new();
  },

  methods: {
    // main2_1 인기검색어 태그로 가지고 오기
    async showmain2_1() {
      try {
        const response = await axios.get("http://localhost:5000/showmain2_1");
        this.dbmain2_1 = response.data;
      } catch (err) {
        console.log(err);
      }
    },

    // main5_like 인기레시피(좋아요순)
    async showmain5_like() {
      try {
        const response = await axios.get("http://localhost:5000/showmain5_like");
        this.dbmain5_like = response.data;
      } catch (err) {
        console.log(err);
      }
    },

    // main5_view 조회많은레시피
    async showmain5_view() {
      try {
        const response = await axios.get("http://localhost:5000/showmain5_view");
        this.dbmain5_view = response.data;
        // console.log(this.dbmain5_view);
      } catch (err) {
        console.log(err);
      }
    },

    // main5_new 최신레시피
    async showmain5_new() {
      try {
        const response = await axios.get("http://localhost:5000/showmain5_new");
        this.dbmain5_new = response.data;
      } catch (err) {
        console.log(err);
      }
    },

  }
};
</script>