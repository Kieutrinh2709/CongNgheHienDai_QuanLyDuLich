import React, { useEffect, useState } from "react";
import { Card,Row, Col} from "react-bootstrap";
import { Link } from "react-router-dom";
import Apis, { endpoints } from "../../configs/Apis";
import "./Blog.css";
export default function Blog(props) {
 
  const [blogs,setBlogs] = useState([])

  useEffect(() => {
    let loadBlog = async () => {
      try {
        let res = await Apis.get(endpoints['blogs'])
        setBlogs(res.data.results)
        console.log(res.data)
      } catch (err) {
        console.error(err)
      }
    }

    loadBlog()
  }, [])
  return (
    <div id="news" >
      <div className="heading text-primary text-center">
        <h1>Tin tức du lịch</h1>
        <hr />
        <Row>
        {blogs.map((item)=>{
          return (
            <Col md ={4} xs = {12}>
              <Card  style={{ width: "400px", height : "450px"}} >
                  <Link to ={`/blogs/${item.id}/`}>
                    <Card.Img variant="top" src={item.image} style={{ width: "400px", height : "350px"}} />
                  </Link>
                  <Card.Body>
                    <Card.Title className="text-center">{props.obj?.title}</Card.Title>
                        <Card.Text className="text-center">
                            {item.title}       
                        </Card.Text>                         
                  </Card.Body>
                  
              </Card>
            </Col>           
        )})}
        </Row>
      </div>
    </div>

  )
}
