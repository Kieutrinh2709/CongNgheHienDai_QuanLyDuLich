import React, { Component } from 'react';
import Resort1 from '../../images/dalat.jpg';
import 'bootstrap/dist/css/bootstrap.min.css'
import './Contact.css';
class Contact extends Component {
  render() {
    return (
      <section id="contact" className="section section-contact scrollspy">
        <div className="container">
          <div className="row">
            <div className="col s12 m6">
              <div className="card-panel1 blue white-text center">
                <i className="material-icons medium">ABOUT US</i>
                <h5>Memoriestravel</h5>
                <p1>Khoảnh khắc khi bạn đến được cái đích của chuyến đi, nhìn ngắm mọi thứ xinh đẹp đang thu vào tầm mắt.
                   Lúc đó bạn sẽ nhận ra mọi sự nỗ lực của mình là vô cùng xứng đáng.
                   Bạn có muốn thử cùng chúng tôi?</p1>
              </div>
              <ul className="collection with-header">
                <li className="collection-header">
                  <h6>Main Office</h6>
                </li>
                <li className="collection-item">Memories Travel Booking</li>
                <li className="collection-item"><i class="fas fa-map-marker-alt"></i> 371 Nguyen Kiem, Go Vap District, Ho Chi Minh City, VietNam</li>
                <li className="collection-item"><i class="fas fa-phone"></i> +84 917 803 105</li>
                <li className="collection-item"><i class="fas fa-envelope-square"></i> memoriestour@gmail.com</li>
              </ul>
            </div>
            <div className="col s12 m6">
              <div className="card">
                  <div className="card-image">
                    <a href="/Home" class="">
                      <img src={Resort1} width="150" height="500" alt="SaPa" class="img-responsive dd-img"/>
                      <div class="frame-destination d3">
                        <div class="destination-name">MEMORIESTRAVEL</div>
                        <div class="destination-like">
                          Đã có <span class="num-like">
                            10,000
                            <sup class="k">+</sup>
                            </span> 
                          lượt khách ghé thăm
                        </div>
                      </div>
                    </a>
                  </div>
                </div> 
            </div>
          </div>
        </div>
      </section>
    );
  }
}

export default Contact;