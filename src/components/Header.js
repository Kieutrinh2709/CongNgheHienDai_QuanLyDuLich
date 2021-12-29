import { useEffect, useState } from "react";
import { Button, Container, Form, FormControl, Nav, Navbar } from "react-bootstrap";
import { Link } from "react-router-dom";
import Apis, { endpoints } from "../configs/Apis";
import { useHistory } from "react-router";
import { useDispatch, useSelector } from "react-redux";
import cookies from "react-cookies"
import { logoutUser } from "../actionCreators/UserCreators";
import  "./Header.css";
export default function Header() {
    const [categories, setCategories] = useState([])
    const [q, setQ] = useState("")
    const history = useHistory()
    const user = useSelector(state => state.user.user)
    const dispatch = useDispatch()

    useEffect(() => {
        const loadCategories = async () => {
            let res = await Apis.get(endpoints['categories'])
            console.log(res.data);
            setCategories(res.data)

        }

        loadCategories()

    }, [])


    const logout = (event) => {
        event.preventDefault()
  
        cookies.remove("access_token")
        cookies.remove("user")
        dispatch(logoutUser())
      }
    const search = (event) => {
        event.preventDefault()
        history.push(`/?q=${q}`)
    }
    let path = <>
        <Link className="nav-link text-primary"  to="/login">Đăng nhập</Link>
        <Link className="nav-link text-primary"  to="/register">Đăng ký</Link>

    </>
    if (user !== null && user !== undefined) {
        path = <>
          <Link className="nav-link text-primary"  to="/">{user.username}</Link>
          <Link className="nav-link text-primary"  onClick={logout}>Đăng xuất</Link>
        </>
    }
        


    return (
        <Navbar bg="light" expand="lg">
            <Container>
                <Navbar.Brand href="/">MEMORIESTRAVEL</Navbar.Brand>
                <Navbar.Toggle aria-controls="basic-navbar-nav" />
                <Navbar.Collapse id="basic-navbar-nav">
                    <Nav className="me-auto">
                        <Link className = "nav-link" to = "/"spy={true}
                        smooth={true}
                        offset={-70}
                        duration={500}>Trang chủ</Link>
                        {categories.map(c => {
                            let path = `/?category_id=${c.id}` 
                            return <Link className="nav-link" to ={path}>{c.name}</Link>

                        })
                    }   

                    {path}
                
                    </Nav>
                    <Form className="d-flex" onSubmit={search}>
                        <FormControl
                            type="search"
                            placeholder="Nhap tu khoa..."
                            className="mr-2"
                            aria-label="Search"
                            value={q}
                            onChange={(event) => setQ(event.target.value)}
                        />
                        <Button type="submit" variant="outline-primary">Tìm</Button>
                    </Form>
                </Navbar.Collapse>
            </Container>
        </Navbar>
    )
  }