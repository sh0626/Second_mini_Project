<template>
  <div>
    <div class="conteinal">
      <div class="body">
        <h2>회원 관리 페이지</h2>

        <div class="userSerch_form">
          <strong>회원 리스트 </strong>
          <input
            type="text"
            class="userSerch"
            name="userSerch"
            placeholder="아이디"
            v-model="userSerch"
            @keyup="SerchUserId(userSerch)"
          />
          <button class="userSerch_btn" @click="SerchUserId(userSerch)">
            검색
          </button>
        </div>
        <hr />
        <div>
          <table class="controlTable">
            <thead>
              <tr>
                <th>회원번호</th>
                <th>아이디</th>
                <th>이름</th>
                <th>등급</th>
                <th>관리</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="item in items" :key="item.UserId">
                <td>{{ item.UserNo }}</td>
                <td>{{ item.UserId }}</td>
                <td>{{ item.UserNa }}</td>
                <td>{{ item.admin }}</td>
                <td>
                  <button
                    class="secession_btn"
                    @click="deleteUser(item.UserNo)"
                    v-bind:disabled="admin"
                  >
                    탈퇴
                  </button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "UserControl",
  data() {
    return {
      items: [],
      userSerch: "",
      admin: false,
    };
  },

  //메소드 실행
  created() {
    this.showUser();
    this.checkAdmin();
  },

  methods: {
    
    //관리자 아이디 확인    
    checkAdmin() {
      const test = localStorage.getItem("UserNo");
      if (test != 1) {
        console.log(this.admin);
        this.admin = true;
      } else {
        // this.admin = true;
      }
    },

    //회원 정보 조회
    async showUser() {
      try {
        // console.log(test)
        const response = await axios.get("http://localhost:5000/user");
        this.items = response.data;
      } catch (err) {
        console.log(err);
      }
    },

    //회원 정보 삭제
    async deleteUser(id) {
      try {
        await axios.delete(`http://localhost:5000/user/${id}`, {});
      } catch (err) {
        console.log(err);
      }
      this.showUser();
    },

    //회원 정보 검색
    async SerchUserId(id) {
      try {
        const response = await axios.post(`http://localhost:5000/user2/${id}`, {
          UserId: this.userSerch,
        });
        this.items = response.data;
        if (id == "") {
          this.showUser();
        }
      } catch (err) {
        console.log(err);
      }
    },
  },
};
</script>

<style scoped>
td {
  color: black;
}
.body {
  margin: 0 0;
  padding: 0% 20%;
}
.userSerch_form {
  font-size: 20px;
}
.userSerch {
  height: 25px;
  margin: 5px 5px;
  margin-bottom: 8px;
  border: solid 1px black;
  padding: 5px;
  font-size: 15px;
}
.userSerch_btn {
  height: 26px;
  padding: 0 5px;
  border: solid 1px;
  border-radius: 5px;
  color: black;
  margin-bottom: 4px;
  font-size: 15px;
}

table,
th,
td {
  border: 1px solid black;
  border-collapse: collapse;
  border-width: 1px;
  margin-top: 20px;
}
th,
td {
  padding: 0.5rem;
  border: 1px solid black;
  text-align: center;
}

.secession_btn {
  height: 26px;
  padding: 0 5px;
  border: solid 1px;
  border-radius: 5px;
}

.controlTable {
  width: 100%;
  color: black;
}
</style>