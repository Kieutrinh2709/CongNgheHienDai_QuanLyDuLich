import React, { Component } from 'react';
import Resort1 from '../../images/dalat.jpg';
import Resort2 from '../../images/danang.jpg';
import Resort3 from '../../images/sapa.jpg';
import '../../../node_modules/materialize-css/dist/js/materialize';
import './Adventure.css';

class Popular extends Component {
  render() {
    return (
      <section id="adventure" className="section section-popular scrollspy">
        <div class="container">
            <div class="row">
            <h4 className="center">
               Du lịch cùng<span className="black-text darken-1"> Memories Tour</span></h4>
            <div className="col s12 m4">
              <div className="card">
                <div className="card-image">
                  <a href="/tourDaLat.js" class="">
                    <img src={Resort1} width="150" height="200" alt="Đà Lạt"class="img-responsive dd-img"/>
                    <div class="frame-destination d3">
                      <div class="destination-name">Đà Lạt</div>
                      <div class="destination-like">
                        Đã có <span class="num-like">
                          1,100
                          <sup class="k">+</sup>
                        </span>
                        lượt khách
                      </div>
                    </div>
                  </a>
                </div>
              </div>
            </div>
            <div className="col s12 m4">
              <div className="card">
                <div className="card-image">
                  <a href="/tourDaNang.js" class="">
                    <img src={Resort2} width="150" height="200" alt="Đà Nẵng" class="img-responsive dd-img"/>
                    <div class="frame-destination d3">
                      <div class="destination-name">Đà Nẵng</div>
                      <div class="destination-like">
                        Đã có <span class="num-like">
                          1,700
                          <sup class="k">+</sup>
                        </span>
                        lượt khách
                      </div>
                    </div>
                  </a>
                </div>
              </div>
            </div>
            <div className="col s12 m4">
              <div className="card">
                <div className="card-image">
                  <a href="/tourSaPa.js" class="">
                    <img src={Resort3} width="150" height="200" alt="SaPa" class="img-responsive dd-img"/>
                    <div class="frame-destination d3">
                      <div class="destination-name">SaPa</div>
                      <div class="destination-like">
                        Đã có <span class="num-like">
                          2,000
                          <sup class="k">+</sup>
                          </span> 
                         lượt khách
                      </div>
                    </div>
                  </a>
                </div>
              </div>
            </div>
            <div className="col s12 m4">
              <div className="card">
                <div className="card-image">
                  <a href="/tourDaLat.js" class="">
                    <img src={Resort1} width="150" height="200" alt="Đà Lạt"class="img-responsive dd-img"/>
                    <div class="frame-destination d3">
                      <div class="destination-name">Đà Lạt</div>
                      <div class="destination-like">
                        Đã có <span class="num-like">
                          1,100
                          <sup class="k">+</sup>
                        </span>
                        lượt khách
                      </div>
                    </div>
                  </a>
                </div>
              </div>
            </div>
            <div className="col s12 m4">
              <div className="card">
                <div className="card-image">
                  <a href="/tourDaNang.js" class="">
                    <img src={Resort2} width="150" height="200" alt="Đà Nẵng" class="img-responsive dd-img"/>
                    <div class="frame-destination d3">
                      <div class="destination-name">Đà Nẵng</div>
                      <div class="destination-like">
                        Đã có <span class="num-like">
                          1,700
                          <sup class="k">+</sup>
                        </span>
                        lượt khách
                      </div>
                    </div>
                  </a>
                </div>
              </div>
            </div>
            <div className="col s12 m4">
              <div className="card">
                <div className="card-image">
                  <a href="/tourSaPa.js" class="">
                    <img src={Resort3} width="150" height="200" alt="SaPa" class="img-responsive dd-img"/>
                    <div class="frame-destination d3">
                      <div class="destination-name">SaPa</div>
                      <div class="destination-like">
                        Đã có <span class="num-like">
                          2,000
                          <sup class="k">+</sup>
                          </span> 
                         lượt khách
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

export default Popular;