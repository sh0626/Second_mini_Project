import {
    getRecipe,
    getRecipeDetails,
    getRecipeIMG,
    getIngredient,
    getCategory,
    getDetail, getTitle, getIngd
} from "../Models/RecipeModel.js";

export const showRecipe = (req, res) => {
    getRecipe((err, results) => {
        if (err) {
            console.log(err);
            res.send(err);
        } else {
            res.json(results);
        }
    });
}

export const showRecipeDetails = (req, res) => {
    getRecipeDetails((err, results) => {
        if (err) {
            console.log(err);
            res.send(err);
        } else {
            res.json(results);
        }
    });
}

export const showRecipeIMG = (req, res) => {
    getRecipeIMG((err, results) => {
        if (err) {
            console.log(err);
            res.send(err);
        } else {
            res.json(results);
        }
    });
}

export const showIngredient = (req, res) => {
    getIngredient((err, results) => {
        if (err) {
            console.log(err);
            res.send(err);
        } else {
            res.json(results);
        }
    })
}

export const showCategory = (req, res) => {
    getCategory((err, results) => {
        if (err) {
            console.log(err);
            res.send(err);
        } else {
            res.json(results);
        }
    })
}

export const showDetail = (req, res) => {
    getDetail((err, results) => {
        if (err) {
            console.log(err);
            res.send(err);
        } else {
            res.json(results);
        }
    })
}

export const showTitle = (req, res) => {
    getTitle((err, results) => {
        if (err) {
            console.log(err);
            res.send(err);
        } else {
            res.json(results);
        }
    })
}
export const showIngd = (req, res) => {
    getIngd((err, results) => {
        if (err) {
            console.log(err);
            res.send(err);
        } else {
            res.json(results);
        }
    })
}
