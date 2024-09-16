//import { connect } from "react-redux";
//import { motion } from "framer-motion";
//
//function Layout({children}){
//    return(
//        <motion.div
//        initial={{opacity: 0, transition: {duration: 0.6}}}
//        animate={{opacity: 1}}
//        exit={{opacity: 0, transition: {duration: 0.6}}}
//        >
//            {children}
//        </motion.div>
//    )
//}
//
//const mapStateToProps = state =>({
//
//})
//export default connect(mapStateToProps, {
//
//}) (Layout)

import { useEffect } from 'react';
import { connect } from 'react-redux';
import { motion } from 'framer-motion';
import { check_authenticated, load_user, refresh } from 'redux/actions/auth';
import { get_user_profile } from 'redux/actions/profile';
import Navbar from 'components/navigation/Navbar';
import Footer from 'components/navigation/Footer';

const Layout = (props) => {

    useEffect(() => {
        props.refresh();
        props.check_authenticated();
        props.load_user();
        props.get_user_profile();
    }, []);

    return (
        <motion.div
            initial={{ opacity: 0, transition: { duration: 0.6 } }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0, transition: { duration: 0.6 } }}
        >
            <Navbar />
            {props.children}
            <Footer />
        </motion.div>
    );
};

export default connect(null, {
    check_authenticated,
    load_user,
    refresh,
    get_user_profile,
})(Layout);