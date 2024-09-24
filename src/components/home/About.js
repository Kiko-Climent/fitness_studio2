import { useState, useEffect, useRef } from "react";

export default function About() {
  const highlightsRef = useRef(null);
  const [isVisible, setIsVisible] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      if (highlightsRef.current) {  // Asegurarse de que el elemento existe
        const sectionTop = highlightsRef.current.getBoundingClientRect().top;
        const triggerPoint = window.innerHeight * 0.5;

        if (sectionTop < triggerPoint) {
          setIsVisible(true);
        } else {
          setIsVisible(false);
        }
      }
    };

    window.addEventListener('scroll', handleScroll);

    return () => {
      window.removeEventListener('scroll', handleScroll);
    };
  }, []);

  return (
    <div
      id="about"
      ref={highlightsRef}  // Referenciar el div correctamente
      className="flex justify-center items-center py-12 mb-32 text-white mx-auto w-full max-w-screen-lg lg:max-w-7xl px-6 lg:px-16"
    >
      <div
        className="text-2xl font-medium lg:text-4xl text-center px-12 lg:px-24 py-12 lg:py-16 w-full"
        style={{ backgroundColor: '#ec4eca' }}
      >
        <div className="mb-8 custom-strike-about text-5xl">we believe</div>

        <div className="mb-8 leading-6 lg:leading-none">
          in empowering both body and mind, offering a space where fitness is more than just a workout—it’s a lifestyle
        </div>
        <div className="mb-8 leading-6 lg:leading-none">welcome to hercules.</div>

        <div className="text-5xl text-[#3ec70f] lg:text-6xl mb-8 tracking-[-0.075em]">· | - - | ·</div>
      </div>
    </div>
  );
}
