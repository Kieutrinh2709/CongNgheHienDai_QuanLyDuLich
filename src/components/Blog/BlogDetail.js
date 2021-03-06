import { useEffect, useState } from "react"
import { Col, Form, Row, Spinner, Image, Button } from "react-bootstrap"
import { useParams } from "react-router"
import { useSelector } from "react-redux"
import Apis, { endpoints } from "../../configs/Apis"
import { Link } from "react-router-dom"
import cookies from 'react-cookies'
import renderHTML from 'react-render-html';
import Moment from "react-moment"


export default function BlogDetail() {
    const [blog, setBlog] = useState(null)
    const [comments, setComments] = useState([])
    const [commentDescription, setCommentDescription] = useState(null)
    const [changed, setChanged] = useState(1)
    let { blogId } = useParams()
    let user = useSelector(state => state.user.user)
    let loadComments = async () => {
        try {
            let res = await Apis.get(endpoints['comments'](blogId))
            setComments(res.data)
        } catch (err) {
            console.error(err)
        }
        loadComments()

    }


    useEffect(() => {
        let loadBlog = async () => {
            try {
                let res = await Apis.get(endpoints["blog-detail"](blogId))
                setBlog(res.data)
            } catch (err) {
                console.error(err)
            }

        }
        loadBlog()
    }, [changed])

    const addComment = async (event) => {
        event.preventDefault()

        try {
            let res = await Apis.post(endpoints['add-comment'](blogId), {
                "description": commentDescription
            }, {
                headers: {
                    "Authorization": `Bearer ${cookies.load("access_token")}`
                }
            }).then((rs)=>{
                loadComments();
            })

            console.info(res.data)
            comments.push(res.data)
            setComments(comments)
            setChanged(comments.length)
        } catch (err) {
            console.error(err)
        }

    }




    if (blog === null)
        return <Spinner animation="border" />

    let comment = <em><Link to="/login">B???n h??y ????ng nh???p</Link> ????? b??nh lu???n</em>
    if (user !== null && user !== undefined) {
        comment = <Form onSubmit={addComment}>
            <Form.Group className="mb-3" controlId="commentDescription">
                <Form.Control as="textarea"
                    value={commentDescription}
                    onChange={(event) => setCommentDescription(event.target.value)}
                    placeholder="Nh???p n???i dung b??nh lu???n" rows={3} />
            </Form.Group>
            <Button type="submit" variant="info">Th??m b??nh lu???n</Button>
        </Form>

    }


    return (
        <>
            <h3 className="text-center text-primary">Chi ti???t blog</h3>
            <Row>
                <Col md={4} xs={12}>
                    <Image src={blog.image} rounded fluid />

                </Col>
                <Col md={8} xs={12}>
                    <p>{blog.title}</p>
                    <p>Ng??y t???o: {new Date(blog.created_date).toDateString()}</p>
                    <p>Ng??y c???p nh???t: {new Date(blog.update_date).toDateString()}</p>

                </Col>
            </Row>
            <hr />
            <div>
                {renderHTML(blog.description)}
            </div>
            <hr />
            {comment}
            <hr />
            {comments.map(c => <Row>
                <Col md={1} xs={3}>
                    <Image src={c.author.image} roundedCircle fluid />
                    <p>{ }</p>
                </Col>
                <Col md={11} xs={9}>
                    <p><em>{c.description}</em></p>
                    <p>B??nh lu???n b???i: {c.author.username}</p>
                    <p>V??o l??c: <Moment fromNow>{c.created_date}</Moment></p>
                </Col>
            </Row>)}


        </>
    )
}