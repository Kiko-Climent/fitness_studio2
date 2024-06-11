import Footer from "components/navigation/Footer"
import Navbar from "components/navigation/Navbar"
import Layout from "hocs/layouts/Layout"

function Contact(){
    return(
        <Layout>
            <Navbar />
            <div className="pt-24">
                Contact
            </div>
            <Footer />
        </Layout>
    )
}
export default Contact
