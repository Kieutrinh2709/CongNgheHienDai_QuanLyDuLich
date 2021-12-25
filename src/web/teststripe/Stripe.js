import React, { useState } from 'react'
import { Elements } from '@stripe/react-stripe-js';
import { loadStripe } from '@stripe/stripe-js';
import CheckoutForm from './Checkoutform';
import "./Card.css"
import { useSelector } from 'react-redux';
import { Spin, Tooltip } from 'antd';
const stripePromise = loadStripe("pk_test_51I0p5CE2oIGbiAkNsd7EJ9VZNaxZXtDMMfkcDD7s5WyP2PXM4hQ6qcSWGwlGtG4DFwWTFTVzr5AAxEaPYiAQBe6Z008USzew3a");
function Stripe(props) {
    const thanhtoans = useSelector(state => state.thanhtoans);
    var thanhtoan = [];
    if (thanhtoan) {
        for (let i = 0; i < thanhtoans.length; i++) {
            thanhtoan.unshift(thanhtoans[i]);
        }
    }
    // console.log(thanhtoan);
    const tinhSoNguoi = (nguoilon, treem) => {
        return +nguoilon + +treem ;
    }
    const tinhTongTien = (nguoilon, treem, gianguoilon, giatreem) => {
        return ((nguoilon * +gianguoilon) + (treem * +giatreem));
    }
    return (
        <div className="thanhtoan">
            {thanhtoan.length === 0 ?
                <div>
                    <h2 className="mt-5 text-center">Thanh toán online</h2>
                    <div className="container text-center">
                        <h5 className="text-danger">Chưa nhận được thông tin, bạn vui lòng đặt lại tour!</h5>
                        <div className="spin"><Spin /></div>
                    </div>
                </div>
                :
                <div>
                    <h2 className="mt-5 text-center">Thanh toán online</h2>
                    <div className="container">
                        <div className="row mt-4">
                            <div className="col-md-6"><div>
                                <p><strong>Tên tour</strong>: {thanhtoan[0].name}</p>

                                <p><strong>Số người</strong>:
                                 <Tooltip placement="right" title={<div>người lớn: {thanhtoan[0].nguoilon}, trẻ em: {thanhtoan[0].treem}</div>}>
                                        &nbsp; {tinhSoNguoi(thanhtoan[0].nguoilon, thanhtoan[0].treem)} người
                                </Tooltip></p>

                                <p><strong>Tổng tiền</strong>: {tinhTongTien(thanhtoan[0].nguoilon, thanhtoan[0].treem, thanhtoan[0].gianguoilon, thanhtoan[0].giatreem).toLocaleString()} vnđ</p>
                            </div>
                            </div>
                            <div className="col-md-6 text-center">
                                <Elements stripe={stripePromise}>
                                    <CheckoutForm hoadon={thanhtoan[0].hoadon} tentour={thanhtoan[0].name} thanhtien={thanhtoan[0].tongtien} email={email} price={quyDoi(tinhTongTien(thanhtoan[0].nguoilon, thanhtoan[0].treem, thanhtoan[0].gianguoilon, thanhtoan[0].giatreem))} />
                                </Elements>
                            </div>
                        </div>
                    </div>
                </div>
            }
        </div>
    )
}

Stripe.propTypes = {

}

export default Stripe

