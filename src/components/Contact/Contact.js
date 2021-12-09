import React, { Component } from 'react';
import '../../../node_modules/materialize-css/dist/css/materialize.min.css';
import Momo from '../../images/logomomo.png';
import Zalopay from '../../images/zalopay.png';
import QRMM from '../../images/QRMomo.png';

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
                <h5>Memories tour</h5>
                <p>Khoảnh khắc khi bạn đến được cái đích của chuyến đi, nhìn ngắm mọi thứ xinh đẹp đang thu vào tầm mắt.
                   Lúc đó bạn sẽ nhận ra mọi sự nỗ lực của mình là vô cùng xứng đáng.
                   Bạn có muốn thử cùng chúng tôi?</p>
              </div>
              <ul className="collection with-header">
                <li className="collection-header">
                  <h4>Main Office</h4>
                </li>
                <li className="collection-item">Memories Tour Booking</li>
                <li className="collection-item"><i class="fas fa-map-marker-alt"></i> 371 Nguyen Kiem, Go Vap District, Ho Chi Minh City, VietNam</li>
                <li className="collection-item"><i class="fas fa-phone"></i> +84 917 803 105</li>
                <li className="collection-item"><i class="fas fa-envelope-square"></i> memoriestour@gmail.com</li>
              </ul>
            </div>
            <div className="col s12 m6">
              <div class="other-mobile">
                <p class="other-name">Ứng dụng di động</p>
                <div class="app-info">
                  <p class="mg-bot15">Thanh toán</p>
                  <div class="mg-bot15">
                    <div class="f-left gp">
                      <a href="https://momo.vn/" rel="nofollow">
                        <img src= {Momo} width = "52" height = "52" alt = "momo"/>
                      </a>
                    </div>
                    <div class="f-left l1">
                      <hr width="1" size="500"></hr>
                    </div>
                    <div class="f-left as">
                      <a href="https://zalopay.vn/" rel="nofollow">
                        <img src={Zalopay} width = "52" height = "52" alt = "zalopay"/>
                      </a>
                    </div>
                  </div>
                  <p class="mg-bot15">hoặc quét QR-code</p>
                  <div class="mg-bot15">
                    <div class="f-left gp">
                      <a href="https://momo.vn/" rel="nofollow">
                        <img src={QRMM} width = "52" height = "52" alt = "QR"/>
                      </a>
                      <p>Momo</p>
                    </div>
                    <div class="f-left l2">
                      <hr width="1" size="500"></hr>
                    </div>
                    <div class="f-left as">
                      <a href="https://zalopay.vn/" rel="nofollow">
                        <img src={Zalopay} width = "52" height = "52" alt = "zalopay" />
                      </a>
                      <p>Zalopay</p>
                    </div>
                  </div>
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