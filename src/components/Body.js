
import { BrowserRouter, Route, Switch } from "react-router-dom";
import Footer from "./Footer/Footer";
import Home from "../pages/Home"
import Header from "./Header";
import Banner from "./Banner/Banner";
import Explore from "./Explore/Explore";
import Gallery from "./Gallery/Gallery";
import Contact from "./Contact/Contact";
import Login from "../pages/Login";
import Register from "../pages/Register";
import Blog from "./Blog/Blog";
import TourDetail from "./Tour/TourDetail";
import BlogDetail from "./Blog/BlogDetail";

export default function Body() {
    return (
           <BrowserRouter>
               <Header/>
                <Banner />
                <Explore/>
               <Switch>
                   <Route exact path = "/" component={Home}></Route>
                   <Route exact path="/tours/:tourId/" component={TourDetail} />
                   <Route exact path="/blogs/:blogId/" component={BlogDetail} />
                   <Route exact path="/login" component={Login} />
                   <Route exact path="/register" component={Register} />
               </Switch>
               <Blog />
               <Gallery/>
               <Contact />
               <Footer/>
           </BrowserRouter>

    )
}