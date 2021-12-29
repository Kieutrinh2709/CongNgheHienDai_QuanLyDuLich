import React, { useState } from 'react'
import './Login.css'
import { useHistory } from "react-router";
import { Button, Form } from 'react-bootstrap';
import { useDispatch,useSelector } from 'react-redux'
import Apis, { endpoints } from "../configs/Apis";
import { loginUser } from "../actionCreators/UserCreators";
import cookies from 'react-cookies'
import { message } from 'antd';
import Layout from '../layout/Layout';
export default function Login() {
    const {user} = useSelector(state => state.user)
    const [username, setUsername] = useState()
    const [password, setPassword] = useState()
    const history = useHistory()
    const dispatch = useDispatch()
    React.useEffect(() => {
        if(user){
            history.push('/')
        }
    }, [user])
    const login = async (event) => {
        event.preventDefault();
        try {
            let data;
            await Apis.get(endpoints['oauth2-info']).then((rs) => {
                console.log(rs.data)
                data = {
                    ...rs.data
                }
            });


            let res = await Apis.post(endpoints['login'], {
                ...data,
                "username": username,
                "password": password,
                "grant_type": "password"
            })

            cookies.save("access_token", res.data.access_token)

            let user = await Apis.get(endpoints['current-user'], {
                headers: {
                    'Authorization': `Bearer ${cookies.load("access_token")}`
                }
            })

            console.info(user)

            cookies.save("user", user.data)

            dispatch(loginUser(user.data))
            history.push("/")
        } catch (err) {
            console.error(err)
        }

    }

    
    return (
        <Layout>
            <div id="login">
                <div className="box-login">
                    <form className="form" onSubmit={login}>
                        <h3 className="text-uppercase text-black text-center pb-3">Đăng nhập </h3>
                        <Form>
                            <Form.Group className="mb-3" controlId="formBasicEmail">
                                <Form.Label>Username </Form.Label>
                                <Form.Control type="text"
                                    placeholder="Email"
                                    value={username}
                                    onChange={(event) => setUsername(event.target.value)} />
                            </Form.Group>
                            <Form.Group className="mb-3" controlId="formBasicPassword">
                                <Form.Label>Password</Form.Label>
                                <Form.Control type="password"
                                    placeholder="Password"
                                    value={password}
                                    onChange={(event) => setPassword(event.target.value)} />
                            </Form.Group>

                        </Form>

                     
                        <Button type="submit" color="secondary" className="w-100 mb-4">Đăng nhập&nbsp;&nbsp;<i class="fas fa-sign-in-alt" aria-hidden="true"></i></Button>
                    </form>
                </div>
            </div>
        </Layout>




    )
}



