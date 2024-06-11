import { connect } from "react-redux";
import { Link, NavLink, } from "react-router-dom";
import { useState, useEffect } from "react";
import logo from 'assets/img/logo-300x100.jpg'
import 'boxicons'

function Navbar(){
    /*
    const [isScrolled, setIsScrolled] = useState(false);

    useEffect(() => {
        const handleScroll = () => {
            if (window.scrollY > 50) {
                setIsScrolled(true);
            } else {
                setIsScrolled(false);
            }
        };

        window.addEventListener('scroll', handleScroll);

        return () => {
            window.removeEventListener('scroll', handleScroll);
        };
    }, []);
    */

    const [loading, setLoading]=useState(true)

        window.onscroll = function() {scrollFunction()}

        function scrollFunction(){
            if(document.getElementById('navbar')){
                if(document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
                    document.getElementById('navbar').classList.add('shadow-navbar')
                    document.getElementById('navbar').classList.add('bg-white')

                }else{
                    document.getElementById('navbar').classList.remove('shadow-navbar')
                    document.getElementById('navbar').classList.remove('bg-white')
                }
            }
        }

    return (    
        <nav id="navbar" className="w-full py-4 top-0 transition duration-300 ease-in-out z-40 fixed">
            <div className="px-4 sm:px-6">
                <div className="-ml-4 -mt-4 flex flex-wrap items-center justify-between sm:flex-nowrap md:px-14 px-2">
                    <Link to='/' className="ml-4 mt-4">
                    <img
                    src={logo}
                    width={180}
                    height={90}
                    className=""/>
                    </Link>
                    <div className="ml-4 mt-2 flex-shrink-0">
                    <NavLink to='/training' className="text-lg inline-flex font-medium leading-6 text-gray-900 border-b-2 border-transparent hover:border-blue-hercules transition duration-300 ease-in-out mx-4">Training</NavLink>
                    <NavLink to='/equipment' className="text-lg inline-flex font-medium leading-6 text-gray-900 border-b-2 border-transparent hover:border-blue-hercules transition duration-300 ease-in-out mx-4">Equipment</NavLink>
                    <NavLink to='/about' className="text-lg inline-flex font-medium leading-6 text-gray-900 border-b-2 border-transparent hover:border-blue-hercules transition duration-300 ease-in-out mx-4">About</NavLink>
                    <NavLink to='/contact' className="text-lg inline-flex font-medium leading-6 text-gray-900 border-b-2 border-transparent hover:border-blue-hercules transition duration-300 ease-in-out mx-4">Contact</NavLink>
                    <NavLink to='/members' className="text-lg inline-flex font-medium leading-6 text-gray-900 border-b-2 border-transparent hover:border-blue-hercules transition duration-300 ease-in-out mx-4">Member Area</NavLink>
                    <button
                        type="button"
                        className="ml-12 mt-2 relative inline-flex items-center rounded-md border border-transparent bg-blue-hercules px-6 py-2 text-l font-bold text-white shadow-sm hover:transition hover:duration-300 hover:ease-in-out hover:bg-black focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
                    >
                        Become a Member
                    </button>
                    </div>
                </div>
            </div>
        </nav>
        
    )
}

const mapStateToProps=state=>({

})

export default connect(mapStateToProps, {

}) (Navbar)