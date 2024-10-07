import Navbar from "components/navigation/Navbar";
import Layout from "hocs/layouts/Layout";
import { useState, useEffect } from "react";

import { connect } from "react-redux";
import { login } from "redux/actions/auth";
import { Link, useNavigate } from "react-router-dom";


function Login({
    login,
}) {

    useEffect(()=>{
        window.scrollTo(0,0)
    },[])

    const navigate = useNavigate();

    const [formData, setFormData] = useState({
        email: '',
        password: '',
    })

    const {
        email,
        password,
    } = formData;

    const onChange = e => setFormData({ ...formData, [e.target.name]: e.target.value });

    const onSubmit = e =>{
        e.preventDefault();
        login(email, password, navigate);
    }
    return (
      <Layout>
        <Navbar/>
        <div className="min-h-full flex flex-col justify-center py-12 sm:px-6 lg:px-8 mt-12">
          <div className="sm:mx-auto sm:w-full sm:max-w-md">
            <h2 className="mt-6 text-center text-7xl tracking-tight font-extrabold text-[#ec4eca]">log in to see your profile</h2>
          </div>
  
          <div className="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
            <div className="bg-white py-8 px-4  sm:px-10">
              <form onSubmit={e=>onSubmit(e)} className="space-y-4">
                <div>
                  <label htmlFor="email" className="block text-3xl tracking-tight font-bold text-[#7ef455]">
                    email address:
                  </label>
                  <div className="mt-0">
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
                  <label htmlFor="password" className="block text-3xl tracking-tight text-right font-bold text-[#7ef455]">
                    :password
                  </label>
                  <div className="mt-1">
                    <input
                      name="password"
                      value={password}
                      onChange={e=>onChange(e)}
                      type="password"
                      required
                      className="block w-full px-3 py-2 border border-x-transparent border-t-transparent border-b-[#7ef455] focus:border-2 focus:border-[#7ef455] focus:ring-transparent placeholder-white text-[#2c555b] sm:text-sm"
                    />
                  </div>
                </div>
  
                <div className="flex items-center justify-between">
                  <div className="flex items-center">
                    <input
                      id="remember-me"
                      name="remember-me"
                      type="checkbox"
                      className="h-4 w-4 text-[#ec4eca] focus:ring-transparent border-[#2c555b]"
                    />
                    <label htmlFor="remember-me" className="ml-2 block text-2xl tracking-tight font-bold text-[#2c555b]">
                      remember me
                    </label>
                  </div>
  
                  <Link to="/reset_password" className="text-lg mt-1 tracking-tight font-bold text-[#7ef455] hover:text-[#ec4eca]">
                    forgot your password?
                  </Link>

                </div>
  
                <div
                  onClick={e => onSubmit(e)}
                  className="align-middle select-none tracking-tight font-bold text-center transition-all disabled:opacity-50 disabled:shadow-none disabled:pointer-events-none text-5xl py-2 px-4 text-[#ec4eca] hover:bg-[#ec4eca] hover:text-[#7ef455] focus:ring focus:ring-green-200 active:opacity-[0.85] block w-full mt-6"
                  role="button"
                  tabIndex="0"
                >
                  log in.
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
    login
  }) (Login)