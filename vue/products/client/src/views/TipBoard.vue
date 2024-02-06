<template >
  <b-container rounded fluid class="p-4 bg-ivory" align="center" >
    <div class="boardName">
      <h1><b>주방 꿀팁 게시판</b></h1>
        <br /><br />
        <h4>주방에서 유용한 꿀팁 공유 게시판입니다.</h4>
        <br />
        <hr
              style="
                margin-bottom: 30px;
                border: 0px;
                height: 20px;
                background: linear-gradient(
                  to left,
                  transparent,
                  #7fad39,
                  transparent
                );
              "
            />
              <br>
    </div>

    <!-- 전체 가운데정렬 하고싶다 -->

    <div>
      <table
        id="tipMenu"
        vertical-align="center"
        border="0"
        bordercolor="grey"
        width="800"
        height="30"
        align="center"
        color="black"
      >
     
        <td align="center"> <b-button pill variant="success" >전체 보기</b-button></td>
        <td align="center"><b-button pill variant="outline-success">손질법</b-button> </td>
        <td align="center"><b-button pill variant="outline-success">보관법</b-button> </td>
        <td align="center"><b-button pill variant="outline-success">요리정보</b-button></td>
        <td align="center"><b-button pill variant="outline-success">기타</b-button></td>
      </table>
    </div>
    <br /><br />

    <div >
      <!-- img-src="@/img/kitchenTips/egg/5.png" -->
      <div class="contents">
        <b-card-group deck class="tipDeck">
          <b-card
            title="밥 맛있게 짓는 법"
            style="max-width: 20rem;"
            img-src="https://mblogthumb-phinf.pstatic.net/MjAxODAyMTNfMjkx/MDAxNTE4NTMxODE4MzA3.scyOyTfqvMNwYiwLDKvoui5WmAYxfLxhZVH8Zpaa9bcg.zsPAXfoXbFhQdalcAPqg2YH9ukfP626EELMGKmevj1sg.JPEG.jmne1015/%EC%8C%80%EB%B0%A5%EB%A8%B9%EB%8A%94%EA%BF%88_%EC%83%81%ED%99%A9%EB%B3%84_%EA%BF%88_%ED%95%B4%EB%AA%BD_%ED%95%B4%EC%84%9D_%282%29.jpg?type=w800"
            img-alt="Image1"
            img-top
            img-height="250"
            img-width="200"
            align="center"
      
          >
            <b-card-text> 하루 세 끼, 매일 먹는 밥! 이렇게 하면 더 맛있답니다.</b-card-text>
            <template #footer>
              <small class="text-muted">Last updated 3 mins ago</small>
            </template>
          </b-card>

          <b-card
            title="달걀 쉽게 까는 법"
            style="max-width: 20rem;"
            img-src="https://recipe1.ezmember.co.kr/cache/recipe/2019/08/14/1e6b5fb08ef8dfca4cb76b5cdc25246e1.jpg"
            img-alt="Image1"
            img-top
            img-height="250"
            img-width="200"
          >
            <b-card-text>
              누구보다 빠르고, 깔끔하게 달걀 껍질을 깔 수 있어요!
            </b-card-text>
            <template #footer>
              <small class="text-muted">Last updated a week ago</small>
            </template>
          </b-card>

            <b-card
              title="버터 쉽게 소분 보관법"
              style="max-width: 20rem;"
              img-src="https://mblogthumb-phinf.pstatic.net/MjAyMzAzMjdfMjMw/MDAxNjc5ODQzNzAzOTQx.lNcKhYwtwSUVQHIGtTZ1HwMAfQ-_mNzg9B8D02i-zXog.P35nbKbfTB-H_oubFLQiqkLD5VEUPb5HgnUeGyJaY-gg.JPEG.hee81hoo/%EB%B2%84%ED%84%B0_%EC%86%8C%EB%B6%84_%EB%B3%B4%EA%B4%80%EB%B2%95_%EC%A2%85%EC%9D%B4%ED%98%B8%EC%9D%BC_%EB%B0%80%ED%8F%90%EC%9A%A9%EA%B8%B0_%EA%B0%84%EB%8B%A8_%EB%B0%A9%EB%B2%95_03.JPG?type=w800"
              img-alt="Image"
              img-top
              img-height="250"
              img-width="200"
              @click="goToDetail"
            >
            <b-card-text>
              버터 소분해서 보관할 때, 칼에 묻지 않게 잘라서 깔끔해요!
            </b-card-text>
            <template #footer>
              <small class="text-muted">Last updated 2 weeks ago</small>
            </template>
          </b-card>

           <b-card
              title="김치 쉽게 썰어 담는 법"
              style="max-width: 20rem;"
              img-src="	https://m.cj.co.kr/resources/img/kfoodlife/behind191130/00.jpg"
              img-alt="Image"
              img-top
              img-height="250"
              img-width="200"
            >
              <b-card-text>
                이렇게 하시면 쉽게 썰고 통에 예쁘게 담을 수 있어요.
              </b-card-text>
              
              <template #footer>
                <small class="text-muted">Last updated 4 weeks ago</small>
              </template>
            </b-card>
        </b-card-group>


          <b-card-group deck class="tipDeck">
            <b-card
              title="귤 보관법"
              style="max-width: 20rem;"
              img-src="https://cphoto.asiae.co.kr/listimglink/1/2014012214584805021_2.jpg"
              img-alt="Image"
              img-top
              img-height="250"
              img-width="200"
            >
              <b-card-text>
                귤 많이 사면 보관할 때 골치 아프셨죠? 상하지 않고 신선하게 보관해요.
              </b-card-text>
              <template #footer>
                <small class="text-muted">Last updated 5 weeks ago</small>
              </template>
            </b-card>

            <b-card
              title="다진 마늘 쉽게 보관법"
              style="max-width: 20rem;"
              img-src="https://shop4.daumcdn.net/thumb/R500x500/?fname=http%3A%2F%2Fshop4.daumcdn.net%2Fshophow%2Fp%2FC5116129423.jpg%3Fut%3D20220928215256"
              img-alt="Image"
              img-top
              
              img-height="250"
              img-width="200"
            >
              <b-card-text>
                요리에 필수인 다진 마늘, 소분하기 귀찮아서 아직도 사다 쓰시나요? 
              </b-card-text>
              <template #footer>
                <small class="text-muted">Last updated 6 weeks ago</small>
              </template>
            </b-card>

            <b-card
              title="통마늘 쉽게 까는 법"
              style="max-width: 20rem;"
              img-src="	https://img-cf.kurly.com/shop/data/goodsview/20200521/gv20000096641_1.jpg"
              img-alt="Image"
              img-top
              img-height="250"
              img-width="200"
            >
              <b-card-text>
                 오래 보관 가능한 통마늘! 상상도 못했던 통마늘을 쉽게 까는 법!
              </b-card-text>

              <template #footer>
                <small class="text-muted">Last updated 7 weeks ago</small>
              </template>
            </b-card>

 <b-card
              title="채소 바삭하게 튀기는 법"
              style="max-width: 20rem;"
              img-src="	https://t1.daumcdn.net/cfile/tistory/99CD8D3A5CDC469E1D"
              img-alt="Image"
              img-top
              img-height="250"
              img-width="200"
            >
              <b-card-text>
                수분이 많은 채소를 바삭하게 튀기기 위한 노하우!
              </b-card-text>
              
              <template #footer>
                <small class="text-muted">Last updated 8 weeks ago</small>
              </template>
            </b-card>
          </b-card-group>
          <br><br>
          <div>
            <span id="pageNo">
              <a href="#"> 1 </a>&nbsp;
              <a href="#"> 2 </a>&nbsp;
              <a href="#"> 3 </a>&nbsp;
              <a href="#"> 4 </a>&nbsp;
            </span> <br><br> <br><br>

</div> <hr
              style="
                margin-bottom: 30px;
                border: 0px;
                height: 20px;
                background: linear-gradient(
                  to left,
                  transparent,
                  #7fad39,
                  transparent
                );
              "
            />
        
      </div>

      <!-- 사진썸네일 -->
    </div>
  </b-container>
</template>

<script>


export default {
  methods: {
    goToDetail() {
      // 클릭 시 '/tipboarddetail' 경로로 이동
      this.$router.push('/tipboarddetail');
    }
  }
};

</script>

<style scoped>
/* .blog__item {
margin-bottom: 60px;
float: left;
padding: 10px;
margin: 10px;
} */
/* .card-body {
  flex: 1 1 auto;
  padding: 1.25rem;
  } */

h1 {
  color: black;
  padding: 10px;
}
/* .card-body.h4 {
  text-align: left;
  
} */

.pics {
  width: 200px;
  margin: 10px;
  min-width: 100px;
}

.b-card {
  flex: 0 0 20%; 
  /* 각 b-card의 너비를 20%로 설정 */
  margin: 10px; 
  /* 각 b-card 간의 간격 설정 */
}

h4.card-title {
  margin-left: 0px;
}

.container.b-img {
  min-width: 50px;
  width: 200px;
}

.tipDeck {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin-top: 40px;
  margin-bottom: 40px;
}

#pageNo { 
  font-size:20px;
  }


</style>
