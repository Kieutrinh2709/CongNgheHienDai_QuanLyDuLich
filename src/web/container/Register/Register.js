import React, { useState } from 'react';
import './Register.css';
import { BrowserRouter as Router, Link, useHistory } from 'react-router-dom';
import { Button, IconButton } from "@material-ui/core";
import { message } from 'antd';
import taikhoanApi from '../../../api/TaikhoanApi';

function Dangky() {
    const [state, setState] = useState({ password: '', repassword: '', name: '', linkImg: '', status: 1, email: '' });
    const { password, repassword, status, name, email } = state
    const validateEmail = (email) => {
        const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(String(email).toLowerCase());
    }
    const hangdelimage = (e) => {
        setState({
          ...state,
          linkImg: URL.createObjectURL(e.target.files[0]),
          tenanh: e.target.files[0].name,
          img: e.target.files[0],
        });
    }
    const onsubmit = async (e) => {
        e.preventDefault();
        if (!validateEmail(email)) {
            message.warning("Email không đúng định dạng!")
        } else {
            if (password.trim() === "" || repassword.trim() === "" || name.trim() === "" || email.trim() === "") {
                message.error("Bạn chưa nhập đầy đủ thông tin!");
            } else {
                if (password.length > 5) {
                    if (password === repassword) {
                        if (await taikhoanApi.checkEmail(email).then(data => { return data; }) !== null) {
                            message.error("Email đã được sử dụng!");
                        } else {
                            var UserRoles = [{ roleId: 6 }]
                            taikhoanApi.postuser({ name, status, email, password, UserRoles });
                            history.push('/dangnhap')
                        }
                    } else {
                        message.error("Mật khẩu không trùng khớp!")
                    }
                } else {
                    message.error("Mật khẩu phải ít nhất 6 ký tự!")
                }
            }
        }
    }
    const onchange = (e) => {
        setState({
            ...state,
            [e.target.name]: e.target.value
        })
    }
    const history = useHistory()
    const handgleLG = () => {
        history.push('/dangnhap')
    }
    return (
        <Router>
            <div id="dangky">
                <div className="box-login">
                    <form className="form" onSubmit={onsubmit}>
                        <h3 className="text-uppercase text-black text-center pb-3">Đăng ký </h3>

                        <div className="input-group flex-nowrap mt-3 mb-3">
                            <input type="text" className="form-control" placeholder="Tên của bạn" name='name' value={name} onChange={onchange} aria-label="Username" aria-describedby="addon-wrapping" />
                        </div>
                        <div className="input-group flex-nowrap mt-3 mb-3">
                            <input type="email" className="form-control" placeholder="Email" name='email' value={email} onChange={onchange} aria-label="Email" aria-describedby="addon-wrapping" />
                        </div>
                        <div className="input-group flex-nowrap mt-3 mb-3">
                            <input type="password" className="form-control" placeholder="Mật khẩu" name="password" value={password} onChange={onchange} aria-label="Password" aria-describedby="addon-wrapping" />
                        </div>
                        <div className="input-group flex-nowrap mt-3 mb-3">
                            <input type="password" className="form-control" placeholder="Nhập lại mật khẩu" name="repassword" value={repassword} onChange={onchange} aria-label="Repassword" aria-describedby="addon-wrapping" />


                        </div>
                        <div className="form-group">
                            <label htmlFor="">Thêm poster</label>
                            <div >
                            <input accept="image/*" id="icon-button-file" type="file" onChange={hangdelimage} />
                            <label htmlFor="icon-button-file">
                                <IconButton color="primary" className="mr-5 ml-4" aria-label="upload picture" component="span">
                                <i className="fas fa-camera-retro"></i>
                                </IconButton>
                            </label>
                            {linkImg ? <img src={linkImg} className="ml-5" style={{ borderRadius: "100%" }} height="100px" width="100px" alt="" /> : ''}
                            <br />
                            </div>
                        </div>
                        <div className="form-group form-check">
                            <Link onClick={handgleLG} className="float-right text-dark">Đã có tài khoản?</Link>
                        </div>
                        <Button type="submit" variant="contained" color="secondary" className="w-100 mb-4">Đăng ký</Button>
                    </form>
                </div>
            </div>
        </Router>

    )
}

Dangky.propTypes = {

}

export default Dangky


