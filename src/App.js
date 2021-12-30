
import './App.css';
import 'antd/dist/antd.css';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import Home from './pages/Home';
import Login from './pages/Login';
import Register from './pages/Register';
import TourDetail from './components/Tour/TourDetail';
import BlogDetail from './components/Blog/BlogDetail';


function App() {
  return (
    <BrowserRouter>
      <Switch>
        <Route path={'/'} exact component={Home} />
        <Route path={'/login'} exact component={Login}/>
        <Route path={'/register'} exact component={Register}/>
        <Route path={'/tours/:tourId/'} exact component={TourDetail}/>
        <Route path={'/blogs/:blogId/'} exact component={BlogDetail}/>

      </Switch>
    </BrowserRouter>
  );
}

export default App;