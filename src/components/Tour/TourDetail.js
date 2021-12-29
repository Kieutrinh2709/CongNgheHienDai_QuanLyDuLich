import { useEffect, useState } from "react"
import { Col, Form, Row, Spinner, Image, Button } from "react-bootstrap"
import { useParams } from "react-router"
import { useSelector } from "react-redux"
import Apis, { endpoints } from "../../configs/Apis"
import { Link } from "react-router-dom"
import cookies from 'react-cookies'
import renderHTML from 'react-render-html';
import Rating from "react-rating";
import Moment from "react-moment"


export default function TourDetail() {
    const [tour, setTour] = useState(null)
    const [comments, setComments] = useState([])
    const [commentDescription, setCommentDescription] = useState(null)
    const [rating, setRating] = useState(0)
    const [changed, setChanged] = useState(1)
    let { tourId } = useParams()
    let user = useSelector(state => state.user.user)
    let loadComments = async () => {
        try {
            let res = await Apis.get(endpoints['comments'](tourId))
            setComments(res.data)
        } catch (err) {
            console.error(err)
        }
        loadComments()

    }

    useEffect(() => {
        let loadTour = async () => {
            try {
                let res = await Apis.get(endpoints["tour-detail"](tourId), {
                    headers: {
                        "Authorization": `Bearer ${cookies.load("access_token")}`
                    }

                })
                setTour(res.data)
                setRating(res.data.rate)
            } catch (err) {
                console.error(err)
            }

        }

        loadTour()
    }, [changed])

    const addComment = async (event) => {
        event.preventDefault()

        try {
            let res = await Apis.post(endpoints['add-comment'](tourId), {
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
            // setComments(comments)
            setChanged(comments.length)
        } catch (err) {
            console.error(err)
        }

    }
    const saveRating = async (rate) => {
        if (window.confirm("Bạn có muốn đánh giá tour này?") === true) {
            try {
                let res = await Apis.post(endpoints['rating'](tourId), {
                    "rating": rate
                }, {
                    headers: {
                        "Authorization": `Bearer ${cookies.load("access_token")}`
                    }
                })
                console.info(res.data)
            } catch (err) {
                console.error(err)
            }
        }
    }


    if (tour === null)
        return <Spinner animation="border" />

    let comment = <em><Link to="/login">Bạn hãy đăng nhập</Link> để bình luận</em>
    let r = ""
    if (user !== null && user !== undefined) {
        comment = <Form onSubmit={addComment}>
            <Form.Group className="mb-3" controlId="commentDescription">
                <Form.Control as="textarea"
                    value={commentDescription}
                    onChange={(event) => setCommentDescription(event.target.value)}
                    placeholder="Nhập nội dung bình luận" rows={3} />
            </Form.Group>
            <Button type="submit" variant="info">Thêm bình luận</Button>
        </Form>


        r = <Rating initialRating={rating} onClick={saveRating} />
    }


    return (
        <>
            <h3 className="text-center text-primary">Chi tiết tour</h3>
            <Row>
                <Col md={4} xs={12}>
                    <Image src={tour.image} rounded fluid />
                </Col>
                <Col md={8} xs={12}>
                    <p1>{tour.title}</p1>
                    <p>Ngày khởi hành: {new Date(tour.departure).toDateString()}</p>
                    <p>Thời gian: {tour.time}</p>
                    <p>Giá người lớn: {tour.price_adult}</p>
                    <p>Giá trẻ em : {tour.price_child}</p>
                    <p>Lưu ý: {renderHTML(tour.note)}</p>
                    <Button color="primary" style={{ marginBottom: "20px" }} >Book</Button>
                    <p >
                        {r}
                    </p>
                </Col>
            </Row>
            <hr />
            <div>
                {renderHTML(tour.description)}
            </div>
            <hr />
            {comment}
            <hr />
            {comments.map(c => <Row>
                <Col md={1} xs={3}>
                    <Image src={c.author.image} roundedCircle fluid />
                </Col>
                <Col md={11} xs={9}>
                    <p><em>{c.description}</em></p>
                    <p>Bình luận bởi: {c.author.username}</p>
                    <p>Vào lúc: <Moment fromNow>{c.created_date}</Moment></p>
                </Col>
            </Row>)}


        </>
    )
}