import { createRouter, createWebHistory } from "vue-router";
import MainView from "@/views/MainView.vue";
import FilmView from "@/views/FilmView.vue";
import LoginView from "@/views/LogInView.vue";
import NavFooterView from "@/views/NavFooterView.vue";
import StudioView from "@/views/StudioView.vue";
import SearchView from "@/views/SearchView.vue";
import PieceDetailView from "@/views/PieceDetailView.vue";
import StoryView from "@/views/StoryView.vue";

const routes = [
  {
    path: "/",
    name: "navFooter",
    component: NavFooterView,
    children: [
      {
        path: "/",
        name: "main",
        component: MainView,
      },
      {
        path: "/film",
        name: "film",
        component: FilmView,
      },
      {
        path: "/story",
        name: "story",
        component: StoryView,
        props: { type: Number },
      },
      {
        path: "/login",
        name: "login",
        component: LoginView,
      },
      {
        path: "/search",
        name: "search",
        component: SearchView,
        children: [
          {
            path: "/search/category/:categoryId/menu/:menuId",
            name: "search-group",
            component: SearchView,
            children: [
              {
                path: "/search/category/:categoryId/menu/:menuId/keyword/:keyword",
                name: "search-result",
                component: SearchView,
              },
            ],
          },
        ],
      },
      {
        path: "/piece/:pieceId",
        name: "piece",
        component: PieceDetailView,
      },
    ],
  },
  {
    path: "/studio/:studioId",
    name: "studio",
    component: StudioView,
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
