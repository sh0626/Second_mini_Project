import express from "express";
//EB
import {checkLogin, checkUserById, checkUserById2, createUser, deleteUser, getIdtoUser, getPwtoUser, showUser} from "./controllers/User.js";
//SUN
import {showRecipe, showRecipeDetails, showRecipeIMG, showIngredient, showCategory, showTitle, showDetail, showIngd} from "./controllers/RBoard.js";
//JY
import { showMypage, showmyrecipe, showmyboard, deleteboard, deleterecipe, deleteUsermy, showmain2_1, showmain5_like, showmain5_view, showmain5_new } from "./controllers/Product.js";

import { createBoardList } from "./controllers/board.js";



const router = express.Router();

//EB
router.get('/user', showUser);
router.post('/userId', getIdtoUser);
router.post('/userPw', getPwtoUser);
router.post('/user/:id', checkUserById);
router.post('/user2/:id', checkUserById2);
router.post('/user', createUser);
router.delete('/user/:id', deleteUser);
router.post('/login', checkLogin);



//JY
router.post('/showmypage', showMypage);
router.post('/showmyrecipe', showmyrecipe);
router.post('/showmyboard', showmyboard);
router.delete('/board/:id', deleteboard);
router.delete('/reboard/:id', deleterecipe);
router.delete('/deleteUsermy/:id', deleteUsermy);
router.get('/showmain2_1', showmain2_1);
router.get('/showmain5_like', showmain5_like);
router.get('/showmain5_view', showmain5_view);
router.get('/showmain5_new', showmain5_new);


//SUN
router.get('/recipe', showRecipe);
router.get('/recipedetails', showRecipeDetails);
router.get('/recipeimg', showRecipeIMG);
router.get('/ingredient', showIngredient);
router.get('/category', showCategory);

router.get('/title', showTitle);
router.get('/ingd', showIngd);
router.get('/detail', showDetail);



//EJ 컨트롤러 안에 있는 js파일의 이름을 가져와야함.
// router.get('/insertBoard', insertBoard) // board에 입력글 추가하고 싶다
router.get('/boardList', createBoardList) 
// boardList 게시판목록에 제목,글쓴이,날짜 끌어와서 추가하고 싶다



export default router;