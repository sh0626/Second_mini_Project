<template>
  <div class="mypage">
    <h2>마이페이지</h2>
    <div class="mypageinfo">
      <table>
        <thead>
          <tr>
            <th>회원번호</th>
            <th>이름</th>
            <th>전화번호</th>
            <th class="actcss">레시피 작성글</th>
            <th class="actcss">게시판 작성글</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>{{ itemss.UserNo }}</td>
            <td>{{ itemss.UserNa }}</td>
            <td>{{ itemss.UserPhon }}</td>
            <td class="actcss">{{ recipelength }}건</td>
            <td class="actcss">{{ boardlength }}건</td>
          </tr>
        </tbody>
      </table>
    </div>

    <hr>

    <div class="mypageinfo solidout">
        <strong>나의 레시피</strong>
        <!-- <button>더보기</button> -->
      <table>
        <thead>
          <tr>
            <th>회원번호</th>
            <th>일자</th>
            <th>제목</th>
            <th>조회수</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="myrecipe in myrecipearr" :key="myrecipe.RecipeName">
             <!-- 3개까지 데이터 불러오기 v-for문 사용 -->
             <td>{{ myrecipe.FKuserID}}</td>
            <td>{{ myrecipe.RecipDate }}</td>
            <td> {{ myrecipe.RecipeName }}</td>
            <td> {{ myrecipe.RecipeView }}</td>
            <td>
              <button class="delete_btn" @click="deleterecipe(myrecipe.RecipeName)">삭제</button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>

    <div class="mypageinfo solidout">
        <strong>나의 게시판</strong>
        <!-- <button>더보기</button> -->
      <table>
        <thead>
          <tr>
            <th>회원번호</th>
            <th>일자</th>
            <th>제목</th>
            <th>조회수</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="myboard in myboardarr" :key="myboard.BorderNa">
            <!-- 3개까지 데이터 불러오기 v-for문 사용 -->
            <td>{{ myboard.User_userID }}</td>
            <td>{{ myboard.BorderDate }}</td>
            <td>{{ myboard.BorderNa }}</td>
            <td>{{ myboard.BordeView }}</td>
            <td>
              <button class="delete_btn" @click="deleteboard(myboard.BorderNa)">삭제</button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>

    <button class="userdel" @click="deleteUsermy()">탈퇴</button>

  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Mypage",
  data() {
    return {
      items: [],
      itemss : {},
      myrecipearr: [],
      myboardarr: [],
      recipelength: "", 
      boardlength: "",
      a: "",

    };
  },

  created() {
    this.showMypage();
    this.showmyrecipe();
    this.showmyboard();

  },

  methods: {
    // mypage 회원번호, 이름, 전화번호, 레시피개수, 게시판개수
    async showMypage() {
      try {
          const a = localStorage.getItem("UserNo");
          const response = await axios.post("http://localhost:5000/showmypage",{UserNo:a}); //나중에 로컬스토리지 에서 받은 것으로 변경하기
          this.items = response.data;
          // this.itemss = Object.values(this.items[0]);
          // console.log(Object.keys(this.items[0]));
          // console.log(Object.values(this.items[0]));
          this.itemss.UserNo = Object.values(this.items[0])[0];
          this.itemss.UserNa = Object.values(this.items[0])[1];
          this.itemss.UserPhon = Object.values(this.items[0])[2];
      } catch (err) {
        console.log(err);
      }},

    // 마이페이지 내가 쓴 레시피 글
    async showmyrecipe() {
       try {
         const a = localStorage.getItem("UserNo");
         const response = await axios.post("http://localhost:5000/showmyrecipe",{UserNo:a});
         this.myrecipearr = response.data;
         this.recipelength = this.myrecipearr.length;
       } catch (err) {
         console.log(err);
       }},

    //마이페이지 내가 쓴 자유게시판 글
    async showmyboard() {
       try {
        //로컬스토리지 데이터 넣어줌
         const a = localStorage.getItem("UserNo");
         const response = await axios.post("http://localhost:5000/showmyboard",{UserNo:a});

         this.myboardarr = response.data;
         this.boardlength = this.myboardarr.length;
       } catch (err) {
         console.log(err);
       }},

    //자유게시판 글 삭제하기
    async deleteboard(id){
      try{
        if (confirm("[게시판] 정말 삭제하시겠습니까?")){ 
        // console.log(id);
        await axios.delete(`http://localhost:5000/board/${id}`,{
        });
        this.showmyboard();
      } else {
        return;
      }
      }catch(err){
        console.log(err);
      }},

    //레시피 글 삭제하기
    async deleterecipe(id){
      try{
        if (confirm("[레시피] 정말 삭제하시겠습니까?")){ 
        console.log(id);
        await axios.delete(`http://localhost:5000/reboard/${id}`,{
        });
        this.showmyrecipe(); //레시피 초기화 적용
      } else {
        return;
      }
      }catch(err){
        console.log(err);
      }},

    //회원 탈퇴하기(회원데이터 삭제)
    async deleteUsermy(){
      const UserNo = localStorage.getItem("UserNo");
      try{
        if (confirm("정말 탈퇴하시겠습니까?")){ 
        console.log("user",UserNo);
        await axios.delete(`http://localhost:5000/deleteUsermy/${UserNo}`,{
        });
        window.localStorage.removeItem("UserNo");
        window.localStorage.removeItem("UserId")
        window.location.href = "/";
      } else {
        return;
      }
      }catch(err){
        console.log(err);
      }
    },

  }
}
</script>

<style scoped>
.mypage{
  margin-bottom: 100px;
  padding: 0 10%;
}

.mypageinfo table,th,td {
  border: 1px solid black;
  border-collapse: collapse;
  border-width: 1px;
  margin-top: 10px;
  margin-bottom: 30px;
  /* margin-top: 20px; */
  color: black;
  /* margin-left: 40px;   */
}
.mypageinfo th,td {
  padding: 0.5rem;
  border: 1px solid black;
  text-align: center;
}
strong{
  font-size: 20px;
  background-color: #7fad39;
  color: white;
}

.delete_btn{
  height: 26px;
  padding: 0 5px;
  border: solid 1px;
  border-radius: 5px;
}
.userdel{
    margin-top: 29px;
    height: 26px;
    padding: 0 30px;
    border: solid 1px;
    border-radius: 5px;
    color: #994d1e;
}

</style>