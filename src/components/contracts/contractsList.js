import React from 'react';

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
    <div className="relative bg-clip-border mt-2 mx-2 rounded-xl overflow-hidden bg-transparent shadow-none !m-0 pl-12">
    <div className="flex items-center space-x-4"> {/* Contenedor flex */}
        <h5 className="font-bold tracking-tight text-5xl leading-snug text-[#7ef455]">{contract.title}</h5>
        <p className="antialiased text-lg leading-normal text-inherit font-bold !text-[#2c555b] pt-6">{contract.description}</p>
    </div>
    <h3 className="antialiased tracking-normal font-sans text-3xl font-semibold leading-snug text-[#ec4eca] flex gap-1 mt-0">{contract.price}</h3>
  </div>
    <div className="flex-grow p-6 border-t border-[#7ef455]">
      <ul className="flex flex-col gap-3">
        {contract.features.map((feature, index) => (
          <li key={index} className="flex items-center gap-3 text-gray-700">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="2" stroke="currentColor" aria-hidden="true" className="h-4 w-4 text-blue-gray-900">
              <path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5"></path>
            </svg>
            <p className="block antialiased font-sans text-sm leading-normal font-bold text-[#2c555b]">{feature}</p>
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
const ContractsList = () => (
  <div className="px-8 pt-24">
    <div className="container mx-auto text-center">
    <h2 className="my-6 tracking-tight font-bold text-[#7ef455] custom-strike-sections active text-5xl ">memberships.</h2>
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

export default ContractsList;
