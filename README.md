## [레시판 - 레시피 게시판]

### 개발환경

- Front : Vue.js
  
- Server : Node Express (서버 겸 벡엔드)
  
- DB : MariaDB
  
- AWS EC2
  

### 개발기간

- 전체 개발 기간 : 2024.01.22 ~ 2024.01.26

### 내가 맡은 부분

- DB로부터 데이터를 추출하여 레시피 목록 게시판 및 상세 페이지 제작
  
- 레시피 등록하여 DB에 데이터 저장

## 페이지별 설명

### [메인 페이지]

![2024-05-13-18-14-32-image](https://github.com/sh0626/First_mini_Project/assets/81377801/0b39d283-b243-4e07-8715-55e39adc3a79)

### [회원가입 페이지]

- '*’로 표시된 필수 항목을 입력해야 회원가입 완료됨
  
- 아이디는 DB의 정보와 조회해서 중복확인
  구현
  
- 비밀번호는 정규식을 통해 유효성 검사 구현
  
- 전화번호는 ‘-‘를 뺴고 작성시 “형식에 같게 작성해주세요”alert창 활성화
  
- Email은 작성 안하면 “Email을 입력해주세요”alert창 활성화
  

![2024-05-13-18-25-19-image](https://github.com/sh0626/First_mini_Project/assets/81377801/469d8ad0-58d0-450b-a1ea-254e1508b3bd)

### [마이페이지]

- 본인이 적은 게시글에 대한 건수와 게시글의 간단한 정보 표시 및 삭제 가능
  
- 탈퇴를 누르면 해당 계정 DB에서 삭제
  

![2024-05-13-18-26-00-image](https://github.com/sh0626/First_mini_Project/assets/81377801/e7244127-4e25-44b8-87ab-da0a2dd15269)

### [로그인 페이지]

- 로그인시 DB의 정보와 일치하는지 확인 후 로그인 실행
  
- 아이디를 잘못 입력할 경우 로그인 거부되며 ‘아이디가 존재하지 않거나 패스워드가 일치하지 않습니다.’ alert창 활성화
  

![2024-05-13-18-26-49-image](https://github.com/sh0626/First_mini_Project/assets/81377801/5d03e6b9-82e7-42d0-a2fa-e1837cfe6134)

### [아이디/비밀번호 찾기 페이지]

- 각각 입력한 정보를 DB에 저장된 정보와 비교하여 일치하는 정보가 있는 경우 alert창으로 해당 정보를 보여줌

![2024-05-13-18-27-45-image](https://github.com/sh0626/First_mini_Project/assets/81377801/653919e9-387a-410b-af35-94910b784056)

### [관리자 페이지 (회원 관리 페이지)]

- 관리자 아이디로 로그인할 경우 회원들의 계정을 탈퇴 시킬 수 있음

![2024-05-13-18-28-27-image](https://github.com/sh0626/First_mini_Project/assets/81377801/1ccd0c4c-cfa9-4ed4-8eae-a7b63b3e073a)

### [레시피 목록 게시판]

- DB에 있는 레시피 정보를 불러와 v-for문으로 정해진 양식을 반복 배치함
  
- 각 레시피를 누르면 레시피 상세 페이지로 넘어감
  

![2024-05-13-18-29-01-image](https://github.com/sh0626/First_mini_Project/assets/81377801/c86d2528-a380-416e-8044-b318e625a913)

### [레시피 상세 게시판]

- 음식 사진과 글쓴이, 올린시간, 조회수, 좋아요, 조리순서, 몇 인분인지 볼 수 있음

![2024-05-13-18-29-43-image](https://github.com/sh0626/First_mini_Project/assets/81377801/07ca45fa-e361-473b-b9b9-97667cad067c)

### [레시피 등록 게시판]

- 레시피 제목과 재료, 요리 순서와 사진을 등록 가능
  
- 추가 버튼을 누르면 해당 양식이 추가되어 나타남
  

![2024-05-13-18-30-56-image](https://github.com/sh0626/First_mini_Project/assets/81377801/e551112c-920c-4e3b-926a-4e0bf8df4876)

### [자유게시판]

- 유저들이 자유롭게 글을 올리는 게시판

![2024-05-13-18-31-27-image](https://github.com/sh0626/First_mini_Project/assets/81377801/969bcfcf-d2a1-41f2-87e5-865656a510ec)

### [자유게시판 상세 페이지]

- 게시글 내용과 댓글을 볼 수 있다

![2024-05-13-19-31-29-image](https://github.com/sh0626/First_mini_Project/assets/81377801/f20d6774-6d61-4e68-be6b-38a1c71f720d)

### [자유게시판 등록 페이지]

![2024-05-13-19-31-53-image](https://github.com/sh0626/First_mini_Project/assets/81377801/8d6657f6-f505-4a82-82a0-b3107496e791)
