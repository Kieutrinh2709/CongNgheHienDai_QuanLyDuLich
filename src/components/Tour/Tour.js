import {Button, Card, Col } from "react-bootstrap";
import { Link } from "react-router-dom";
export default function Tour(props){
  let path = `/tours/${props.obj?.id}/`

  return (
    <Col md ={4} xs = {12}>
      <Card  style={{ width: "400px", height : "450px"}} >
          <Link to ={path}>
            <Card.Img variant="top" src={props.obj?.image} style={{ width: "400px", height : "350px"}} />
          </Link>
          <Card.Body>
            <Card.Title className="text-center">{props.obj?.title}</Card.Title>
                <Card.Text className="text-center">
                  Price: {props.obj?.price_adult}          
                </Card.Text>    
          </Card.Body>
          
      </Card>
      
    </Col>
  )
}

