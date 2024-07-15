import { connect } from "react-redux";
import { Link, NavLink, Navigate } from "react-router-dom";
import { useState, Fragment } from "react";
import { Popover, Transition } from '@headlessui/react';
import logo from 'assets/img/logo-300x100.jpg';
import "boxicons/css/boxicons.min.css";
import Alert from "components/alert";
import { logout } from "redux/actions/auth";

const solutions = [
    {
        name: 'Training',
        description: 'Get fit',
        href: '/training',
        icon: 'bx bx-run',
    },
    {
        name: 'Equipment',
        description: 'Check our machines',
        href: '/equipment',
        icon: 'bx bx-dumbbell',
    },
    {
        name: 'Contracts',
        description: 'Get your membership',
        href: '/contracts',
        icon: 'bx bx-file',
    },
    {
        name: 'About',
        description: 'Why to choose us?',
        href: '/about',
        icon: 'bx bx-info-circle',
    },
    {
        name: 'Contact',
        description: 'Get in touch',
        href: '/contact',
        icon: 'bx bx-envelope',
    },
];


function Navbar({
    isAuthenticated,
    user,
    logout
}) {
    
    const [open, setOpen] = useState(false);
    const [loading, setLoading] = useState(true);
    
    const [redirect, setRedirect] = useState(false);
    
    const logoutHandler = () => {
        logout();
        setRedirect(true);
    }

    if (redirect)
        return <Navigate to='/'/>

    const authLinks = [
        {
            name: 'Profile',
            description: 'Visit your profile',
            href: '/profile',
            icon: 'bx bx-user-circle',
        },
        {
            name: 'Log Out',
            description: 'Finish your session',
            icon: 'bx bx-log-out',
            onClick: logoutHandler
        }
    ];
    
    const guestLinks = [
        {
            name: 'Member Area',
            description: 'Sign up / Log in',
            href: '/signup',
            icon: 'bx bx-user',
        }
    ];
    const Links = isAuthenticated ? [...solutions, ...authLinks] : [...solutions, ...guestLinks];
    
    console.log("isAuthenticated:", isAuthenticated);
    console.log("Links:", Links);
    
    window.onscroll = function() {
        scrollFunction();
    };
    
    function scrollFunction() {
        const navbar = document.getElementById('navbar');
        if (navbar) {
            if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
                navbar.classList.add('shadow-navbar');
                navbar.classList.add('bg-white');
            } else {
                navbar.classList.remove('shadow-navbar');
                navbar.classList.remove('bg-white');
            }
        }
    }
    
    return (
        <nav id="navbar" className="w-full py-4 top-0 transition duration-300 ease-in-out z-40 fixed">
            <div className="px-4 sm:px-6">
                <div className="-ml-4 -mt-4 hidden lg:flex flex-wrap items-center justify-between sm:flex-nowrap md:px-14 px-2">
                    <Link to='/' className="ml-4 mt-4 justify">
                        <img src={logo} width={180} height={90} className=""/>
                    </Link>
                    <div className="ml-4 mt-2 flex-shrink-0">
                        {Links.map(link => (
                            <NavLink key={link.name} to={link.href} className="text-lg inline-flex font-medium leading-6 text-gray-900 border-b-2 border-transparent hover:border-blue-hercules transition duration-300 ease-in-out mx-4">
                                {link.name}
                            </NavLink>
                        ))}                    
                    </div>
                </div>
                <div className="-ml-4 -mt-4 lg:hidden flex flex-wrap items-center justify-between sm:flex-nowrap md:px-14 px-2">
                    <Link to='/' className="ml-4 mt-4 justify">
                        <img src={logo} width={180} height={90} className=""/>
                    </Link>
                    <div className="ml-4 mt-2 flex-shrink-0">
                        <Popover className="relative">
                            {({ open }) => (
                                <>
                                    <Popover.Button className={`${open ? '' : 'text-opacity-90'} focus:ring-none focus:outline-none`}>
                                        {open ? <i className='bx bx-x text-4xl'></i> : <i className='bx bx-menu text-4xl'></i>}
                                    </Popover.Button>

                                    <Transition as={Fragment} enter="transition ease-out duration-200" enterFrom="opacity-0 translate-y-1" enterTo="opacity-100 translate-y-0" leave="transition ease-in duration-150" leaveFrom="opacity-100 translate-y-0" leaveTo="opacity-0 translate-y-1">
                                        <Popover.Panel className="absolute -left-32 z-10 mt-3 w-screen max-w-sm -translate-x-1/2 transform px-4 sm:px-0 lg:max-w-3xl">
                                            <div className="overflow-hidden rounded-lg shadow-lg ring-1 ring-black ring-opacity-5">
                                            <div className="relative grid gap-8 bg-white p-7 lg:grid-cols-2">
                                                    {Links.map((item) => (
                                                        item.onClick ? (
                                                            <span key={item.name} onClick={item.onClick} className="-m-3 flex items-center rounded-lg p-2 transition duration-150 ease-in-out hover:bg-gray-50 focus:outline-none focus-visible:ring focus-visible:ring-orange-500 focus-visible:ring-opacity-50 cursor-pointer">
                                                                <div className="flex h-10 w-10 shrink-0 items-center justify-center text-gray-600 sm:h-12 sm:w-12">
                                                                    <i className={item.icon}></i>
                                                                </div>
                                                                <div className="ml-4">
                                                                    <p className="text-sm font-medium text-gray-900">{item.name}</p>
                                                                    <p className="text-sm text-gray-500">{item.description}</p>
                                                                </div>
                                                            </span>
                                                        ) : (
                                                            <Link key={item.name} to={item.href} className="-m-3 flex items-center rounded-lg p-2 transition duration-150 ease-in-out hover:bg-gray-50 focus:outline-none focus-visible:ring focus-visible:ring-orange-500 focus-visible:ring-opacity-50">
                                                                <div className="flex h-10 w-10 shrink-0 items-center justify-center text-gray-600 sm:h-12 sm:w-12">
                                                                    <i className={item.icon}></i>
                                                                </div>
                                                                <div className="ml-4">
                                                                    <p className="text-sm font-medium text-gray-900">{item.name}</p>
                                                                    <p className="text-sm text-gray-500">{item.description}</p>
                                                                </div>
                                                            </Link>
                                                        )
                                                    ))}
                                                </div>
                                            </div>
                                        </Popover.Panel>
                                    </Transition>
                                </>
                            )}
                        </Popover>
                        <span><Alert/></span>
                    </div>
                </div>
            </div>
        </nav>
    );
}

const mapStateToProps = state => ({
    isAuthenticated: state.Auth.isAuthenticated,
    user: state.Auth.user
});

export default connect(mapStateToProps, {
    logout
})(Navbar);
