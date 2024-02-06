<template>
  <container>
    <div id="column2">
      <div class="bbs_list_header">
        <div class="fboardName">
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
      </div>

      <!-- 게시판 시작 -->
      <div id="list_table" class="skin1">
        <br />
        <div id="fboardTable">
          <div class="tblx"></div>
          <table>
            <thead>
              <tr>
                <th scope="col" class="first num">번호</th>
                <th scope="col" class="title">제목</th>
                <th scope="col" class="author">작성자</th>
                <th scope="col" class="date">날짜</th>
                <th scope="col" class="a_count">조회</th>
              </tr>
            </thead>

            <tbody>
              <!-- v-for 반복문 돌린다. 글번호, 제목, 글쓴이, 게시일, 조회수 순으로  -->
       
                <tr v-for="bRow in boardItem" :key="bRow.BorderNa">
                  <td class="numbers">
                    <a href="#" class="post">{{ bRow.BorderNo }}</a>
                  </td>
                  <td class="title">
                    <router-link to="/FboardDetail"><a> {{ bRow.BorderNa }} </a></router-link>
                    <em>1</em>
                  </td>
                  <td class="user_function">{{ bRow.UserNa }}</td>
                  <td class="regdate numbers" title="2024-01-16 15:39:43">{{ bRow.BorderDate }}</td>
                  <td class="numbers">{{ bRow.BordeView }}</td>
                </tr>
        
            </tbody>
          </table>
          <!-- 게시판테이블 끝 -->

          <!-- 버튼 -->
          <div style="text-align: right; margin: 10px">
            <!-- router-link를 사용하여 버튼 클릭 시 경로를 변경 -->
            <router-link to="/FboardWrite">
              <b-button style="background-color: #7fad39; font-color: white"
                >글 작성하기</b-button
              >
            </router-link>
          </div>
        </div>
        <br />
      </div>

      <div class="fbPageNo">
        <a href="/entiz/enti.php?bn=15&amp;page=1" class="selected">1</a>
        <a href="/entiz/enti.php?bn=15&amp;page=2">2</a>
        <a href="/entiz/enti.php?bn=15&amp;page=3">3</a>
        <a href="/entiz/enti.php?bn=15&amp;page=4">4</a>
        <a href="/entiz/enti.php?bn=15&amp;page=5">5</a>
        <a href="/entiz/enti.php?bn=15&amp;page=6">6</a>
        <a href="/entiz/enti.php?bn=15&amp;page=7">7</a>
        <a href="/entiz/enti.php?bn=15&amp;page=8">8</a>
        <a href="/entiz/enti.php?bn=15&amp;page=9">9</a>
        <a href="/entiz/enti.php?bn=15&amp;page=10">10</a>
        <a class="next" href="/entiz/enti.php?bn=15&amp;page=11">&gt;</a>

        <a
          class="end"
          href="/entiz/enti.php?bn=15&amp;page=62348"
          title="마지막"
          >&gt;&gt;</a
        >&nbsp;<a
          class="other"
          href="/entiz/enti.php?bn=35"
          target="_blank"
          title="이전 자유게시판"
          >이전 자유게시판</a
        >
      </div>
    </div>
    <!-- //list_bottom -->

    <div class="list_search">
      <form id="insearch" name="insearch" action="/entiz/enti.php" method="get">
        <fieldset>
          <legend>게시판 검색</legend>
          <div>
            <input type="hidden" name="bn" value="15" />
            <input
              type="hidden"
              id="searchType"
              name="searchType"
              value="search"
            />
            <select
              name="search1"
              id="search1"
              title="검색대상"
              class="btn1 form_select"
            >
              <option value="1">제목</option>
              <option value="2">내용</option>
              <option value="3">닉네임</option>
            </select>
            <input
              type="text"
              id="searchKey"
              name="keys"
              value=""
              size="20"
              class="form_text"
              placeholder="검색어를 입력하세요"
            />
            <input
              class="btn1"
              id="insearch_submit"
              type="submit"
              value="검색"
              title="검색하기"
            />
          </div>
          <br />
        </fieldset>
      </form>
      <div class="list_btn"></div>
    </div>
    <hr
      style="
        margin-bottom: 30px;
        border: 0px;
        height: 20px;
        background: linear-gradient(to left, transparent, #7fad39, transparent);
      "
    />
  </container>
</template>

<script>
import axios from "axios";
//
export default {
  name: "main1",
  data() {
    return {
      boardItem: [],
    };
  },
  created() {
    this.createBoardList();
  },

  methods: {
    // main2_1 인기검색어 태그로 가지고 오기
    async createBoardList() {
      try {
        const response = await axios.get("http://localhost:5000/boardList");
        // route.js안에 get 과 통일시킴. get해서 response에 데이터를 저장할 것이다
        this.boardItem = response.data;
        console.log(this.boardItem);
      } catch (err) {
        console.log(err);
      }
    },
  },
};
</script>

<style scoped>
h1,
h4 {
  margin-left: 20%;
}

table {
  width: 100%;
  min-width: 70%;
  border-top: 1px solid #444444;
  border-collapse: collapse;
}
th,
td {
  color: #444444;
  border-bottom: 1px solid #444444;
  border-left: 1px solid #444444;
  padding: 10px;
}
th:first-child,
td:first-child {
  border-left: none;
}

.skin1 {
  margin-top: 40px;
  margin-bottom: 40px;
  width: 60%; /* 너비를 화면의 60%로 설정 */
  margin: 0 auto; /* 수평 가운데 정렬 */
}

.fbPageNo,
.end,
.other,
.list_search {
  font-size: 15px;
  text-align: center;
}
</style>
