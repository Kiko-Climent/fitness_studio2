import CTA from "components/home/CTA"
import Header from "components/home/Header"
import Highlights from "components/home/Highlights"
import Partners from "components/home/Partners"
import Navbar from "components/navigation/Navbar"
import Layout from "hocs/layouts/Layout"
import About from "components/home/About"
import { useEffect } from "react"
import { useLocation } from "react-router-dom"


function Home(){
    const { pathname, hash } = useLocation();

    useEffect(() => {
      if (hash) {
        // Si hay un hash, desplazarse suavemente a esa sección
        const element = document.getElementById(hash.substring(1));
        if (element) {
          element.scrollIntoView({ behavior: 'smooth' });
        }
      } else {
        // Si no hay hash, desplazarse al principio de la página
        window.scrollTo({ top: 0, behavior: 'smooth' });
      }
    }, [pathname, hash]);

    return(
        <Layout>
            <Navbar />
            <div className="">
                <Header/>
                <Highlights/>
                <CTA/>
                <Partners/>
                <div id="about">
                    <About />
                </div>
            </div>
        </Layout>
    )
}
export default Home
