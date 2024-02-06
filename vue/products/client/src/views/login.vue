<template>
  <div>
    <div class="conteinal">
      <div class="body">
        <div class="LoginHead">
          <!-- 타이틀 -->
          <H2>WELCOME <BR /> LOGIN</H2>
        </div>
        <div class="loginform">
          <label for="id"><i class="bi bi-file-person" />ID</label>
          <!-- ID input -->
          <b-form-input
            id="id"
            placeholder=" 아이디를 입력해 주세요"
            v-model="userId"
          />
          <label for="pass"><i class="bi bi-lock" />PW</label>
          <!-- PW input -->
          <b-form-input
            type="password"
            id="pass"
            placeholder=" 비밀번호를 입력해 주세요"
            v-model="userPw"
            @keyup.enter="checkLogin(userPw)"
          />
        </div>
        <div class="checkForm">
          <input type="checkbox" name="IdSave" class="IdSave" v-model="IdSave" /> ID 저장
        </div>
        <div class="FindForm">
          <!-- IdPw.vue 이동 -->
          <a href="IdPw" class="Find">ID/PW 찾기</a>
        </div>
        <div class="btnwrap">
          <button class="loginbtn" @click="checkLogin(userPw)">로그인</button
          ><br />
          <a href="SignChack"><button class="loginbtn">회원가입</button></a>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import axios from "axios";

export default {
  name: "checkUser",

  data() {
    return {
      userId: "",
      userPw: "",
      IdSave: true
    };
  },

  created(){
    this.savelogin();
  },

  
  methods: {
    //아이디 저장
    savelogin(){
      const UserId = localStorage.getItem("UserId");
      if(this.IdSave == true){

        this.userId = UserId;
      }
    },
    
    
    //DB 내에 정보를 조회 후 로그인 결정
    async checkLogin(userPw) {
     
      if (this.userId == "") {
        alert("아이디를 입력해주세요.");
        return;
      }
      if (this.userPw == "") {
        alert("비밀번호를 입력해주세요");
        return;
      }
      try {
        await axios
          .post("http://localhost:5000/login", {
            UserId: this.userId,
            UserPassword: this.userPw,
          })
          .then(function (res) {
            //DB 에서 가져온 데이터가 없을 시 alert 메세지 발생
            if (res.data[0] == undefined) {
              alert("아이디가 존재하지 않거나 패스워드가 일치하지 않습니다.");
            }
            //DB 에서 가져온 데이터와 PW가 일치할 시 alert 메세지 발생 후 LocalStorage에 UserNo, UserId 저장 후 메인페이지 이동
            if (res.data[0].UserPassword == userPw) {
              const idKey = "UserNo";
              const saveId = "UserId";
              // console.log(res.data[0].UserId)
              localStorage.setItem(idKey, res.data[0].UserNo);
              localStorage.setItem(saveId, res.data[0].UserId);
              alert("로그인");
              window.location.href = "/";
            }
          })
          .catch(function (res) {
            console.log(res);
          });
      } catch (err) {
        console.log(err);
      }
    },
  },
};
</script>
<style>
.body {
  margin: 0 0;
  padding: 0% 30%;
}

.LoginHead {
  margin-bottom: 20px;
  text-align: center;
  font-size: 45px;
}
.loginform {
  margin: 5px 0;
}
.IdSave {
  flex: 1;
  box-sizing: border-box;
}
.Find {
  flex: 1;
  box-sizing: border-box;
}
.checkForm {
  width: 50%;
  float: left;
}
.FindForm {
  float: right;
  text-align: right;
  width: 50%;
  color: #737373;
}
.FindForm:default {
  color: #737373;
}

.loginbtn {
  height: 50px;
  width: 90%;
  border: solid 1px black;
  border-radius: 20px;
  background-color: rgb(248, 241, 233);
  color: #000;
  font-size: 1rem;
  margin-top: 5px;
}

.btnwrap {
  width: 90%;
  margin: 40px auto;
}
</style>