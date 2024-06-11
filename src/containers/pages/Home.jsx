import CTA from "components/home/CTA"
import Header from "components/home/Header"
import Highlights from "components/home/Highlights"
import Partners from "components/home/Partners"
import Footer from "components/navigation/Footer"
import Navbar from "components/navigation/Navbar"
import Layout from "hocs/layouts/Layout"


function Home(){
    return(
        <Layout>
            <Navbar />
            <div className="pt-24">
                <Header/>
                <Highlights/>
                <CTA/>
                <Partners/>
            </div>
            <Footer />
        </Layout>
    )
}
export default Home
