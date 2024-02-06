import {
    createRouter,
    createWebHistory
} from 'vue-router'

import Login from '../views/login.vue'
import SignChack from '../views/SignChack.vue'
import SignUp from '../views/SignUp.vue'
import IdPw from '../views/IdPw.vue'
import UserControl from '../views/UserControl.vue'
import main from '../views/main.vue'
import RecipeBoard from '../views/RecipeBoard.vue'
import RecipeDetails from "../views/RecipeDetails.vue";
import RecipeRegister from "../views/RecipeRegister.vue";
import Mypage from "../views/Mypage.vue";
import TipBoard from "../views/TipBoard.vue";
import TipboardDetail from "../views/TipboardDetail.vue";
import FboardList from "../views/FboardList.vue";
import FboardWrite from "../views/FboardWrite.vue";
import FboardDetail from "../views/FboardDetail.vue";


const routes = [
    {
        path: '/',
        name: 'main',
        component: main
    },
    {
        path: '/login',
        name: 'login',
        component: Login
    },
    {
        path: '/SignChack',
        name: 'SignChack',
        component: SignChack
    },
    {
        path: '/SignUp',
        name: 'SignUp',
        component: SignUp
    },
    {
        path: '/IdPw',
        name: 'IdPw',
        component: IdPw
    },
    {
        path: '/UserControl',
        name: 'UserControl',
        component: UserControl
    },
    {
        path: '/RecipeBoard',
        name: 'RecipeBoard',
        component: RecipeBoard
    },
    {
        path: '/RecipeDetails',
        name: 'RecipeDetails',
        component: RecipeDetails
    },
    {
        path: "/RecipeRegister",
        name: "RecipeRegister",
        component: RecipeRegister
    },
    {
        path: "/Mypage",
        name: "Mypage",
        component: Mypage
    },

    
    {
        path: "/FboardWrite",
        name: "FboardWrite",
        component: FboardWrite 
    },
    {
        path: "/FboardList",
        name: "FboardList",
        component: FboardList,
    },
    {
        path: "/FboardDetail",
        name: "FboardDetail",
        component: FboardDetail
    },
    {
        path: "/TipBoard",
        name: "TipBoard",
        component: TipBoard,
    },
    {
        path: "/TipboardDetail",
        name: "TipboardDetail",
        component: TipboardDetail,
    }
    
]


const router = createRouter({
    history: createWebHistory(),
    routes
})
// process.env.BASE_URL
export default router