import Footer from "components/navigation/Footer"
import Navbar from "components/navigation/Navbar"
import Layout from "hocs/layouts/Layout"

function Members(){
    return(
        <Layout>
            <Navbar />
            <div className="pt-24">
                Member Area
            </div>
            <Footer />
        </Layout>
    )
}
export default Members
