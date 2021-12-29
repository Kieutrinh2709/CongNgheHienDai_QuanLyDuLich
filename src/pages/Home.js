import Apis, { endpoints } from "../configs/Apis"
import Tour from "../components/Tour/Tour"
import { useEffect, useState } from "react"
import { useLocation } from "react-router-dom"
import { Button, ButtonGroup, Row } from "react-bootstrap"
import Banner from "../components/Banner/Banner"
import Explore from "../components/Explore/Explore"
import Blog from "../components/Blog/Blog"
import Gallery from "../components/Gallery/Gallery"
import Contact from "../components/Contact/Contact"
import Layout from "../layout/Layout"

export default function Home() {
    const [tours, setTours] = useState([])
    const location = useLocation()
    const [prev, setPrev] = useState(false)
    const [next, setNext] = useState(false)
    const [page, setPage] = useState(1)

    useEffect(() => {
        let loadTours = async () => {
            let query = location.search
            if (query === "")
                query = `?page=${page}`
            else
                query += `&page=${page}`
            try {
                let res = await Apis.get(`${endpoints['tours']}${query}`)
                setTours(res.data.results)
                setNext(res.data.next !== null)
                setPrev(res.data.previous !== null)
                console.log(res);

            } catch (err) {
                console.error(err)
            }
        }
        loadTours()
    }, [location.search, page])

    const paging = (inc) => {
        setPage(page + inc)
    }


    return (
        <>
            <Layout>
                <Banner />
                <Explore />
                <h3 class="text-center text-primary">Du lịch cùng MemoriesTravel</h3>
                <ButtonGroup>
                    <Button variant="info" onClick={() => paging(-1)} disabled={!prev}>&lt;&lt;</Button>
                    <Button variant="info" onClick={() => paging(1)} disabled={!next}>&gt;&gt;</Button>
                </ButtonGroup>

                <Row>
                    {tours.map(c => <Tour obj={c} />)}
                </Row>
                <Blog />
                <Gallery />
                <Contact />
            </Layout>
        </>

    )

}