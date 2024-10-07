import { useState, useEffect, useRef } from 'react';
import { useSpring, animated } from '@react-spring/web';

// Información estática de los contratos
const contractsData = [
  {
    title: 'golden.',
    description: 'enjoy all our facilities',
    price: '34.99€/month',
    features: ['Equipment', 'Courses', 'Sauna', 'Pool'],
  },
  {
    title: 'silver.',
    description: 'add sauna if you visit us',
    price: '29.99€/month',
    features: ['Equipment', 'Courses', 'Sauna'],
  },
  {
    title: 'bronze.',
    description: 'get fit with us',
    price: '24.99€/month',
    features: ['Equipment', 'Courses'],
  },
];


// Componente de tarjeta de contrato
const ContractCard = ({ contract }) => (
  
  <div className="relative flex flex-col bg-clip-border bg-white border border-[#7ef455]">
      <div className="relative bg-clip-border flex-row rounded-xl overflow-hidden bg-transparent shadow-none pl-1">
        <div className="flex flex-col lg:flex-row lg:justify-center lg:gap-4"> {/* Contenedor flex */}
            <h5 className="font-bold tracking-tight text-5xl leading-snug text-[#7ef455] text-center">{contract.title}</h5>
            <h3 className="antialiased tracking-tight text-4xl font-semibold leading-snug text-[#ec4eca] -pt-3 lg:pt-3 text-center">{contract.price}</h3>
        </div>
        
        <p className="antialiased text-xl lg:text-3xl tracking-tight font-bold !text-[#2c555b] !-mt-3 text-center">{contract.description}</p>
      </div>
      <div className="flex-grow p-6 border-t border-[#7ef455]">
        <ul className="flex flex-col">
          {contract.features.map((feature, index) => (
            <li key={index} className="flex items-center gap-3 text-gray-700">
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="2" stroke="currentColor" aria-hidden="true" className="h-4 w-4 text-blue-gray-900">
                <path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5"></path>
              </svg>
              <p className="block antialiased text-3xl tracking-tight font-bold text-[#2c555b]">{feature}</p>
            </li>
          ))}
        </ul>
      </div>
      <div className="align-middle select-none tracking-tight font-bold text-center transition-all disabled:opacity-50 disabled:shadow-none disabled:pointer-events-none text-5xl py-2 px-4 text-[#ec4eca] hover:bg-[#ec4eca] hover:text-[#7ef455] focus:ring focus:ring-green-200 active:opacity-[0.85] block w-full mt-6" type="button">
        get it now
      </div>
  </div>
);

// Componente principal ContractsList
const ContractsList = () => {
  const [visible, setVisible] = useState(false);
  const [strikeActive, setStrikeActive] = useState(false);
  const headerRef = useRef(null);

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
    <div className="px-8 pt-24">
      <div className="container mx-auto text-center">
        {/* Aplicamos la animación al título */}
        <animated.h2
          ref={headerRef}
          className={`my-6 tracking-tight font-bold text-[#7ef455] custom-strike-sections ${strikeActive ? 'active' : ''} text-4xl lg:text-5xl`}
          style={props}
        >
          memberships.
        </animated.h2>
      </div>
      <div className="mt-12">
        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
          {contractsData.map((contract, index) => (
            <ContractCard key={index} contract={contract} />
          ))}
        </div>
      </div>
    </div>
  );
};

export default ContractsList;
