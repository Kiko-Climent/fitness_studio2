import Footer from "components/navigation/Footer"
import Navbar from "components/navigation/Navbar"
import Header from "components/training/Header"
import TrainingList from "components/training/TrainingList"
import Layout from "hocs/layouts/Layout"

function Training(){
    return(
        <Layout>
            <Navbar />
            <div className="pt-24">
                <Header/>
                <TrainingList/>
            </div>
            <Footer />
        </Layout>
    )
}
export default Training
