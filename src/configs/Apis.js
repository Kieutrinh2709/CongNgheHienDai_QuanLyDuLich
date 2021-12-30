import axios from "axios"

export let endpoints = {
    "categories": "/categories/",
    "tours": "/tours/",
    "blogs": "/blogs/",
    "blog-detail": (blogId) => `/blogs/${blogId}/`,
    "tour-detail": (tourId) => `/tours/${tourId}/`,
    "users": "/users/",
    "oauth2-info": "/oauth2-info/",
    "login": "/o/token/",
    "current-user": "/users/current-user/",
    "register": "/users/",
    "comments": (tourId) => `/tours/${tourId}/comments/`,
    "add-comment": (tourId) => `/tours/${tourId}/add-comment/`,
    "rating": (tourId) => `/tours/${tourId}/rating/`,
    "book": `/bill/`
}

export default axios.create({
    baseURL: "http://127.0.0.1:8000"
})

