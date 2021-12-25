import React, { Component } from 'react';
import '../../../node_modules/materialize-css/dist/css/materialize.min.css';
import Imgone from '../../images/canhdep1.png';
import Imgtwo from '../../images/halong.jpg';
import Imgthree from '../../images/hoian.jpg';
import './Banner.css';

class Banner extends Component {
  render() {
    return (
      <section className="slider" id="home">
        <ul className="slides">
          <li>
            <img src={Imgone} alt="Vacation" />
            <div className="caption left-align">
              <h6>Điểm đến của bạn là gì?</h6>
              <h5 className="light grey-text text-lighten-3 hide-on-small-only">Hãy nhớ rằng, hạnh phúc là một hành trình, không phải đích đến!</h5>
            </div>
          </li>
          <li>
            <img src={Imgtwo} alt="Budgets" />
            <div className="caption center-align">
              <h6>Xách balo lên và đi</h6>
              <h5 className="light grey-text text-lighten-3 hide-on-small-only">Hãy ngắm nhìn thế giới. Điều đó tuyệt vời hơn bất cứ giấc mơ nào.</h5>
            </div>
          </li>
          <li>
          <img src={Imgthree} alt="Getaways" />
            <div className="caption right-align">
              <h6>Hãy tận hưởng</h6>
              <h5 className="light grey-text text-lighten-3 hide-on-small-only">Sống, du lịch, mạo hiểm và đừng hối tiếc</h5>
            </div>
          </li>
        </ul>
        {/* <div id="home" className="carousel carousel-slider center">
          <div className="carousel-fixed-item center">
            <Link className="btn waves-effect white grey-text darken-text-2">button</Link>
          </div>
          <div className="carousel-item red white-text" to="#one!">
            <h2>First Panel</h2>
            <p className="white-text">This is your first panel</p>
          </div>
          <div className="carousel-item amber white-text" to="#two!">
            <h2>Second Panel</h2>
            <p className="white-text">This is your second panel</p>
          </div>
          <div className="carousel-item green white-text" to="#three!">
            <h2>Third Panel</h2>
            <p className="white-text">This is your third panel</p>
          </div>
          <div className="carousel-item blue white-text" to="#four!">
            <h2>Fourth Panel</h2>
            <p className="white-text">This is your fourth panel</p>
          </div>
        </div> */}
      </section>
    );
  }
}

export default Banner;