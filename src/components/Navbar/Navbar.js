import React, { Component } from 'react';
import '../../../node_modules/materialize-css/dist/css/materialize.min.css';
import AnchorLink from 'react-anchor-link-smooth-scroll';

const SmoothScroll = () => {
  return (
    <section>
      <div className="navbar-fixed">
        <nav className="blue">
          <div className="container">
            <div class="nav-wrapper">
              <AnchorLink href="!#" class="brand-logo">
                MEMORIES TOUR
              </AnchorLink>
              <AnchorLink
                href="!#"
                data-target="mobile-demo"
                className="sidenav-trigger"
              >
                <i class="material-icons">menu</i>
              </AnchorLink>
              <ul class="right hide-on-med-and-down">
                <li>
                  <AnchorLink href="#home">Trang chủ</AnchorLink>
                </li>
                <li>
                  <AnchorLink href="#explore">Khám phá</AnchorLink>
                </li>
                <li>
                  <AnchorLink href="#adventure">Du lịch</AnchorLink>
                </li>
                <li>
                  <AnchorLink href="#promotion">Ưu đãi</AnchorLink>
                </li>

                <li>
                  <AnchorLink href="#contact">Liên hệ</AnchorLink>
                </li>
                <li>
                  <AnchorLink href="#signin">Đăng nhập</AnchorLink>
                </li>

              </ul>
            </div>
          </div>
        </nav>
      </div>
      <ul class="sidenav" id="mobile-demo">
        {/* <li>
            <div className="user-view">
              <div className="background">
                  <img src={Imgbackground} alt="ocean" />
              </div>
              <AnchorLink href="#user"><img className="circle" src={Imgperson} alt="person" /></AnchorLink>
              <AnchorLink href="#name"><span className="white-text name">John Doe</span></AnchorLink>
              <AnchorLink href="#email"><span className="white-text email">jdandturk@gmail.com</span></AnchorLink>
            </div>
          </li> */}
        <li>
          <AnchorLink href="#home">Trang chủ</AnchorLink>
        </li>
        <li>
          <AnchorLink href="#explore">Khám phá</AnchorLink>
        </li>
        <li>
          <AnchorLink href="#adventure">Du lịch</AnchorLink>
        </li>
        <li>
          <AnchorLink href="#promotion">Ưu đãi</AnchorLink>
        </li>
        <li>
          <AnchorLink href="#contact">Liên hệ</AnchorLink>
        </li>
        <li>
          <AnchorLink href="#signin">Đăng nhập</AnchorLink>
        </li>
      </ul>
    </section>
  );
};

class Navbar extends Component {
  render() {
    return (
      <section>
        <SmoothScroll />
      </section>
    );
  }
}

export default Navbar;
