import db from "../../config/database.js";

export const getRecipe = (result) => {
    db.query("SELECT UserNo, userNa, RecipeName, TitleImg\n" +
        "FROM recipeboard r inner JOIN user u\n" +
        "WHERE u.UserNo = r.FKuserID;\n", (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const getRecipeDetails = (result) => {
    db.query("SELECT \n" +
        "r.TitleImg, r.RecipeName, \n" +
        "u.UserNa, r.RecipDate, r.RecipeLike, r.RecipeView, \n" +
        "r.RecipTime, r.RecipeServings, i.ingdName, i.ingdAm  \n" +
        "FROM recipeboard r, ingredient i, recipedetails d, user u \n" +
        "WHERE r.RecipeID = i.FK_Recipe_ID and u.UserNo = r.FKuserID;", (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const getRecipeIMG = (result) => {
    db.query("SELECT\n" +
        "r.RecipeID, d.FK_recipedetails_recipeboard, \n" +
        "r.RecipeName, d.recipedetails, d.RecipeComImg \n" +
        "FROM recipedetails d JOIN recipeboard r \n" +
        "WHERE d.FK_recipedetails_recipeboard = r.RecipeID;", (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const getIngredient = (result) => {
    db.query("SELECT * FROM ingredient;", (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    })
}

export const getCategory = (result) => {
    db.query("SELECT DISTINCT RecipeCate FROM recipeboard;", (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    })
}

export const getTitle = (result) => {
    db.query("SELECT r.TitleImg, r.RecipeName,\n" +
        "u.UserNa, r.RecipDate, r.RecipeLike, r.RecipeView,\n" +
        "r.RecipTime, r.RecipeServings\n" +
        "FROM recipeboard r, user u\n" +
        "WHERE r.FKuserID=u.UserNo\n" +
        "AND r.RecipeID=2;", (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    })
}

export const getIngd = (result) => {
    db.query("SELECT ingdName, ingdAm\n" +
        "FROM ingredient\n" +
        "WHERE FK_Recipe_ID=2;", (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    })
}

export const getDetail = (result) => {
    db.query("SELECT RecipeDetailsNo, RecipeDetails, RecipeComImg\n" +
        "FROM recipedetails\n" +
        "WHERE recipedetails.FK_recipedetails_recipeboard=2;", (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    })
}