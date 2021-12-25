import React from 'react'
import { useSelector } from 'react-redux';
function Chitietgia(props) {
    const tours = useSelector(state => state.tours.tour.data);
    const tour = [];
    if (tours) {
        for (let i = 0; i < tours.length; i++) {
            if (tours[i].id === +props.id) {
                tour.push(tours[i])
            }
        }
    }
    
    return (
        <div>
            <div className="heading-nx">
                <h3>Chi tiết giá</h3>
            </div>
            <div className="container">
                <div className="Chitietgia">
                    {tour.map(ok => (
                        <div key={ok.id}>
                            <p>
                                - Giá tiền người lớn: {(ok.price_adult).toLocaleString()} vnd
                            </p>
                            <p>
                                - Giá tiền trẻ em: {(ok.price_child).toLocaleString()} vnd
                            </p>
                        </div>
                    ))}
                </div>
            </div>
        </div>
    )
}

Chitietgia.propTypes = {

}

export default Chitietgia
