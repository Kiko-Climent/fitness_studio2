import { useState, useEffect, Fragment } from "react";
import { Link, NavLink, Navigate } from "react-router-dom";
import { Popover, PopoverButton, PopoverPanel, Transition } from '@headlessui/react';
import "boxicons/css/boxicons.min.css";
import Alert from "components/alert";
import { logout } from "redux/actions/auth";
import { connect } from "react-redux";

const solutions = [
    {
        name: 'training',
        href: '/training',
    },
    {
        name: 'equipment',
        href: '/equipment',
    },
    {
        name: 'memberships',
        href: '/contracts',
    },
    {
        name: 'about',
        href: '/#about',
        
    },
    {
        name: 'contact',
        href: '/contact',
    },
];

function Navbar({
    isAuthenticated,
    user,
    logout,
}) {
    const [open, setOpen] = useState(false);
    const [redirect, setRedirect] = useState(false);
    
    const logoutHandler = () => {
        logout();
        setRedirect(true);
    };

    const authLinks = [
        {
            name: 'profile',
            description: 'Visit your profile',
            href: '/profile',
        },
        {
            name: 'log out',
            description: 'Finish your session',
            onClick: logoutHandler
        }
    ];

    const guestLinks = [
        {
            name: 'member area',
            description: 'Sign up / Log in',
            href: '/members',
        }
    ];

    const Links = isAuthenticated ? [...solutions, ...authLinks] : [...solutions, ...guestLinks];
    
    useEffect(() => {
        const scrollFunction = () => {
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
        };
        window.onscroll = scrollFunction;
    }, []);

    if (redirect)
        return <Navigate to='/'/>

    return (
        <nav id="navbar" className={`w-full text-2xl py-0 top-0 transition duration-300 ease-in-out z-40 fixed text-[#7ef455] font-medium tracking-wide ${open ? 'bg-white' : 'bg-transparent'}`}>
            <div className="px-4 sm:px-6">
                {/* Desktop Layout */}
                <div className="-ml-4 -mt-5 hidden lg:flex flex-wrap items-center justify-around sm:flex-nowrap md:px-14 px-2">
                    <Link to='/' className="ml-4 mt-4 justify text-center">
                        <div className="text-3xl tracking-wider font-black">hercules.</div>
                        <div className="text-sm -mt-2 font-bold">Fitness Studio</div>
                    </Link>
                    <div className="ml-4 mt-2 flex-shrink-0">
                    {Links.map((link) => (
                        link.onClick ? (
                            <span key={link.name} onClick={link.onClick} className="text-lg inline-flex font-black leading-6 border-b-2 border-transparent hover:border-[#7ef455] transition duration-300 ease-in-out mx-4 cursor-pointer">
                                {link.name}
                            </span>
                        ) : (
                            <NavLink key={link.name} to={link.href} className="text-lg inline-flex font-black leading-6 border-b-2 border-transparent hover:border-[#7ef455] transition duration-300 ease-in-out mx-4">
                                {link.name}
                            </NavLink>
                        )
                    ))}                    
                    </div>
                </div>

                {/* Mobile Layout (Logo + Burger Button) */}
                <div className="-ml-4 -mt-4 lg:hidden flex flex-wrap items-center justify-between sm:flex-nowrap md:px-14">
                    {/* Only show this when menu is closed */}
                    {!open && (
                        <>
                            <Link to='/' className="mt-4 justify">
                                <div className="text-3xl tracking-wider font-black pl-5">hercules.</div>
                                <div className="text-sm -mt-2 font-bold text-center">Fitness Studio</div>
                            </Link>
                            <Popover className="mt-3 flex-shrink-0">
                                <PopoverButton className="focus:ring-none focus:outline-none" onClick={() => setOpen(!open)}>
                                    <i className='bx bx-menu text-4xl'></i>
                                </PopoverButton>
                            </Popover>
                        </>
                    )}

                    {/* Mobile Menu (Logo + Links + Close Button) */}
                    <Transition
                        show={open}
                        as={Fragment}
                        enter="transition ease-in-out duration-200"
                        enterFrom="opacity-0 translate-y-1"
                        enterTo="opacity-100 translate-y-0"
                        leave="transition ease-in duration-150"
                        leaveFrom="opacity-100 translate-y-0"
                        leaveTo="opacity-0 translate-y-4"
                    >
                        <div className="fixed inset-0 bg-white z-50 flex flex-col justify-center items-center space-y-4">
                            {/* Logo inside menu */}
                            <Link to='/' className="text-3xl tracking-wider font-black">hercules.
                            <div className="text-sm -mt-2 font-bold text-center">Fitness Studio</div></Link>
                            {/* Close Button inside menu */}
                            <Popover className="mt-3 flex-shrink-0">

                            <PopoverButton className="focus:ring-none focus:outline-none" onClick={() => setOpen(!open)}>
                                <i className='bx bx-x text-4xl'></i>
                            </PopoverButton>
                            </Popover >

                            {/* Menu Links */}
                            {Links.map((item) => (
                                item.onClick ? (
                                    <span key={item.name} onClick={item.onClick} className="cursor-pointer">
                                        <p className="text-4xl font-bold text-[#7ef455]">{item.name}</p>
                                    </span>
                                ) : (
                                    <Link key={item.name} to={item.href}>
                                        <p className="text-4xl font-bold text-[#7ef455]">{item.name}.</p>
                                    </Link>
                                )
                            ))}

                        </div>
                    </Transition>
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
