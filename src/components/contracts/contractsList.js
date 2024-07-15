import React from 'react';

// Información estática de los contratos
const contractsData = [
  {
    title: 'Golden Plan',
    description: 'Enjoy all our facilities',
    price: '34.99€/month',
    features: ['Equipment', 'Courses', 'Sauna', 'Pool'],
  },
  {
    title: 'Silver Plan',
    description: 'Add Sauna if you visit us',
    price: '29.99€/month',
    features: ['Equipment', 'Courses', 'Sauna'],
  },
  {
    title: 'Bronze Plan',
    description: 'Get Fit with us',
    price: '24.99€/month',
    features: ['Equipment', 'Courses'],
  },
];

// Componente de tarjeta de contrato
const ContractCard = ({ contract }) => (
  <div className="relative flex flex-col bg-clip-border rounded-xl bg-white text-gray-700 shadow-md border border-blue-gray-100">
    <div className="relative bg-clip-border mt-4 mx-4 rounded-xl overflow-hidden bg-transparent text-gray-700 shadow-none !m-0 p-6">
      <h5 className="block antialiased tracking-normal font-sans text-xl font-semibold leading-snug text-blue-gray-900 capitalize">{contract.title}</h5>
      <p className="block antialiased font-sans text-sm leading-normal text-inherit font-normal !text-gray-500">{contract.description}</p>
      <h3 className="antialiased tracking-normal font-sans text-3xl font-semibold leading-snug text-blue-gray-900 flex gap-1 mt-4">{contract.price}</h3>
    </div>
    <div className="flex-grow p-6 border-t border-blue-gray-50">
      <ul className="flex flex-col gap-3">
        {contract.features.map((feature, index) => (
          <li key={index} className="flex items-center gap-3 text-gray-700">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="2" stroke="currentColor" aria-hidden="true" className="h-4 w-4 text-blue-gray-900">
              <path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5"></path>
            </svg>
            <p className="block antialiased font-sans text-sm leading-normal font-normal text-inherit">{feature}</p>
          </li>
        ))}
      </ul>
    </div>
    <div className="p-6 border-t border-blue-gray-50">
      <button className="align-middle select-none font-sans font-bold text-center uppercase transition-all disabled:opacity-50 disabled:shadow-none disabled:pointer-events-none text-xs py-2 px-4 rounded-lg border border-blue-hercules text-blue-hercules hover:bg-blue-hercules hover:text-white focus:ring focus:ring-green-200 active:opacity-[0.85] block w-full mt-6" type="button">buy now</button>
    </div>
  </div>
);

// Componente principal ContractsList
const ContractsList = () => (
  <div className="px-8 pt-24">
    <div className="container mx-auto text-center">
      <h2 className="block antialiased tracking-normal font-sans text-4xl font-semibold leading-[1.3] text-blue-gray-900 mb-4">Pricing</h2>
      <p className="block antialiased font-sans text-base leading-relaxed text-inherit mb-8 font-normal !text-gray-500">Check out our affordable pricing options for delicious meals.</p>
    </div>
    <div className="mt-12">
      <div className="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
        {contractsData.map((contract, index) => (
          <ContractCard key={index} contract={contract} />
        ))}
      </div>
    </div>
  </div>
);

export default ContractsList;
