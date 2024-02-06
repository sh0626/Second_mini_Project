<template>
  <div>
    <div class="conteinal">
      <div class="body">
        <div id="find_id">
          <div class="find_text">
            <h3>아이디 찾기</h3>
          </div>
          <div class="checkout__input">
            <p>이름<span>*</span></p>
            <input type="text" class="id_find_name" v-model="userName"/>
          </div>
          <div class="checkout__input">
            <p>전화번호<span>*</span></p>
            <input type="text" class="id_find_phone" v-model="userPhon"/>
          </div>
          <button type="button" class="id_find_btn" @click="idFindButton">
            아이디 찾기
          </button>
        </div>
        <hr />
        <div id="find_pw"></div>
        <div class="find_text">
          <h3>비밀번호 찾기</h3>
        </div>
        <div class="checkout__input">
          <p>아이디<span>*</span></p>
          <input type="text" class="pw_find_id" v-model="userId" />
        </div>
        <div class="checkout__input">
          <p>전화번호<span>*</span></p>
          <input type="text" class="pw_find_phone" v-model="userPhon2" />
        </div>
        <button type="button" class="pw_find_btn" @click="pwFindButton">비밀번호 찾기</button>
      </div>
    </div>
  </div>
</template>
<script>
import axios from "axios";
export default {
  data() {
    return {
      userName: "",
      userPhon: "",
      userId: "",
      userPhon2: ""
    };
  },

  methods: {
  async idFindButton(){
      try{
        await axios.post(`http://localhost:5000/userId`, {
        UserNa: this.userName,
        UserPhon: this.userPhon

      }) .then(function(res){
        console.log(res.data[0]);
        if(res.data[0] == undefined){
          alert("아이디가 존재하지 않습니다.")
      }else{alert("아이디는 "+res.data[0].UserId+" 입니다.")}
        console.log(res.data[0].UserId); 
              }).catch(function(res){
                console.log(res);
      });
      }catch(err){
      console.log(err);
      }
  },
  async pwFindButton(){
      try{
        await axios.post(`http://localhost:5000/userPw`, {
        UserId: this.userId,
        UserPhon: this.userPhon2

      }) .then(function(res){
        console.log(res.data[0]);
        if(res.data[0] == undefined){
          alert("일치하는 정보가 없습니다.")
      }else{alert("비밀번호는 "+res.data[0].UserPassword+" 입니다.")}
        console.log(res.data[0].UserId); 
              }).catch(function(res){
                console.log(res);
      });
      }catch(err){
      console.log(err);
      }
  }
}
}

</script>
<style>
.body {
  margin: 0 0;
  padding: 0% 10%;
}

.id_find_name, .id_find_phone, .pw_find_id, .pw_find_phone {
  height: 50px;
  width: 400px;
  border: solid 1px;
  border-radius: 10px;
  margin-bottom: 5px;
  color: rgb(0, 0, 0);
  padding: 5px;
}

#find_id{
    margin-bottom: 40px;
}

.id_find_btn, .pw_find_btn{
    height: 50px;
    padding: 5px 5px;
    margin-left: 5px ;
    border: solid 1px;
    border-radius: 10px;
    color:black;
    margin-bottom: 5px;
    
}

.id_find_btn, .pw_find_btn{
    margin-top: 15px;
    margin-left: 0px;
}
</style>