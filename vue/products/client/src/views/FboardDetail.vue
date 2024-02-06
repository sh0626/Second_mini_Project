<template>
  <b-container rounded fluid class="p-4 bg-ivory" align="center">
    <section class="fboardWrite">
      <div id="fboardName">
        <h1><b>자유 게시판</b></h1>
        <br /><br />
        <h4>회원끼리 자유롭게 소통하는 게시판입니다.</h4>
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
      </div>

      <div class="fboardDetail" style="width: 50%; text-align: left">
        <div class="post">
          <h4 class="postTitle">
            <i class="icon-doc-text"></i><span>후라이팬 추천해주세요!</span>
          </h4>

          <div class="readHead">
            <div class="readLeft">
              <i
                class="icon-edit"
                style="margin-bottom: 30px; border: 0px; height: 20px"
              ></i
              ><strong><a>작성자: 혼밥왕 </a></strong> 조회수 : 22 작성일 :
              2023-12-16 13:37:58
            </div>
          </div>
          <hr />
          <div id="articleBody" style="text-align: left">
            <p>1)코팅 후라이팬&nbsp;</p>
            <p>2)무쇠 팬</p>
            <p>3) 스텐 팬</p>
            <p>꼭 좀 부탁드려요&nbsp;</p>
            <p>위에 팬들 각각 장점과 단점도 부탁드립니다</p>
            <p>댓글주시는 분들 5kg 감량되실거에요 ^♡^</p>
          </div>
          <br />
          <hr />
          <router-link to="/fboardList">
            <b-button
              style="background-color: #7fad39; color: white; margin-top: 20px"
              >목록으로</b-button
            >
          </router-link>
          <br /><br />
        </div>
        <div style="text-align: left">7 개의 댓글이 있습니다.</div>
        <ul class="reples" style="text-align: left; padding-left: 0px">
          <li data-rn="34559174" class="rp">
            <h5>
              <i class="icon-comment-empty"></i><span>1.</span>
              <strong>셋다필요</strong>
            </h5>
            <div class="repleFunc">
              <em>'23.12.16 1:42 PM</em>
            </div>
            <p>
              1. 바쁜 아침에 예열하고 자시고 할 시간 없으니 써야 해요<br />
              <br />
              2. 고기 구워 먹을 때, 오븐에 바로 넣는 요리, 감바스 할 때 필요
              하고요<br />
              <br />
              3. 떡볶이, 토마토소스 요리할 때 필요해요
            </p>
          </li>
          <li data-rn="34559225" class="rp">
            <h5>
              <i class="icon-comment-empty"></i><span>2.</span>
              <strong>ᆢ</strong>
            </h5>
            <div class="repleFunc">
              <em>'23.12.16 1:51 PM</em>
            </div>
            <p>다른 댓글이라 죄송한데 스텐팬은 기름 많이 쓰게 되지 않나요?</p>
          </li>
          <li data-rn="34559394" class="rp">
            <h5>
              <i class="icon-comment-empty"></i><span>3.</span>
              <strong>저는</strong>
            </h5>
            <div class="repleFunc">
              <em>'23.12.16 2:27 PM</em>
            </div>
            <p>2번,3번</p>
          </li>
          <li data-rn="34559447" class="rp">
            <h5>
              <i class="icon-comment-empty"></i><span>4.</span>
              <strong>ㅐㅐㅐㅐ</strong>
            </h5>
            <div class="repleFunc">
              <em>'23.12.16 2:38 PM</em>
            </div>
            <p>
              휘뚜루 마뚜루 쓰기엔 <br />
              코팅팬이 최고죠 <br />
              고딩성인 남매가 요리를 자주 해 먹어서 <br />
              코팅팬 막 쓰고 자주 바꿔요 <br />
              <br />
              무쇠는 시즈닝 잘 해줘야하고 무겁지만 맛은 최고<br />
              스텐은 가스불이면 통3중 이상 해야하니 <br />
              무겁고 기름 많이 쓰게 되어<br />
              바닥3중으로 인덕션에만 따로 써요
            </p>
          </li>
          <li data-rn="34559925" class="rp">
            <h5>
              <i class="icon-comment-empty"></i><span>5.</span>
              <strong>맛은</strong>
            </h5>
            <div class="repleFunc">
              <em>'23.12.16 4:16 PM</em>
            </div>
            <p>
              무쇠가 최고<br />
              편하기는 1번. <br />
              2번 3번은 기름 많이 써요. 전 무쇠 용도로 저렴이 기름 따로 놓고
              써요.
            </p>
          </li>
          <li data-rn="34559940" class="rp">
            <h5>
              <i class="icon-comment-empty"></i><span>6.</span>
              <strong>음</strong>
            </h5>
            <div class="repleFunc">
              <em>'23.12.16 4:18 PM</em>
            </div>
            <p>
              남편쓰라고 코팅팬은 하나 사두었어요<br />
              불조절할 능력 따위 없는 사람이라...<br />
              <br />
              무쇠는 고기 굽는데 최고에요. 전 스텐보다 무쇠가 음식하기는 더
              편하더라구요 <br />
              시즈닝이고 뭐고 그냥 전 대충씁니다. 단점은 무게죠 ㅜㅜ<br />
              <br />
              스텐은 관리가 편하죠<br />
              아무거나 볶고굽고 태워먹어도 박박 밀고 다시 쓰고. <br />
              무게도 그나마 가볍고. <br />
              <br />
              다 하나씩 필요하더라구요^^ 전 얼마 전 철팬도 들였어요
            </p>
          </li>
          <li data-rn="34560100" class="rp">
            <h5>
              <i class="icon-comment-empty"></i><span>7.</span>
              <strong>3개다</strong>
            </h5>
            <div class="repleFunc">
              <em>'23.12.16 4:45 PM</em>
            </div>
            <p>
              발암물질 나오는 불소수지 코팅대신 세라믹코팅팬 하나<br />
              <br />
              스텐 팬 하나<br />
              <br />
              무쇠팬 하나 쓰는데,<br />
              <br />
              세라믹팬과 스텐팬을 더 자주 써요.
            </p>
          </li>
        </ul>
        <br /><br />
        <div class="fbReply">
          <b-form-textarea
            v-model="fboardContent"
            id="textarea-rows"
            placeholder="로그인 후에 댓글을 등록하실 수 있습니다."
            rows="3"
            style="border: 2px solid #7fad39; border-radius: 5px; padding: 8px"
          ></b-form-textarea>
          <div class="fbBtn">
            <b-button
              @click="submitForm"
              class="btn"
              style="background-color: #7fad39; font-color: white"
              type="submit"
              >등록</b-button
            >&nbsp;
            <b-button
              @click="cancelForm"
              class="btn"
              variant="outline-secondary"
              >취소</b-button
            >
          </div>
        </div>
      </div>
    </section>
  </b-container>
</template>

<script>
export default {
  data() {
    return {
      FboardTitle: "",
      content: "",
    };
  },
  methods: {
    submitForm() {
      const formData = {
        title: this.fboardTitle,
        content: this.fboardContent,
      };

      // 서버로 데이터 전송
      fetch("/api/board/save", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(formData),
      })
        .then((response) => response.json())
        .then((data) => {
          console.log("데이터 전송 성공:", data);
        })
        .catch((error) => {
          console.error("데이터 전송 실패:", error);
        });
    },
    cancelForm() {
      // 취소 버튼 클릭 시 페이지 이동
      this.$router.push("/fboardList"); // fboardList.vue의 경로로 수정
    },
  },
};
</script>

<style>
.fboardName h1,
.fboardName h4 {
  margin-left: 80px;
  min-width: 350px;
}

#fbReply {
  vertical-align: top;
}

.fboardName,
.fbReply,
.fbTitle {
  margin: 0 auto; /* 수평 가운데 정렬 */
  width: 80%;
  width: 100%; /* input과 textarea의 너비를 100%로 설정 */
  max-width: 1024px;
  min-width: 350px;
  text-align: center;
}

.fbReply {
  display: table;
}

.fbReply textarea {
  height: 150px;
}
#btn {
  margin: 10px;
}

.fbBtn {
  text-align: right;
  margin: 10px;
}

.reples .rp {
  border-bottom: 1px solid lightgray; /* 연한 회색 테두리 추가 */
  padding: 10px;

  margin: 10px;
}

ul {
  list-style-type: none;
}
.post {
}
</style>
