import { connect } from "react-redux";
import { Link, NavLink } from "react-router-dom";
import { useState, Fragment } from "react";
import { Popover, Transition } from '@headlessui/react';
import logo from 'assets/img/logo-300x100.jpg';
import "boxicons/css/boxicons.min.css";
import alert from "components/alert";
import Alert from "components/alert";

const solutions = [
    {
        name: 'Training',
        description: 'Measure actions your users take',
        href: '/training',
        icon: 'bx bx-run',
    },
    {
        name: 'Equipment',
        description: 'Create your own targeted content',
        href: '/equipment',
        icon: 'bx bx-dumbbell',
    },
    {
        name: 'About',
        description: 'Keep track of your growth',
        href: '/about',
        icon: 'bx bx-info-circle',
    },
    {
        name: 'Contact',
        description: 'Keep track of your growth',
        href: '/contact',
        icon: 'bx bx-envelope',
    },
    {
        name: 'Member Area',
        description: 'Keep track of your growth',
        href: '/members',
        icon: 'bx bx-user',
    },
];

function Navbar() {
    const [loading, setLoading] = useState(true);

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

    const [open, setOpen] = useState(false);

    return (
        <nav id="navbar" className="w-full py-4 top-0 transition duration-300 ease-in-out z-40 fixed">
            <div className="px-4 sm:px-6">
                <div className="-ml-4 -mt-4 hidden lg:flex flex-wrap items-center justify-between sm:flex-nowrap md:px-14 px-2">
                    <Link to='/' className="ml-4 mt-4 justify">
                        <img src={logo} width={180} height={90} className=""/>
                    </Link>
                    <div className="ml-4 mt-2 flex-shrink-0">
                        <NavLink to='/training' className="text-lg inline-flex font-medium leading-6 text-gray-900 border-b-2 border-transparent hover:border-blue-hercules transition duration-300 ease-in-out mx-4">Training</NavLink>
                        <NavLink to='/equipment' className="text-lg inline-flex font-medium leading-6 text-gray-900 border-b-2 border-transparent hover:border-blue-hercules transition duration-300 ease-in-out mx-4">Equipment</NavLink>
                        <NavLink to='/about' className="text-lg inline-flex font-medium leading-6 text-gray-900 border-b-2 border-transparent hover:border-blue-hercules transition duration-300 ease-in-out mx-4">About</NavLink>
                        <NavLink to='/contact' className="text-lg inline-flex font-medium leading-6 text-gray-900 border-b-2 border-transparent hover:border-blue-hercules transition duration-300 ease-in-out mx-4">Contact</NavLink>
                        <NavLink to='/signup' className="text-lg inline-flex font-medium leading-6 text-gray-900 border-b-2 border-transparent hover:border-blue-hercules transition duration-300 ease-in-out mx-4">Member Area</NavLink>
                        <button type="button" className="ml-12 mt-2 relative inline-flex items-center rounded-md border border-transparent bg-blue-hercules px-6 py-2 text-l font-bold text-white shadow-sm hover:transition hover:duration-300 hover:ease-in-out hover:bg-black focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">Become a Member</button>
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
                                                    {solutions.map((item) => (
                                                        <Link key={item.name} to={item.href} className="-m-3 flex items-center rounded-lg p-2 transition duration-150 ease-in-out hover:bg-gray-50 focus:outline-none focus-visible:ring focus-visible:ring-orange-500 focus-visible:ring-opacity-50">
                                                            <div className="flex h-10 w-10 shrink-0 items-center justify-center text-gray-600 sm:h-12 sm:w-12">
                                                                <i className={item.icon}></i>
                                                            </div>
                                                            <div className="ml-4">
                                                                <p className="text-sm font-medium text-gray-900">{item.name}</p>
                                                                <p className="text-sm text-gray-500">{item.description}</p>
                                                            </div>
                                                        </Link>
                                                    ))}
                                                </div>
                                                <div className="flex justify-center bg-gray-50 p-4">
                                                <a
                                                    href="#"
                                                    className="inline-block rounded-lg bg-blue-hercules px-4 py-1.5 text-base font-bold leading-7 text-white shadow-sm ring-1 ring-indigo-600 hover:bg-indigo-700 hover:ring-indigo-700"
                                                >
                                                    Join Us
                                                    <span className="text-indigo-200" aria-hidden="true">
                                                    &rarr;
                                                    </span>
                                                </a>
                                                </div>
                                            </div>
                                        </Popover.Panel>
                                    </Transition>
                                </>
                            )}
                        </Popover>
                        <Alert/>
                    </div>
                </div>
            </div>
        </nav>
    );
}

const mapStateToProps = state => ({});

export default connect(mapStateToProps, {})(Navbar);
