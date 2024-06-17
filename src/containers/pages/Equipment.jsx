import Features2 from "components/equipment/Features2"
import Header from "components/equipment/Header"
import Footer from "components/navigation/Footer"
import Navbar from "components/navigation/Navbar"
import Layout from "hocs/layouts/Layout"
import { useEffect } from "react"
import { Helmet } from 'react-helmet-async'

function Equipment(){
    useEffect(()=>{
        window.scrollTo(0,0)
    },[])
    return(
        <Layout>
            <Helmet>
                <title>Hercules | Equipment</title>
                <meta name="description" content="Fitness Studio. Empower your body, elevate your mind"/>
                <meta name="keywords" content="gym, fitness, pilates, crossfit, yoga"/>
                <meta name="robots" content="all"/>
                <link rel="canonical" href="https://hercules-fitness.com"/>
                <meta name="author" content="Hercules"/>
                <meta name="publisher" content="Hercules"/>

                {/* Social Media Tags */}
                <meta property="og:title" content='Hercules | Fitness Studio' />
                <meta property="og:description" content='Fitness Studio. Empower your body, elevate your mind.' />
                <meta property="og:url" content="https:/hercules-fitness.com/" />
                <meta property="og:image" content='https://bafybeicwrhxloesdlojn3bxyjqnxgsagtd4sl53a7t4cn4vfe2abmybzua.ipfs.w3s.link/lightbnuilbg.jpg' />

                <meta name="twitter:title" content='Hercules | Fitness Studio' />
                <meta
                    name="twitter:description"
                    content='Fitness Studio. Empower your body, elevate your mind.'
                />
                <meta name="twitter:image" content='https://bafybeicwrhxloesdlojn3bxyjqnxgsagtd4sl53a7t4cn4vfe2abmybzua.ipfs.w3s.link/lightbnuilbg.jpg' />
                <meta name="twitter:card" content="summary_large_image" />
            </Helmet>
            <Navbar />
            <div className="pt-24">
                <Header/>
                <Features2/>
            </div>
            <Footer />
        </Layout>
    )
}
export default Equipment
