import { Typewriter } from "react-simple-typewriter";
import { useEffect, useState } from "react";

function Header() {
    const [visible, setVisible] = useState(false);

    useEffect(() => {
        // Mostrar el contenido después de 2 segundos
        const timer = setTimeout(() => {
            setVisible(true);
        }, 2000);

        // Limpiar el temporizador cuando el componente se desmonte
        return () => clearTimeout(timer);
    }, []);


    return (
        <main className={`relative w-full h-screen overflow-hidden ${visible ? '' : 'bg-white'}`}>
            {/* Image */}
            <div className={`absolute inset-0 z-0 transition-opacity duration-1000 ${visible ? 'opacity-100' : 'opacity-0'}`}>
                <img
                    src="https://res.cloudinary.com/dzlveh6fi/image/upload/v1728998306/gym1_evuhw9.jpg"
                    alt="Gym Background"
                    className="w-full h-full object-cover filter-pink"
                />
            </div>
            
            {/* Content */}
            <div className="relative flex items-center justify-center w-full h-full px-6 lg:px-8 z-10">
                <div className="text-center max-w-3xl pt-20 pb-32 sm:pt-48 sm:pb-40">
                    <h1 className={`text-[#7ef455] font-bold tracking-tight text-6xl transition-opacity duration-1000 ${visible ? 'opacity-100' : 'opacity-0'}`}>
                        <Typewriter
                            words={['fitness', 'pilates', 'crossfit', '..and more']}
                            loop={0}
                            cursor
                            cursorStyle='_'
                            typeSpeed={150}
                            deleteSpeed={70}
                            delaySpeed={1000}
                        />
                    </h1>
                    <p className="mt-6 text-3xl font-bold leading-8 text-[#7ef455]">
                        "empower your body, elevate your mind"
                    </p>
                    
                </div>
            </div>
        </main>
    )
}

export default Header
