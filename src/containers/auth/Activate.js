import Footer from "components/navigation/Footer";
import Navbar from "components/navigation/Navbar";
import Layout from "hocs/layouts/Layout";
import { useParams } from "react-router-dom";
import { useState } from "react";
import { connect } from "react-redux";
import { activate } from "redux/actions/auth";
import { Navigate } from "react-router-dom";
import { Oval } from 'react-loader-spinner'


const Activate = ({
    activate,
    loading
}) =>{
    const params = useParams()
    const [activated, setActivated] = useState(false);

    const activate_account = () => {
        const uid = params.uid
        const token = params.token
        activate(uid, token);
        setActivated(true);
    }

    if (activated && !loading)
    return <Navigate to='/' />

    return (
        <Layout>
            <Navbar />
            <div className="flex flex-col items-center justify-between min-h-screen">
                {/* Contenedor para el contenido principal */}
                <div className="flex-grow max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                    <div className="max-w-3xl mx-auto mt-48">
                        {loading ? 
                        <button
                            className="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
                        >
                            <Oval
                            type="Oval"
                            color="#fff"
                            width={20}
                            height={20}
                            />
                        </button>:
                        <button
                        onClick={activate_account}
                        className="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
                    >
                        Activate your account
                    </button>
                    }
                    </div>
                </div>
            </div>
        </Layout>
    );
    
}
const mapStateToProps = state => ({
    loading: state.Auth.loading
})

export default connect(mapStateToProps,{
    activate
}) (Activate)