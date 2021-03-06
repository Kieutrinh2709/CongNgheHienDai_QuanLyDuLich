import { useEffect, useState } from "react"
import { Col, Form, Row, Spinner, Image, Button, } from "react-bootstrap"
import { useParams } from "react-router"
import { useSelector } from "react-redux"
import Apis, { endpoints } from "../../configs/Apis"
import { Link } from "react-router-dom"
import cookies from 'react-cookies'
import renderHTML from 'react-render-html';
import Rating from "react-rating";
import Moment from "react-moment"
import Modal from 'antd/lib/modal/Modal';


export default function TourDetail() {
    const [tour, setTour] = useState(null)
    const [comments, setComments] = useState([])
    const [commentDescription, setCommentDescription] = useState(null)
    const [rating, setRating] = useState(0)
    const [changed, setChanged] = useState(1)
    const [visible, setVisible] = useState(false)
    const [adultNum, setAdultNum] = useState(1)
    const [childNum, setChildNum] = useState(0)
    const [total, setTotal] = useState()
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
                setRating(res.data.rate)
                setTour(res.data)
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
            }).then((rs) => {
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
        if (window.confirm("B???n c?? mu???n ????nh gi?? tour n??y?") === true) {
            try {
                let res = await Apis.post(endpoints['rating'](tourId), {
                    "rating": rate
                }, {
                    headers: {
                        "Authorization": `Bearer ${cookies.load("access_token")}`
                    }
                })
                setRating(res.data.rate)
                console.info(res)
            } catch (err) {
                console.error(err)
            }
        }
    }


    if (tour === null)
        return <Spinner animation="border" />

    let comment = <em><Link to="/login">B???n h??y ????ng nh???p</Link> ????? b??nh lu???n</em>
    let r = ""
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


        r = <Rating initialRating={rating} onClick={saveRating} />
    }

    const bookTour = () => {
        
        setVisible(true);
    }
    const handleOk = async () => {
    let res = await Apis.post(endpoints['book'], {
            "user": cookies.load('user').id,
            "tour": tourId,
            "total_price": total
        }, {
            headers: {
                "Authorization": `Bearer ${cookies.load("access_token")}`
            }
        })
        setVisible(false);
    }
    const handleCancel = () => {
        setVisible(false);
    }
    const changeAdult = (e)=>{
    
    setAdultNum(e.target.value); changeTotal(e.target.value, childNum); 
    }
    const changeChild = (e)=>{
     
    setChildNum(e.target.value); changeTotal(adultNum, e.target.value);
    }
    const changeTotal=(a, b)=>{
        if(a == null && b == null){
            setTotal(0)
        }
        else if(a == null){
            setTotal( b*tour.price_child)
        }else if(b == null){
            setTotal(a*tour.price_adult )
        }
        else{
            setTotal(a*tour.price_adult + b*tour.price_child)
        }
    }
    return (
        <>
            <h3 className="text-center text-primary">Chi ti???t tour</h3>
            <Row>
                <Col md={4} xs={12}>
                    <Image src={tour.image} rounded fluid />
                </Col>
                <Col md={8} xs={12}>
                    <p1>{tour.title}</p1>
                    <p>Ng??y kh???i h??nh: {new Date(tour.departure).toDateString()}</p>
                    <p>Th???i gian: {tour.time}</p>
                    <p>Gi?? ng?????i l???n: {tour.price_adult}</p>
                    <p>Gi?? tr??? em : {tour.price_child}</p>
                    <p>L??u ??: {renderHTML(tour.note)}</p>
                    <Button color="primary" style={{ marginBottom: "20px" }} onClick={() => setVisible(true)} >Book</Button>
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
                    <p>B??nh lu???n b???i: {c.author.username}</p>
                    <p>V??o l??c: <Moment fromNow>{c.created_date}</Moment></p>
                </Col>
            </Row>)}

            <Modal
                title="?????t tour"
                visible={visible}
                onOk={handleOk}
                onCancel={handleCancel}
            >
                <h4 className="text-center text-primary" style ={{marginBottom: "20px"}}>Th??ng tin li??n l???c</h4>
                <div className="form-group">
                    <label htmlFor="">Email(*)</label>
                    <input type="text" value={cookies.load('user').email}
                        className="form-control" name="name" disabled aria-describedby="helpId" placeholder="" />
                </div>
                <h4 className="text-center text-primary" style ={{marginBottom: "20px"}}>S??? ng?????i</h4>
                <div className="row">
                    <div className="col-md-3">
                        <div className="form-group">
                            <label htmlFor="">Ng?????i l???n</label>
                            <input type="number" onChange={changeAdult}
                                className="form-control" value={adultNum} name="nguoilon" min="1" aria-describedby="helpId" placeholder="" />
                        </div>
                    </div>
                    <div className="col-md-3">
                        <div className="form-group">
                            <label htmlFor="">Tr??? em</label>
                            <input type="number" onChange={changeChild}
                                className="form-control" value={childNum} name="treem" min="0" aria-describedby="helpId" placeholder="" />
                        </div>
                    </div>
                    
                </div>
                {/* <h4 className="text-center text-primary">Th??nh ti???n</h4> */}

                <p >Th??nh ti???n: <strong className="text-danger"> {total?total:""}</strong></p>

            </Modal>
        </>
    )
}