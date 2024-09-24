import { useState, useEffect, useRef } from 'react';
import { useSpring, animated } from '@react-spring/web';

export default function Training() {
    const [visible, setVisible] = useState(false);
    const [strikeActive, setStrikeActive] = useState(false);
    const headerRef = useRef(null);

    const props = useSpring({
        opacity: visible ? 1 : 0,
        transform: visible ? 'translateY(0)' : 'translateY(20px)',
        config: { tension: 300, friction: 20 }
    });

    useEffect(() => {
        const observer = new IntersectionObserver(
            ([entry]) => {
                if (entry.isIntersecting) {
                    setVisible(true);
                    setStrikeActive(true); // Activa la línea cuando el componente entra en la vista
                }
            },
            { threshold: 0.5 } // El umbral para cuando el header está al 50% en la vista
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

    return (
        <div id="training" ref={headerRef} className="relative bg-white overflow-hidden my-8 lg:my-24">
            <div className="max-w-7xl mx-auto">
                <div className="relative z-10 pb-8 bg-white sm:pb-16 md:pb-20 lg:max-w-2xl lg:w-full lg:pb-28 xl:pb-32">
                    <svg className="hidden lg:block absolute right-0 inset-y-0 h-full w-48 text-white transform translate-x-1/2"
                        fill="currentColor" viewBox="0 0 100 100" preserveAspectRatio="none" aria-hidden="true">
                        <polygon points="50,0 100,0 50,100 0,100"></polygon>
                    </svg>

                    <div className="pt-1"></div>

                    <main className="mt-10 mx-auto max-w-7xl px-4 sm:mt-12 sm:px-6 md:mt-16 lg:mt-20 lg:px-8 xl:mt-28">
                        <div className="text-center lg:text-left">
                            <animated.h2
                                className={`text-5xl font-bold tracking-tight text-[#7ef455] custom-strike-sections ${strikeActive ? 'active' : ''}`}
                                style={props}
                            >
                                training.
                            </animated.h2>

                            <p className="text-[#2c555b] text-lg mt-6 lg:mt-2">
                                Our training programs are designed to help you achieve your fitness goals, no matter your experience level. From strength building and endurance to flexibility and conditioning, we offer a variety of classes tailored to your needs. No mather if you’re looking to join a high-intensity session like CrossFit or BodyPump, or prefer something more focused on balance and mindfulness like Yoga or Pilates, we have something for everyone.
                                                            
                            </p>
                        </div>
                    </main>
                </div>
            </div>
            <div className="lg:absolute lg:inset-y-0 lg:right-0 lg:w-1/2 border-4 border-[#ec4eca]">
                <img className="h-56 w-full object-cover object-top sm:h-72 md:h-96 lg:w-full lg:h-full" src="https://res.cloudinary.com/dzlveh6fi/image/upload/v1717754564/fitness_girl2_myd1af.jpg" alt=""/>
            </div>
        </div>
    );
}
