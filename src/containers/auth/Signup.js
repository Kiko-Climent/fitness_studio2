import Navbar from "components/navigation/Navbar";
import Layout from "hocs/layouts/Layout";
import { useState, useEffect } from "react";

import { connect } from "react-redux";
import { signup } from "redux/actions/auth";


function Signup({
    signup
}) {

    useEffect(()=>{
        window.scrollTo(0,0)
    },[])

    const [accountCreated, setAccountCreated] = useState(false);

    const [formData, setFormData] = useState({
        first_name: '',
        last_name: '',
        email: '',
        password: '',
        re_password: ''
    })

    const {
        first_name,
        last_name,
        email,
        password,
        re_password
    } = formData;

    const onChange = e => setFormData({ ...formData, [e.target.name]: e.target.value });

    const onSubmit = e =>{
        e.preventDefault();
        signup(first_name, last_name, email, password, re_password);
        setAccountCreated(true);
        window.scrollTo(0,0)
    }
    return (
      <Layout>
        <Navbar/>
        <div className="min-h-full flex flex-col justify-center py-12 sm:px-6 lg:px-8 mt-12">
          <div className="sm:mx-auto sm:w-full sm:max-w-md">
            <h2 className="mt-6 text-center text-4xl lg:text-7xl tracking-tight font-extrabold text-[#ec4eca]">sign up to become a member</h2>
            <p className="mt-2 text-center text-sm text-[#7ef455]">
              Or{' '}
              <a href="/login" className="text-lg text-[#7ef455] hover:font-black hover:underline decoration-[#ec4eca]">
                log in to your account
              </a>
            </p>
          </div>
          <div className="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
            <div className="bg-white py-8 px-4 sm:px-10">
              <form onSubmit={e=>onSubmit(e)} className="space-y-6">
                <div>
                  <label htmlFor="first_name" className="block text-3xl tracking-tight font-bold text-[#7ef455]">
                    first name:
                  </label>
                  <div className="mt-1">
                    <input
                      name="first_name"
                      value={first_name}
                      onChange={e=>onChange(e)}
                      type="text"
                      required
                      className="block w-full px-3 py-2 border border-x-transparent border-t-transparent border-b-[#7ef455] focus:border-2 focus:border-[#7ef455] focus:ring-transparent placeholder-white text-[#2c555b] font-bold sm:text-sm"
                    />
                  </div>
                </div>
                <div>
                  <label htmlFor="last_name" className="block text-3xl tracking-tight font-bold text-[#7ef455] text-right">
                    :last name
                  </label>
                  <div className="mt-1">
                    <input
                      name="last_name"
                      value={last_name}
                      onChange={e=>onChange(e)}
                      type="text"
                      required
                      className="block w-full px-3 py-2 border border-x-transparent border-t-transparent border-b-[#7ef455] focus:border-2 focus:border-[#7ef455] focus:ring-transparent placeholder-white text-[#2c555b] font-bold sm:text-sm"
                    />
                  </div>
                </div>
                <div>
                  <label htmlFor="email" className="block text-3xl tracking-tight font-bold text-[#7ef455]">
                    email address:
                  </label>
                  <div className="mt-1">
                    <input
                      name="email"
                      value={email}
                      onChange={e=>onChange(e)}
                      type="email"
                      required
                      className="block w-full px-3 py-2 border border-x-transparent border-t-transparent border-b-[#7ef455] focus:border-2 focus:border-[#7ef455] focus:ring-transparent placeholder-white text-[#2c555b] font-bold sm:text-sm"
                    />
                  </div>
                </div>
                <div>
                  <label htmlFor="password" className="block text-3xl tracking-tight font-bold text-[#7ef455] text-right">
                    :password
                  </label>
                  <div className="mt-1">
                    <input
                      name="password"
                      value={password}
                      onChange={e=>onChange(e)}
                      type="password"
                      required
                      className="block w-full px-3 py-2 border border-x-transparent border-t-transparent border-b-[#7ef455] focus:border-2 focus:border-[#7ef455] focus:ring-transparent placeholder-white text-[#2c555b] font-bold sm:text-sm"
                    />
                  </div>
                </div>
                <div>
                  <label htmlFor="password" className="block text-3xl tracking-tight font-bold text-[#7ef455]">
                    repeat password:
                  </label>
                  <div className="mt-1">
                    <input
                      name="re_password"
                      value={re_password}
                      onChange={e=>onChange(e)}
                      type="password"                      
                      required
                      className="block w-full px-3 py-2 border border-x-transparent border-t-transparent border-b-[#7ef455] focus:border-2 focus:border-[#7ef455] focus:ring-transparent placeholder-white text-[#2c555b] font-bold sm:text-sm"
                    />
                  </div>
                </div>
                <div>
                  <button
                    type="submit"
                    className="align-middle select-none tracking-tight font-bold text-center transition-all disabled:opacity-50 disabled:shadow-none disabled:pointer-events-none text-5xl py-2 px-4 text-[#ec4eca] hover:bg-[#ec4eca] hover:text-[#7ef455] focus:ring focus:ring-green-200 active:opacity-[0.85] block w-full mt-6"
                  >
                    register.
                  </button>
                </div>
              </form>

            </div>
          </div>
        </div>
      </Layout>
    )
  }
  const mapStateToProps = state => ({

  })

  export default connect(mapStateToProps, {
    signup
  }) (Signup)