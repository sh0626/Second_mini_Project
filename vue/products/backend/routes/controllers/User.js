import {deleteUserById, getId, getLogin, getPw, getUser, getUserById, getUserByIdSerch, insertUser} from "../Models/UserModel.js"

// 유저 전체 조회
export const showUser = (req, res) => {
    getUser((err, results) => {             
        if(err) {
            res.send(err);
        } else {
            res.json(results);

        }
    });   
}
// 유저 조회(회원가입)
export const checkUserById = (req, res) => {
    const id = req.params.id;
    getUserById(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}
// 유저 조회(회원관리)
export const checkUserById2 = (req, res) => {
    const id = req.params.id;
    getUserByIdSerch(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


//회원가입
export const createUser = (req, res) => {
    const data = req.body;
    insertUser(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

//회원탈퇴
export const deleteUser = (req, res) => {
    const id = req.params.id;
    deleteUserById(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

//로그인 정보 조회
export const checkLogin = (req, res) =>{
    const data = req.body;
    getLogin(data, (err, results) => {
        if (err){
            console.log(err)
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

//id 찾기
export const getIdtoUser = (req, res) =>{
    const data = req.body;
    getId(data, (err, results) => {
        if (err){
            console.log(err)
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

//pw 찾기
export const getPwtoUser = (req, res) =>{
    const data = req.body;
    getPw(data, (err, results) => {
        if (err){
            console.log(err)
            res.send(err);
        }else{
            res.json(results);
        }
    });
}
