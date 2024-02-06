import db from "../../config/database.js";

export const getBoardList = (result) => {
  db.query("SELECT BorderNo, BorderNa, user.UserNa, BorderDate, BordeView " +
  "FROM board INNER JOIN user ON board.User_userID = user.UserNo " +
  "ORDER BY `BorderNo` DESC", (err, results) => {             
      if(err) {
          console.log(err);
          result(err, null);
      } else {
          result(null, results);
          // console.log(results);
      }
  });   
}



// // Get All board List
// export const getBoardList = (result) => {
//   db.query("SELECT * FROM board", (err, results) => {             
//       if(err) {
//           console.log(err);
//           result(err, null);
//       } else {
//           result(null, results);
//           // console.log(results);
//       }
//   });   
// }



// //board 테이블에 아래 데이터 추가
// // Insert Into board Table
// export const insertBoard = (data, result) => {
//   db.query("INSERT INTO board SET ?", [data], (err, results) => {
//      if(err) {
//       console.log(err);
//       result(err, null);
//     } else {
//       result(null, results);
//     }
//   });
// };


//board 테이블에서 글 목록을 조회?? 미완성
// export const getBoardList = (result) => {
//   const query = "SELECT BorderNo, BorderNa FROM board";

//   db.query(query, (err, results) => {
//     if (err) {
//       console.error(err);
//       result(err, null);
//     } else {
//       result(null, results);
//     }
//   });
// };



// Delete Product to Database
// export const deleteUserById = (id, result) => {
//     db.query("DELETE  FROM user WHERE UserNo = ?", [id], (err, results) => {             
//         if(err) {
//             console.log(err);
//             result(err, null);
//             db.query( "DELETE  FROM mypage WHERE FK__user = ?", [id], (err, results) =>{
//                  result(null, results);
//                 // return deleteUserById;
//             }) 
//         } else {
//             result(null, results);
//         }
//     });   
// }