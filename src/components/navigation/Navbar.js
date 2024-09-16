import { useState, useEffect, Fragment } from "react";
import { connect } from "react-redux";
import { Link, NavLink, Navigate } from "react-router-dom";
import { Popover, PopoverButton, PopoverPanel, Transition } from '@headlessui/react';
import "boxicons/css/boxicons.min.css";
import Alert from "components/alert";
import { logout } from "redux/actions/auth";

const solutions = [
    {
        name: 'training',
        description: 'Get fit',
        href: '/training',
        icon: 'bx bx-run',
    },
    {
        name: 'equipment',
        description: 'Check our machines',
        href: '/equipment',
        icon: 'bx bx-dumbbell',
    },
    {
        name: 'memberships',
        description: 'Get your membership',
        href: '/contracts',
        icon: 'bx bx-file',
    },
    {
        name: 'about',
        description: 'Why to choose us?',
        href: '/about',
        icon: 'bx bx-info-circle',
    },
    {
        name: 'contact',
        description: 'Get in touch',
        href: '/contact',
        icon: 'bx bx-envelope',
    },
];


function Navbar({
    isAuthenticated,
    user,
    logout,
}) {
    
    
    const [open, setOpen] = useState(false);
    const [loading, setLoading] = useState(true);
    
    const [redirect, setRedirect] = useState(false);
    
    const logoutHandler = () => {
        logout();
        setRedirect(true);
    }

    const authLinks = [
        {
            name: 'profile',
            description: 'Visit your profile',
            href: '/profile',
            icon: 'bx bx-user-circle',
        },
        {
            name: 'log out',
            description: 'Finish your session',
            icon: 'bx bx-log-out',
            onClick: logoutHandler
        }
    ];
    
    const guestLinks = [
        {
            name: 'member area',
            description: 'Sign up / Log in',
            href: '/signup',
            icon: 'bx bx-user',
        }
    ];
    
    const Links = isAuthenticated ? [...solutions, ...authLinks] : [...solutions, ...guestLinks];
    
    console.log("isAuthenticated:", isAuthenticated);
    console.log("Links:", Links);
    
    const [visible, setVisible] = useState(false);
    useEffect(() => {
        // Mostrar el contenido después de 2 segundos
        const timer = setTimeout(() => {
            setVisible(true);
        }, 2000);

        // Limpiar el temporizador cuando el componente se desmonte
        return () => clearTimeout(timer);
    }, []);

    function scrollFunction() {
        const navbar = document.getElementById('navbar');
        if (navbar) {
            
            if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
                navbar.classList.add('bg-white');
                navbar.classList.remove('bg-transparent');
            } else {
                navbar.classList.remove('bg-white');
                navbar.classList.add('bg-transparent');
            }
            
        }
    }
    window.onscroll = function() {
        scrollFunction();
    };
    if (redirect)
        return <Navigate to='/'/>
    
    return (
        <nav id="navbar" className={`w-full text-2xl py-0 top-0 transition duration-300 ease-in-out z-40 fixed text-[#7ef455] font-medium tracking-wide ${visible ? '' : 'bg-transparent'}`}>
            <div className="px-4 sm:px-6">
                <div className="-ml-4 -mt-5 hidden lg:flex flex-wrap items-center justify-around sm:flex-nowrap md:px-14 px-2">
                    <Link to='/' className="ml-4 mt-4 justify text-center">
                        <div className="text-3xl tracking-wider font-black">hercules.</div>
                        <div className="text-sm -mt-2 font-bold">Fitness Studio</div>
                    </Link>
                    <div className="ml-4 mt-2 flex-shrink-0">
                        {Links.map(link => (
                            <NavLink key={link.name} to={link.href} className="text-lg inline-flex font-black leading-6 border-b-2 border-transparent hover:border-[#7ef455] transition duration-300 ease-in-out mx-4">
                                {link.name}
                            </NavLink>
                        ))}                    
                    </div>
                </div>
                <div className="-ml-4 -mt-4 lg:hidden flex flex-wrap items-center justify-between sm:flex-nowrap md:px-14 px-2">
                    <Link to='/' className="ml-4 mt-4 justify">
                        <div className="text-3xl tracking-widest">hercules.</div>
                    </Link>
                    <div className="ml-4 mt-2 flex-shrink-0">
                        <Popover className="relative">
                            {({ open }) => (
                                <>
                                    <PopoverButton className={`${open ? '' : 'text-opacity-90'} focus:ring-none focus:outline-none`}>
                                        {open ? <i className='bx bx-x text-4xl'></i> : <i className='bx bx-menu text-4xl'></i>}
                                    </PopoverButton>

                                    <Transition as={Fragment} enter="transition ease-out duration-200" enterFrom="opacity-0 translate-y-1" enterTo="opacity-100 translate-y-0" leave="transition ease-in duration-150" leaveFrom="opacity-100 translate-y-0" leaveTo="opacity-0 translate-y-1">
                                        <PopoverPanel className="absolute -left-32 z-10 mt-3 w-screen max-w-sm -translate-x-1/2 transform px-4 sm:px-0 lg:max-w-3xl">
                                            <div className="overflow-hidden rounded-lg shadow-lg ring-1 ring-black ring-opacity-5">
                                            <div className="relative grid gap-8 bg-white p-7 lg:grid-cols-2">
                                                    {Links.map((item) => (
                                                        item.onClick ? (
                                                            <span key={item.name} onClick={item.onClick} className="-m-3 flex items-center rounded-lg p-2 transition duration-150 ease-in-out hover:bg-gray-50 focus:outline-none focus-visible:ring focus-visible:ring-orange-500 focus-visible:ring-opacity-50 cursor-pointer">
                                                                <div className="flex h-10 w-10 shrink-0 items-center justify-center text-gray-600 sm:h-12 sm:w-12">
                                                                    <i className={item.icon}></i>
                                                                </div>
                                                                <div className="ml-4">
                                                                    <p className="text-sm font-medium text-white">{item.name}</p>
                                                                    <p className="text-sm text-gray-500">{item.description}</p>
                                                                </div>
                                                            </span>
                                                        ) : (
                                                            <Link key={item.name} to={item.href} className="-m-3 flex items-center rounded-lg p-2 transition duration-150 ease-in-out hover:bg-gray-50 focus:outline-none focus-visible:ring focus-visible:ring-orange-500 focus-visible:ring-opacity-50">
                                                                <div className="flex h-10 w-10 shrink-0 items-center justify-center text-gray-600 sm:h-12 sm:w-12">
                                                                    <i className={item.icon}></i>
                                                                </div>
                                                                <div className="ml-4">
                                                                    <p className="text-sm font-medium text-white">{item.name}</p>
                                                                    <p className="text-sm text-gray-500">{item.description}</p>
                                                                </div>
                                                            </Link>
                                                        )
                                                    ))}
                                                </div>
                                            </div>
                                        </PopoverPanel>
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
