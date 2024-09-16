import Layout from "hocs/layouts/Layout"
import { Helmet } from "react-helmet-async"
import { useEffect } from "react"
import Navbar from "components/navigation/Navbar"
import ContractsList from "components/contracts/contractsList"
import TrialDay from "components/contracts/TrialDay"

const Contracts = () => {
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
            <div className="mb-0"> 
                <ContractsList />
            </div>
            <div className="mt-0"> 
                <TrialDay />
            </div>
        </Layout>
    )
}

export default Contracts