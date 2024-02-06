<template>
  <div>
    <div class="conteinal">
      <div class="body">
        <h2 class="checkout__title">회원가입</h2>
        <br />
        <div class="row">
          <div class="col-lg-7">
            <div class="checkout__input" id="sign_up_name">
              <p>이름<span>*</span></p>
              <input
                name="username"
                type="text"
                id="signUserName"
                v-model="userName"
              /><br />
            </div>
          </div>
          <div>
            <div class="checkout__input" id="sign_up_id">
              <p>아이디<span>*</span></p>
              <input name="id" type="text" class="testid" v-model="userId" />
              <button
                type="button"
                class="testbtn"
                @click="checkUserId(userId)"
              >
                중복 확인
              </button>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="checkout__input">
              <p>비밀번호<span>*</span></p>
              <input
                name="pw"
                type="password"
                class="signup_pw"
                placeholder="8자리 이상 입력 하시오"
                v-model="userPw"
              />
            </div>
            <div class="checkout__input">
              <p>비밀번호 확인<span>*</span></p>
              <input name="pw_check" type="password" class="signup_pw_check" />
            </div>
          </div>
          <div>
            <div class="checkout__input">
              <p>전화번호<span>*</span></p>
              <input
                type="text"
                class="input_plus PhonData"
                name="phone"
                placeholder="예) 010-0000-0000"
                v-model="userPhon"
              />
            </div>
          </div>
          <div>
            <div class="checkout__input">
              <p>Email<span>*</span></p>
              <input
                type="text"
                class="input_plus EmailData"
                name="email"
                placeholder="예)email@email.com"
                v-model="userEmail"
              />
            </div>
          </div>

          <div>
            <button
              type="button"
              id="sign_up_btn"
              @click="signUpButton"
              disabled
            >
              회 원 가 입
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import axios from "axios";

export default {
  name: "addUser",
  data() {
    return {
      userName: "",
      userId: "",
      userPw: "",
      userPhon: "",
      userEmail: "",
    };
  },

  methods: {
    created() {
      document.getElementsByClassName("testid").readonly = false;
    },
    
    //입력한 값을 DB 내용과 조회해서 중복확인
    async checkUserId(id) {
      const target = document.getElementById("sign_up_btn");
      try {
        await axios
          .post(`http://localhost:5000/user/${id}`, {
            UserId: this.userId,
          })
          .then(function (res) {
            if (id == "") {
              alert("아이디를 입력해주세요");
              return;
            }
            //DB에 값은 값이 존재 하지 않을 시 alert 발생 후 회원가입 버튼 활성화
            if (res.data[0] == undefined) {
              alert("사용 가능한 아이디 입니다.");
              target.disabled = false;
            } else {
              alert("사용 불가능한 아이디 입니다.");
            }
          })
          .catch(function (err) {
            console.log(err);
          });
      } catch (err) {
        console.log(err);
      }
    },

    //DB에 해당 정보 insert
    async createUser() {
      try {
        await axios.post("http://localhost:5000/user", {
          //insert 위치 지정
          UserNa: this.userName,
          UserId: this.userId,
          UserPassword: this.userPw,
          UserPhon: this.userPhon,
          UserEmail: this.userEmail,
        });
        //input 초기화
        this.userName = "";
        this.userId = "";
        this.userPw = "";
        this.userPhon = "";
        this.userEmail = "";
        //login.vue로 이동
        this.$router.push("/login");
      } catch (err) {
        console.log(err);
      }
    },


    signUpButton() {
      //아이디 입력창 정보를 가져와 내용 유무 확인
      let testid = document.getElementsByClassName("testid");
      if (testid[0].value == "") {
        alert("아이디를 입력해주세요");
      } else {
        this.pwCheck();
      }
    },
    //비밀번호 8자리 이상, 비밀번호 확인  
    pwCheck() {
      let pw = document.getElementsByClassName("signup_pw");
      let pw_check = document.getElementsByClassName("signup_pw_check");
      if (pw[0].value == pw_check[0].value && pw[0].value.length >= 8) {
        this.phonCheck();
      } else if (pw[0].value.length <= 8 || pw_check[0].value.length <= 8) {
        alert("8자리 이상 입력하세요");
      } else if (pw[0].value !== pw_check[0].value) {
        alert("비밀번호가 일치하지 않습니다.");
      }
      return;
    },

    //전화번호 공백, 자리수 확인
    phonCheck() {
      let Pdata = document.getElementsByClassName("PhonData");
      // console.log(Pdata[0].value)
      if (Pdata[0].value == "") {
        alert("전화번호를 입력해주세요");
      } else if (11 <= Pdata[0].value.length <= 13) {
        this.emailCheck();
      } else {
        alert("형식에 같게 작성해주세요");
      }
    },

    //email 내용 확인
    emailCheck() {
      let Edata = document.getElementsByClassName("EmailData");
      if (Edata[0].value == "") {
        alert("Email을 입력해 주세요");
      } else {
        this.createUser();
        alert("가입 완료");
      }
    },
  },
};
</script>
<style>
.body {
  margin: 0 20%;
  padding: 0% 10%;
}

.checkout__input_add {
  margin-bottom: 5px;
  height: 50px;
  width: 550px;
  border: solid 1px;
  border-radius: 10px;
  color: rgb(0, 0, 0);
}

#signUserName,
.testid,
.signup_pw,
.signup_pw_check,
#zip_code,
.input_plus {
  height: 50px;
  width: 400px;
  border: solid 1px;
  border-radius: 10px;
  margin-bottom: 5px;
  color: rgb(0, 0, 0);
  padding: 5px;
}
.checkout__input {
  margin-bottom: 5px;
  font-size: 15pt;
}

#zip_code {
  width: 400px;
}

#btn_zip_code,
.testbtn,
#sign_up_btn {
  height: 50px;
  padding: 5px 5px;
  margin-left: 5px;
  border: solid 1px;
  border-radius: 10px;
  color: black;
  margin-bottom: 5px;
}

#sign_up_btn {
  margin-top: 15px;
  margin-left: 0px;
}
input:disabled {
  background: #e2e1e1;
}
</style>