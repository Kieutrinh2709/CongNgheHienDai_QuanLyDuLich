import React, { useRef, useState } from 'react'
import './Register.css'
import {  useHistory } from 'react-router-dom'
import { Button, Form } from "react-bootstrap";
import Apis, { endpoints } from '../configs/Apis'
import Layout from '../layout/Layout';

export default function Register() {
    const [username, setUsername] = useState()
    const [password, setPassword] = useState()
    const [confirmPassword, setConfirmPassword] = useState()
    const [firstName, setFirstName] = useState()
    const [lastName, setLastName] = useState()
    const [email, setEmail] = useState()
    const image = useRef()
    const history = useHistory()

    const register = (event) => {
        event.preventDefault()

        let registerUser = async () => {
            const formData = new FormData()
            formData.append("first_name", firstName)
            formData.append("last_name", lastName)
            formData.append("email", email)
            formData.append("password", password)
            formData.append("username", username)
            formData.append("image", image.current.files[0])

            console.log(image.current.files[0])

            try {
                await Apis.post(endpoints['register'], formData, {
                    headers: {
                        "Content-Type": "multipart/form-data"
                    }
                }).then((rs)=>{
                    history.push("/login")
                })

                
            } catch (err) {
                console.error(err)
            }

        }
        console.log(image.current.files[0])
        if (password !== null && password === confirmPassword) {
            registerUser()
        }
    }

    
    return (
        <Layout>
            <div id="dangky">
                <div className="box-login mt-5 mb-5">
                    <form className="form" onSubmit={register}>
                        <h3 className="text-uppercase text-black text-center pb-3">Đăng ký </h3>
                        <Form>
                            <RegisterForm id="firstName" label="First Name"
                                type="text" value={firstName}
                                change={(event) => setFirstName(event.target.value)} />
                            <RegisterForm id="lastName" label="Last Name"
                                type="text" value={lastName}
                                change={(event) => setLastName(event.target.value)} />
                            <RegisterForm id="email" label="Email"
                                type="email" value={email}
                                change={(event) => setEmail(event.target.value)} />
                            <RegisterForm id="username" label="Username"
                                type="text" value={username}
                                change={(event) => setUsername(event.target.value)} />
                            <RegisterForm id="password" label="Password"
                                type="password" value={password}
                                change={(event) => setPassword(event.target.value)} />
                            <RegisterForm id="confirm" label="Confirm Password"
                                type="password" value={confirmPassword}
                                change={(event) => setConfirmPassword(event.target.value)} />
                            <Form.Group className="mb-3" controlId="avatar">
                                <Form.Label>Avatar</Form.Label>
                                <Form.Control type="file" ref={image} className="form-control" />
                            </Form.Group>
                        </Form>
                        
                        <Button type="submit" color="secondary" className="w-100 mb-4">Đăng ký</Button>
                    </form>
                </div>
            </div>
        </Layout>


    )
}
function RegisterForm(props) {
    return (
        <Form.Group className="mb-3" controlId={props.id}>
            <Form.Label>{props.label}</Form.Label>
            <Form.Control type={props.type}
                value={props.value}
                onChange={props.change} />
        </Form.Group>
    )
}



