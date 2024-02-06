<template>
  <b-container rounded fluid class="p-4 bg-ivory" align="center">
    <section class="fboardWrite">
      <div id="fboardName">
        <h1><b>자유 게시판</b></h1>
        <br /><br />
        <h4>회원끼리 자유롭게 소통하는 게시판입니다.</h4>
        <br /><hr
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

      <div class="freeboard">
        <div class="fbTitle">
          <b-input-group prepend="제목" class="mb-2">
            <b-form-input
              v-model="FboardTitle"
              aria-label="title"
              width="800px"
              style="
                border: 2px solid #7fad39;
                border-radius: 5px;
                padding: 8px;
              "
            ></b-form-input>
          </b-input-group>
        </div>

        <div class="fbWrite">
          <b-form-textarea
            v-model="fboardContent"
            id="textarea-rows"
            placeholder="내용을 입력하세요."
            rows="8"
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
          <b-button @click="cancelForm" class="btn" variant="outline-secondary"
            >취소</b-button
          >
        </div>
        </div>
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

#fbWrite {
  vertical-align: top;
}

.fboardName,
.fbWrite,
.fbTitle {
  margin: 0 auto; /* 수평 가운데 정렬 */
  width: 80%;
  width: 100%; /* input과 textarea의 너비를 100%로 설정 */
  max-width: 1024px;
  min-width: 350px;
  text-align: center;
}



.fbWrite {
  display: table;
}

.fbWrite textarea {
  height: 500px;
}
#btn {
  margin: 10px;
}

.fbBtn {
  text-align: right;
  margin: 10px;

}
</style>
