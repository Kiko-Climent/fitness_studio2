import Header from "components/about/Header"
import Footer from "components/navigation/Footer"
import Navbar from "components/navigation/Navbar"
import Layout from "hocs/layouts/Layout"

function About(){
    return(
        <Layout>
            <Navbar />
            <div className="pt-24">
                <Header/>
            </div>
            <Footer />
        </Layout>
    )
}
export default About
