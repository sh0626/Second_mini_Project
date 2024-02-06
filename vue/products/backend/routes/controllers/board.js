import { getBoardList } from '../Models/boardModel.js';

export const createBoardList= (req, res) =>{
  // const data = req.body;
  getBoardList((err, results) => {
    if(err){
      res.send(err);
    }else{
      res.json(results);
      console.log(results);
    }
    });
}