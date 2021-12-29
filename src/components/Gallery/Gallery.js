import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css'
import './Gallery.css';


class Gallery extends Component {
  render() {
    return (
      <section id="gallery" className="section section-gallery scrollspy">
        <div className="container">
          <h1 className="text-primary center">
            Photo Gallery
          </h1>
          <hr/>
         <div className="row">
            <div className="col s12 m3">
              <img className="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?hotel" alt="hotel" />
            </div>
            <div className="col s12 m3">
              <img className="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?restaurant" alt="restaurant" />
            </div>
            <div className="col s12 m3">
              <img className="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?nature" alt="nature" />
            </div>
            <div className="col s12 m3">
              <img className="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?beach" alt=" beach" />
            </div>
          </div>

          <div className="row">
            <div className="col s12 m3">
              <img class="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?beaches" alt="beaches" />
            </div>
            <div className="col s12 m3">
              <img className="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?travel" alt="travel" />
            </div>
            <div className="col s12 m3">
              <img className="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?city" alt="city" />
            </div>
            <div className="col s12 m3">
              <img className="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?adventure, travel" alt="adventure" />
            </div>
          </div>

          <div className="row">
            <div className="col s12 m3">
              <img className="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?sea" alt="sea" />
            </div>
            <div className="col s12 m3">
              <img className="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?building" alt="building" />
            </div>
            <div className="col s12 m3">
              <img className="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?tree" alt="tree" />
            </div>
            <div className="col s12 m3">
              <img className="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?climbing" alt="climbing" />
            </div>
          </div> 
        </div>
      </section>
    );
  }
}

export default Gallery;