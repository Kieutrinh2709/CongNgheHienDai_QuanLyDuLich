import React from 'react'
import Footer from '../components/Footer/Footer'
import Header from '../components/Header'


export default function Layout({ children }) {
    return (
        <div>
            <Header />
            {children}
            <Footer />
        </div>
    )
}
