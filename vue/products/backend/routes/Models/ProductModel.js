import db from "../../config/database.js";

// mypage 회원번호, 이름, 전화번호 부분//
export const mypageInfo = (UserNo, result) => {
    // console.log(UserNo);
    db.query("SELECT user.UserNo, user.UserNa, user.UserPhon FROM user WHERE user.UserNo=?", [UserNo], (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

// 마이페이지 레시피 글 쓴 개수//
export const myrecipe = (UserNo, result) => {
    // console.log(UserNo);
    db.query("SELECT FKuserID, RecipDate, RecipeName, RecipeView FROM recipeboard where recipeboard.FKuserID=?", [UserNo], (err, results) => {
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

// 마이페이지 자유게시판 내가 글 쓴//
export const myboard = (UserNo, result) => {
    db.query("SELECT User_userID, BorderDate, BorderNa, BordeView FROM board where board.User_userID=?", [UserNo], (err, results) => {
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

//마이페이지 자유게시판 글 삭제
export const deleteboardNo = (id, result) => {
    db.query("DELETE  FROM board WHERE BorderNa = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
            // db.query( "DELETE  FROM mypage WHERE User_userID = ?", [id], (err, results) =>{
                //  result(null, results);
                // return deleteUserById;
            // })
        } else {
            result(null, results);
        }
    });   
}

//마이페이지 레시피게시판 글 삭제
export const deleterecipeNo = (id, result) => {
    db.query("DELETE  FROM recipeboard WHERE RecipeName = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

//마이페이지 탈퇴 기능 (회원번호 삭제)
export const deleteUserM = (id, result) => {
//     db.query("DELETE  FROM user WHERE UserNo = ?", [id], (err, results) => {             
//         if(err) {
//             console.log(err);
//             result(err, null);
//         } else {
//             result(null, results);
//             // console.log(results);
//         }
//     });   
// }
db.query("DELETE  FROM user WHERE UserNo = ?", [id], (err, results) => {             
    if(err) {
        result(err, null);
        db.query( "DELETE  FROM board WHERE User_userID = ?", [id], (err, results) =>{
            if(err){
                result(err, null);
            }
            db.query( "DELETE  FROM recipeboard WHERE FKuserID = ?", [id], (err, results) =>{
                if(err){
                    result(err, null);
                }
                result(null, results);
            }                
            )
            result(null, results);
            // return deleteUserById;
        }) 
    } else {
        result(null, results);
    }
});   
}

////////////////////////Main/////////////////////////

//main2_1부분 인기검색어 1~10개 출력
export const main2_1 = (result) => {
    db.query("SELECT recipeboard.RecipeName FROM recipeboard order BY recipeboard.RecipeLike DESC LIMIT 0,10", (err, results) => {
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

//main5부분 인기레시피 1~6개 출력
export const main5_like = (result) => {
    db.query("SELECT recipeboard.TitleImg, recipeboard.RecipeName, user.UserNa, recipeboard.RecipeLike FROM recipeboard INNER JOIN user ON recipeboard.FKuserID=user.UserNo order BY recipeboard.RecipeLike DESC LIMIT 0,6;", (err, results) => {
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

//main5부분 조회많은레시피 1~6개 출력
export const main5_view = (result) => {
    db.query("SELECT recipeboard.TitleImg, recipeboard.RecipeName, user.UserNa, recipeboard.RecipeView FROM recipeboard INNER JOIN user ON recipeboard.FKuserID=user.UserNo order BY recipeboard.RecipeView DESC LIMIT 0,6", (err, results) => {
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

//main5부분 최신레시피 1~6개 출력
export const main5_new = (result) => {
    db.query("SELECT recipeboard.TitleImg, recipeboard.RecipeName, user.UserNa, recipeboard.RecipDate FROM recipeboard INNER JOIN user ON recipeboard.FKuserID=user.UserNo order BY recipeboard.RecipDate DESC LIMIT 0,6", (err, results) => {
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

