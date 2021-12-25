import React, { Fragment } from 'react';
import './App.css';
import Navbar from './container/Layout/Navbar/Navbar';
import Banner from './container/Layout/Banner/Banner';
import Footer from './container/Layout/Footer/Footer';
import Explore from './container/Layout/Explore/Explore';
import Tourtrongnuoc from './container/Layout/Adventure/Adventure';
import Tintuc from './container/Layout/Blog/Blog';
import Gallery from './container/Layout/Gallery/Gallery';
import Contact from './container/Layout/Contact/Contact';
import { BrowserRouter as Router } from 'react-router-dom';

function App() {
  return (
    <Router>
      <Fragment>
      <Navbar />
      <Banner />
      <Explore/>
      <Tourtrongnuoc/>
      <Tintuc/>
      <Gallery />
      <Contact />
      <Footer />
      </Fragment>
    </Router>
  );
}

export default App;
