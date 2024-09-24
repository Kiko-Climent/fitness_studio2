import Navbar from "components/navigation/Navbar";
import Layout from "hocs/layouts/Layout";
import { Helmet } from 'react-helmet-async';
import { useState, useEffect, useRef } from 'react';
import { useSpring, animated } from '@react-spring/web';

function Contact() {
    const [visible, setVisible] = useState(false);
    const [strikeActive, setStrikeActive] = useState(false);
    const headerRef = useRef(null);

    
    const [email, setEmail] = useState("");
    const [subject, setSubject] = useState("");
    const [message, setMessage] = useState("");

    const props = useSpring({
        opacity: visible ? 1 : 0,
        transform: visible ? 'translateY(0)' : 'translateY(20px)',
        config: { tension: 300, friction: 20 },
    });

    useEffect(() => {
        const observer = new IntersectionObserver(
            ([entry]) => {
                if (entry.isIntersecting) {
                    setVisible(true);
                    setStrikeActive(true);
                }
            },
            { threshold: 0.5 }
        );

        if (headerRef.current) {
            observer.observe(headerRef.current);
        }

        return () => {
            if (headerRef.current) {
                observer.unobserve(headerRef.current);
            }
        };
    }, []);

    useEffect(() => {
        window.scrollTo(0, 0);
    }, []);

    return (
        <Layout>
            <Helmet>
                <title>Hercules | Contact</title>
                <meta name="description" content="Fitness Studio. Empower your body, elevate your mind" />
                <meta name="keywords" content="gym, fitness, pilates, crossfit, yoga" />
                <meta name="robots" content="all" />
                <link rel="canonical" href="https://hercules-fitness.com" />
                <meta name="author" content="Hercules" />
                <meta name="publisher" content="Hercules" />

                {/* Social Media Tags */}
                <meta property="og:title" content='Hercules | Fitness Studio' />
                <meta property="og:description" content='Fitness Studio. Empower your body, elevate your mind.' />
                <meta property="og:url" content="https://hercules-fitness.com/" />
                <meta property="og:image" content='https://bafybeicwrhxloesdlojn3bxyjqnxgsagtd4sl53a7t4cn4vfe2abmybzua.ipfs.w3s.link/lightbnuilbg.jpg' />

                <meta name="twitter:title" content='Hercules | Fitness Studio' />
                <meta
                    name="twitter:description"
                    content='Fitness Studio. Empower your body, elevate your mind.'
                />
                <meta name="twitter:image" content='https://bafybeicwrhxloesdlojn3bxyjqnxgsagtd4sl53a7t4cn4vfe2abmybzua.ipfs.w3s.link/lightbnuilbg.jpg' />
                <meta name="twitter:card" content="summary_large_image" />
            </Helmet>
            <Navbar />
            <div className="pt-12">
                <section className="bg-white dark:bg-gray-900">
                    <div className="py-8 lg:py-16 px-4 mx-auto max-w-screen-md">
                        <div className="container mx-auto text-center">
                            <animated.h2
                                ref={headerRef}
                                className={`my-6 tracking-tight font-bold text-[#7ef455] custom-strike-sections ${strikeActive ? 'active' : ''} text-5xl`}
                                style={props}
                            >
                                contact.
                            </animated.h2>
                            <p className="text-lg text-[#2c555b] mt-0 lg:-mt-2 mb-6">
                                what can we help you with?, not sure about what you're looking for?, are you willing to join our team?, just drop us a text, we'll be glad to listen to you.
                            </p>
                        </div>
                        
                        <form action="#" className="space-y-6">
                            <div>
                                <label htmlFor="email" className="block text-3xl tracking-tight font-bold text-[#7ef455]">
                                    email address:
                                </label>
                                <div className="mt-1">
                                    <input
                                        name="email"
                                        value={email}
                                        onChange={(e) => setEmail(e.target.value)} // Manejo de estado
                                        type="email"
                                        required
                                        placeholder="your email" // Placeholder
                                        className="block w-full px-3 py-2 border border-x-transparent border-t-transparent border-b-[#7ef455] focus:border-2 focus:border-[#7ef455] focus:ring-transparent placeholder-white text-[#2c555b] font-bold sm:text-sm"
                                    />
                                </div>
                            </div>
                            <div>
                                <label htmlFor="subject" className="block text-3xl tracking-tight font-bold text-[#7ef455] text-right">
                                    :subject
                                </label>
                                <div className="mt-1">
                                    <input
                                        name="subject"
                                        value={subject}
                                        onChange={(e) => setSubject(e.target.value)} // Manejo de estado
                                        type="text"
                                        required
                                        placeholder="what can we help you with?" // Placeholder
                                        className="block w-full px-3 py-2 border border-x-transparent border-t-transparent border-b-[#7ef455] focus:border-2 focus:border-[#7ef455] focus:ring-transparent placeholder-white text-[#2c555b] font-bold sm:text-sm"
                                    />
                                </div>
                            </div>
                            <div>
                                <label htmlFor="message" className="block text-3xl tracking-tight font-bold text-[#7ef455]">
                                    object:
                                </label>
                                <div className="mt-1">
                                    <textarea
                                        name="message"
                                        value={message}
                                        onChange={(e) => setMessage(e.target.value)} // Manejo de estado
                                        required
                                        placeholder="your message" // Placeholder
                                        className="block w-full px-3 py-2 border border-x-transparent border-t-transparent border-b-[#7ef455] focus:border-2 focus:border-[#7ef455] focus:ring-transparent placeholder-white text-[#2c555b] font-bold sm:text-sm resize-none" // Agregado resize-none para evitar redimensionar
                                        style={{ minHeight: '30px' }}
                                    />
                                </div>
                            </div>
                            <div>
                  <button
                    type="submit"
                    className="align-middle select-none tracking-tight font-bold text-center transition-all disabled:opacity-50 disabled:shadow-none disabled:pointer-events-none text-5xl py-2 px-4 text-[#ec4eca] hover:bg-[#ec4eca] hover:text-[#7ef455] focus:ring focus:ring-green-200 active:opacity-[0.85] block w-full mt-6"
                  >
                    send.
                  </button>
                </div>
                        </form>
                    </div>
                </section>
            </div>
        </Layout>
    );
}

export default Contact;
