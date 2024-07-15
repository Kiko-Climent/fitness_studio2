import { BrowserRouter as Router, Route, Routes, useLocation } from "react-router-dom";
import Error404 from "containers/errors/Error404";
import Home from "containers/pages/Home";
import Training from "containers/pages/Training";
import About from "containers/pages/About";
import Contact from "containers/pages/Contact";
import Members from "containers/pages/Members";
import Equipment from "containers/pages/Equipment";
import Signup from './containers/auth/Signup'
import Login from './containers/auth/Login'
import Activate from './containers/auth/Activate'
import ResetPassword from "containers/auth/ResetPassword";
import ResetPasswordConfirm from "containers/auth/ResetPasswordConfirm";
import Contracts from "containers/pages/Contracts";


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
                {/*Authentication*/}
                <Route exact path="/signup" element={<Signup/>}/>
                <Route exact path="/login" element={<Login/>}/>
                <Route exact path="/activate/:uid/:token" element={<Activate/>}/>
                <Route exact path="/reset_password" element={<ResetPassword/>}/>
                <Route exact path="/password/reset/confirm/:uid/:token" element={<ResetPasswordConfirm/>}/>
                {/*Contracts/Memberships*/}
                <Route path="/contracts" element={<Contracts />} />
            </Routes>
        </AnimatePresence>
    )
}
export default AnimatedRoutes