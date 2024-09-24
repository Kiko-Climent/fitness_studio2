import { useState, useEffect } from 'react';
import { useSpring, animated } from '@react-spring/web';

export default function Features2() {
    const [visible, setVisible] = useState(false);
    const [strikeActive, setStrikeActive] = useState(false);

    const [isVisible, setIsVisible] = useState(false);

    const props = useSpring({
        opacity: visible ? 1 : 0,
        transform: visible ? 'translateY(0)' : 'translateY(20px)',
        config: { tension: 280, friction: 80 },
    });

    useEffect(() => {
        const timer = setTimeout(() => {
            setVisible(true);
        }, 2000);

        const strikeTimer = setTimeout(() => {
            setStrikeActive(true);
        }, 4000); // Retraso adicional para que la línea aparezca después del texto

        const timer2 = setTimeout(() => {
            setIsVisible(true);
        }, 7000); // Simula que se activa al entrar la sección


        return () => {
            clearTimeout(timer);
            clearTimeout(strikeTimer);
            clearTimeout(timer2);
        };
    }, []);
    // Animación para la línea subrayada
    const lineAnimation = useSpring({
        from: { width: '0%' },
        to: { width: isVisible ? '100%' : '0%' },
        config: { duration: 1000 }
    });

    // Animación para el texto del encabezado
    const textAnimation = useSpring({
        from: { opacity: 0 },
        to: { opacity: isVisible ? 1 : 0 },
        config: { duration: 500 },
        delay: 1000 // Aparece después de que la línea se trace
    });

    

    return(
        <div className="text-center py-10">
            <animated.div style={props} className={`text-4xl lg:text-5xl font-bold tracking-tight text-[#7ef455] custom-strike-sections ${strikeActive ? 'active' : ''}`}
            >
                {["why", "to", "choose", "us?"].map((word, index) => (
                    <span
                        key={index}
                        style={{
                            opacity: visible ? 2 : 0,
                            transition: `opacity ${index * 1.0}s ease-out`,
                        }}
                    >
                        {word}{" "}
                    </span>
                ))}
            </animated.div>

            <div className="flex flex-wrap items-center mt-20 text-left text-center">
                <div className="w-full md:w-3/5 lg:w-1/2 px-4 filter sepia">
                    <img src="https://res.cloudinary.com/dzlveh6fi/image/upload/v1718107268/david-marioni-F_lns58a_ec-unsplash_xqgype.jpg" alt="gem" className="inline-block rounded shadow-lg border border-merino-400"/>
                </div>
                <div className="w-full md:w-2/5 lg:w-1/2 px-4 text-center md:text-left lg:pl-12">
                    <animated.div style={lineAnimation} className="bg-[#7ef455] h-1 hidden md:block"></animated.div>
                    <animated.h3 style={textAnimation} className="font-bold mt-8 text-5xl md:mt-0 sm:text-5xl text-[#7ef455]">
                        cardio.
                    </animated.h3>
                    <animated.div style={lineAnimation} className="bg-[#7ef455] h-1"></animated.div>
                    <p className="sm:text-lg mt-6 text-[#2c555b]">
                        Our cardio section features state-of-the-art machines, including treadmills, ellipticals, and stationary bikes, designed to help you achieve your cardiovascular goals and stay motivated.
                    </p>
                </div>
            </div>
            <div className="flex flex-wrap items-center mt-20 text-left text-center">
                <div className="w-full md:w-3/5 lg:w-1/2 px-4 filter sepia">
                    <img src="https://res.cloudinary.com/dzlveh6fi/image/upload/v1718104888/anastase-maragos-FP7cfYPPUKM-unsplash_odwhbv.jpg" alt="project members" className="inline-block rounded shadow-lg border border-merino-400"/>
                </div>
                <div className="w-full md:w-2/5 lg:w-1/2 px-4 md:order-first text-center md:text-right lg:pr-12">
                    <animated.div style={lineAnimation} className="bg-[#7ef455] h-1"></animated.div>
                    <animated.h3 style={textAnimation} className="font-bold mt-8 text-5xl md:mt-0 text-[#7ef455]">
                        weight.
                    </animated.h3>
                    <animated.div style={lineAnimation} className="bg-[#7ef455] h-1"></animated.div>
                    <p className="sm:text-lg mt-6 text-[#2c555b]">
                    In our weight training area, you'll find a comprehensive range of free weights and resistance machines. Whether you’re focusing on strength building or muscle toning, our diverse selection ensures you have the tools needed for an effective workout.
                    </p>
                </div>
            </div>
            <div className="flex flex-wrap items-center mt-20 text-left text-center">
                <div className="w-full md:w-3/5 lg:w-1/2 px-4 filter sepia">
                    <img src="https://res.cloudinary.com/dzlveh6fi/image/upload/v1718105228/sauna2_xbrun1.jpg" alt="gem" className="inline-block rounded shadow-lg border border-merino-400"/>
                </div>
                <div className="w-full md:w-2/5 lg:w-1/2 px-4 text-center md:text-left lg:pl-12">
                    <animated.div style={lineAnimation} className="bg-[#7ef455] h-1"></animated.div>
                    <animated.h3 style={textAnimation} className="font-bold mt-8 text-5xl md:mt-0 text-[#7ef455]">
                        sauna.
                    </animated.h3>
                    <animated.div style={lineAnimation} className="bg-[#7ef455] h-1"></animated.div>
                    <p className="sm:text-lg mt-6 text-[#2c555b]">
                        Relax and rejuvenate in our luxurious sauna, designed to help you unwind and recover after intense workouts. The sauna promotes relaxation, improves circulation, and helps in muscle recovery.
                    </p>
                </div>
            </div>
            <div className="flex flex-wrap items-center mt-20 text-left text-center">
                <div className="w-full md:w-3/5 lg:w-1/2 px-4 filter sepia">
                    <img src="https://res.cloudinary.com/dzlveh6fi/image/upload/v1718107680/highlight-id-TSZnGmHRdmk-unsplash_ynfxsu.jpg" alt="project members" className="inline-block rounded shadow-lg border border-merino-400"/>
                </div>
                <div className="w-full md:w-2/5 lg:w-1/2 px-4 md:order-first text-center md:text-right lg:pr-12">
                    <animated.div style={lineAnimation} className="bg-[#7ef455] h-1"></animated.div>
                    <animated.h3 style={textAnimation} className="font-bold mt-8 text-5xl md:mt-0 text-[#7ef455]">
                        pool.
                    </animated.h3>
                    <animated.div style={lineAnimation} className="bg-[#7ef455] h-1"></animated.div>
                    <p className="sm:text-lg mt-6 text-[#2c555b]">
                    Enjoy our pristine swimming pool for both exercise and leisure. Swimming is an excellent low-impact workout that engages multiple muscle groups and helps improve overall fitness.
                    </p>
                </div>
            </div>

    </div>
        )
    }