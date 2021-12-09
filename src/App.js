import React, { Fragment } from 'react';
import './App.css';
import Navbar from './components/Navbar/Navbar';
import Banner from './components/Banner/Banner';
import Footer from './components/Footer/Footer';
import Explore from './components/Explore/Explore';
import Adventure from './components/Adventure/Adventure';
import Newspaper from './components/Newspaper/Newspaper';
import Gallery from './components/Gallery/Gallery';
import Contact from './components/Contact/Contact';
import { BrowserRouter as Router } from 'react-router-dom';

function App() {
  return (
    <Router>
      <Fragment>
      <Navbar />
      <Banner />
      <Explore/>
      <Adventure />
      <Newspaper/>
      <Gallery />
      <Contact />
      <Footer />
      </Fragment>
    </Router>
  );
}

export default App;
