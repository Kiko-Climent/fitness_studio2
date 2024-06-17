import { BrowserRouter as Router, Route, Routes, useLocation } from "react-router-dom";
import Error404 from "containers/errors/Error404";
import Home from "containers/pages/Home";
import Training from "containers/pages/Training";
import About from "containers/pages/About";
import Contact from "containers/pages/Contact";
import Members from "containers/pages/Members";
import Equipment from "containers/pages/Equipment";

import { AnimatePresence } from 'framer-motion'

function AnimatedRoutes(){

    const location = useLocation();

    return(
        <AnimatePresence>

            <Routes location={location} key={location.pathname}>
                {/* Error Display */}
                <Route path="*" element={<Error404 />} />
                {/* Home Display */}
                <Route path="/" element={<Home />} />
                <Route path="/training" element={<Training />} />
                <Route path="/equipment" element={<Equipment />} />
                <Route path="/about" element={<About />} />
                <Route path="/contact" element={<Contact />} />
                <Route path="/members" element={<Members />} />
            </Routes>
        </AnimatePresence>
    )
}
export default AnimatedRoutes