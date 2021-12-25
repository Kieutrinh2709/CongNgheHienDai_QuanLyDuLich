import React, { Component } from 'react';
import '../../../node_modules/jquery/dist/jquery';
import '../../../node_modules/materialize-css/dist/js/materialize';
import { Link } from 'react-router-dom';
import './Footer.css';

class Footer extends Component {

  render() {
    return (
      <div>
        <div className="fixed-action-btn">
          <Link className="btn-floating btn-large blue darken-1">
            <i className="large material-icons">mode_edit</i>
          </Link>
          <ul>
            <li><Link className="btn-floating red"><i class="material-icons">chat</i></Link></li>
            <li><Link className="btn-floating green"><i class="material-icons">settings_phone</i></Link></li>
          </ul>
        </div>
        <div className="section darken-2 white-text center">
        <div className="row">
            <div className="col s12">
              <h7>Follow Us</h7>
              <p>Check out on social media for special offers</p>
              <a href ="https://www.facebook.com/profile.php?id=100021342550581" rel = "nofllow" title = "Facebook">
                <i className="fab fa-facebook fa-3x"></i>
              </a>
              <a href ="https://www.instagram.com/callmetruynhh/" rel = "nofllow" title = "Instagram" >
                <i className="fab fa-instagram fa-3x"></i>
              </a>
              <a href="https://github.com/Kieutrinh2709/CongNgheHienDai_QuanLyDuLich" rel = "nofllow" title = "github">
                <i className="fab fa-lg fa-github fa-3x"></i>
              </a>
            </div>
        </div>
        </div>
      </div>
    );
  }
}

export default Footer;