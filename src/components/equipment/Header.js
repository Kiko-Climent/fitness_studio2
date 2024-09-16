import { useState, useEffect, useRef } from 'react';

export default function Header() {
    const [visible, setVisible] = useState(false);
    const [strikeActive, setStrikeActive] = useState(false);
    const headerRef = useRef(null);

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

    return(
        <div id="about" ref={headerRef} className="relative bg-white overflow-hidden my-16">
            <div className="max-w-7xl mx-auto">
                <div className="relative z-10 pb-8 bg-white sm:pb-16 md:pb-20 lg:max-w-2xl lg:w-full lg:pb-28 xl:pb-32">
                    <svg className="hidden lg:block absolute right-0 inset-y-0 h-full w-48 text-white transform translate-x-1/2"
                        fill="currentColor" viewBox="0 0 100 100" preserveAspectRatio="none" aria-hidden="true">
                        <polygon points="50,0 100,0 50,100 0,100"></polygon>
                    </svg>

                    <div className="pt-1"></div>

                    <main className="mt-10 mx-auto max-w-7xl px-4 sm:mt-12 sm:px-6 md:mt-16 lg:mt-20 lg:px-8 xl:mt-28">
                        <div className="sm:text-center lg:text-left">
                            <h2 className={`text-5xl font-bold tracking-tight text-[#7ef455] custom-strike-sections ${strikeActive ? 'active' : ''}`}
            >equipment.</h2>

                            <p className="text-[#2c555b]">
                            At Hercules, we provide top-of-the-line equipment to meet all your fitness needs. Come and explore our gym's diverse equipment and facilities tailored to support your fitness journey and enhance your well-being.


                            </p>
                        </div>
                    </main>
                </div>
            </div>
            <div className="lg:absolute lg:inset-y-0 lg:right-0 lg:w-1/2 border-4 border-[#ec4eca]">
                <img className="h-56 w-full object-cover object-top sm:h-72 md:h-96 lg:w-full lg:h-full" src="https://res.cloudinary.com/dzlveh6fi/image/upload/v1717756273/equipment2_pl56gt.jpg" alt=""/>
            </div>
        </div>
    )
}