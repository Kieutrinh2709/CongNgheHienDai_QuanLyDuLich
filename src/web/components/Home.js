import React, { useEffect } from "react";
import {
  BrowserRouter as Router,
  Switch,
  Route,
  useRouteMatch
} from "react-router-dom";

import Login from "../container/Dangnhap/Login";
import Menu from "../container/Trangchu/Menu/Menu";
import Trangchu from './Trangchu';
import Dangky from '../container/Dangky/Dangky';
import Tour from "../container/ChitietTour/Tour/Tour";
import Tintucdetail from "../container/Tintuc/Detailtintuc/Detail";
import Listtour from "../container/ListTour/Listtour";
import Dattour from "../container/ChitietTour/Dattour/Dattour";
import Listtintuc from "../container/Tintuc/Listtintuc/Listtintuc";
import Stripe from "../teststripe/Stripe";
import { useDispatch } from "react-redux";
import { inforData } from "../container/Dangnhap/InforSlice";
import Thongtin from "../container/Trangchu/Thongtin/Thongtin";

export default function NestingExample() {
  const dispatch = useDispatch();
  // useEffect(() => {
  //   const fetchTintucList = async () => {
  //     try {
  //       const res = await tintucApi.getAll();
  //       console.log(res);
  //     } catch (error) {
  //       console.log("loix" + error);
  //     }
  //   }
  //   fetchTintucList();
  // }, []);
  const actiontintuc = async () => { await dispatch(tintucData()) }
  
  const actionbinhluan = async () => { await dispatch(binhluanData()) }
  const actiontag = async () => { await dispatch(tagData()) }
  const actionhoadon = async () => { await dispatch(hoadonData()) }
  const actionngaydi = async () => { await dispatch(ngaydiData()) }
  const actiontour = async () => { await dispatch(tourData()) }
  const actioninfor = async () => { await dispatch(inforData()) }
  useEffect(() => {

    // const unregisterAuthObserver = firebase.auth().onAuthStateChanged(async (user) => {
    //   if (!user) {
    //     console.log("log out");
    //     return;
    //   }
    //   const token = await user.getIdToken();
    //   localStorage.setItem('token', token);
    //   const actionResult = await dispatch(getMe());
    //   const currentUser = unwrapResult(actionResult);

    
    actiontintuc();
    actionbinhluan();
    actiontag();
    actionhoadon();
    actionngaydi();
    actiontour();
    actioninfor();
    // }
    // );
    // return () => unregisterAuthObserver();
  }, []);

  return (
    <Router>
      <div>
        <Switch>
          <Route path="/dangnhap" component="" />
          <Route path="/dangky" component="" />
          <Route exact path="/">
            <Menu />
          </Route>
          <Route path="/">
            <Menu2 />
          </Route>
        </Switch>
        <Switch>
          <Route exact path="/">
            <Trangchu />
          </Route>
          <Route path="/thongtin/:id">
            <Thongtin />
          </Route>
          <Route path="/dangnhap">
            <Ldangnhap />
          </Route>
          <Route path="/dangky">
            <Dangky />
          </Route>
          <Route path="/listtintuc">
            <Listtintuc />
          </Route>
          <Route path="/tour/:id">
            <Tour />
          </Route>
          <Route path="/detail-new/:id">
            <Tintucdetail />
          </Route>
          <Route path="/list-tour/:id">
            <Listtour />
          </Route>
          <Route path="/list-tour">
            <Listtour />
          </Route>
          <Route path='/dat-tour'>
            <Dattour />
          </Route>
          <Route path='/stripe'>
            <Stripe />
          </Route>
        </Switch>
      </div>
    </Router>
  );
}

function Ldangnhap() {
  let { url } = useRouteMatch();
  return (
    <Login url={url} />
  );
}
