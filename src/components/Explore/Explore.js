import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css'
import './Explore.css';

class Explore extends Component {
  render() {
    return (
      <section id="explore" className="section section-icons grey lighten-4 center">
        <div className="container">
          <div className="row">
          <h4 className="center text-primary">
              Khám phá cùng MemoriesTravel</h4>
            <div className="col s6 m3">
              <div className="card-panel">
                <span class= "card-panel-24">
                  <img src = "https://storage.googleapis.com/tripi-assets/mytour/icons/icon_support_247.svg" width = "52" height = "52" alt = "logo_support_24/7"/>
                </span>
                <hr />
                <h2>Chat là có, gọi là nghe, luôn chu đáo, tận tâm và tận tình.</h2>
              </div>
            </div>
            <div className="col s6 m3">
              <div className="card-panel">
                <span class= "card-panel-price">
                  <img src = "https://storage.googleapis.com/tripi-assets/mytour/icons/icon_best_price.svg" width = "52" height = "52" alt = "logo_promotion"/>
                </span>
                <hr  />
                <h2>Luôn có mức giá ưu đãi cho khách hàng.</h2>
              </div>
            </div>
            <div className="col s6 m3">
              <div className="card-panel">
                <span class= "card-panel-payment">
                  <img src = "https://storage.googleapis.com/tripi-assets/mytour/icons/icon_payment.svg" width = "52" height = "52" alt = "logo_payment"/>
                </span>
                <hr   />
                <h2>An toàn, linh hoạt thông qua app Momo và ZaloPay.</h2>
              </div>
            </div>
            <div className="col s6 m3">
              <div className="card-panel">
                <span class= "card-panel-hotel">
                  <img src = "https://storage.googleapis.com/tripi-assets/mytour/icons/icon_total_hotel.svg" width = "52" height = "52" alt = "logo_hotel"/>
                </span>
                <hr />
                
                <h2>Hàng nghìn khách sạn sẽ là nơi nghỉ chân thoải mái nhất cho các bạn.</h2>
              </div>
            </div>
          </div>
        </div>
      </section>
    );
  }
}

export default Explore;