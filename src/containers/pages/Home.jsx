import CTA from "components/home/CTA"
import Header from "components/home/Header"
import Highlights from "components/home/Highlights"
import Partners from "components/home/Partners"
import Navbar from "components/navigation/Navbar"
import Layout from "hocs/layouts/Layout"
import About from "components/home/About"
import { useEffect } from "react"


function Home(){
    useEffect(()=>{
        window.scrollTo(0,0)
    },[])
    return(
        <Layout>
            <Navbar />
            <div className="">
                <Header/>
                <Highlights/>
                <CTA/>
                <Partners/>
                <About />
            </div>
        </Layout>
    )
}
export default Home
