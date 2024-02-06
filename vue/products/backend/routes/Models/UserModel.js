import db from "../../config/database.js";
 
// 유저 전체 조회
export const getUser = (result) => {
    db.query("SELECT * FROM user", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
            // console.log(results);
        }
    });   
}

// 유저조회(회원가입)
export const getUserById = (id, result) => {
    db.query("SELECT * FROM user WHERE UserId = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        }else {
            result(null, results);

        }
    });   
}

//유저조회(회원관리)
export const getUserByIdSerch = (id, result) => {
    db.query("SELECT * FROM user WHERE UserId like ?", [id+"%"], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        }else {
            // console.log(results)
            result(null, results);

        }
    });   
}

//회원가입
export const insertUser = (data, result) => {
    db.query("INSERT INTO user SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
};

//회원탈퇴
export const deleteUserById = (id, result) => {
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
 
//로그인 정보 조회
export const getLogin = (data, result) => {
    db.query("SELECT * FROM user WHERE UserId = ? and UserPassword = ?", [data.UserId, data.UserPassword], (err, results) =>{
        if(err) {
            console.log(err);
            result(err, null);
        }else{
            result(null, results);
    }
    });
}

//id 찾기
export const getId = (data, result) => {
    // console.log(data)
    db.query("SELECT UserId FROM user WHERE UserNa = ? and UserPhon = ?", [data.UserNa, data.UserPhon], (err, results) =>{
        if(err) {
            console.log(err);
            result(err, null);
        }else{
            console.log(results)
            result(null, results);
    }
    });
}

//pw 찾기
export const getPw = (data, result) => {
    // console.log(data)
    db.query("SELECT UserPassword FROM user WHERE UserId = ? and UserPhon = ?", [data.UserId, data.UserPhon], (err, results) =>{
        if(err) {
            console.log(err);
            result(err, null);
        }else{
            console.log(results)
            result(null, results);
    }
    });
}
