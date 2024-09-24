export default function TrialDay () {
    return (
        <div className="bg-white pb-12 sm:pb-20">
            <div className="mx-auto max-w-7xl px-6 lg:px-8">
                <div className="mx-auto mt-12 max-w-2xl border border-[#7ef455] sm:mt-16 lg:mx-0 lg:flex lg:max-w-none">
                <div className="p-8 sm:p-10 lg:flex-auto">
                    <h3 className="text-5xl font-bold tracking-tight text-[#7ef455]">trial day ticket.</h3>
                    <p className="text-xl font-bold leading-7 text-[#2c555b]">not sure about the plan that fits you better?, try our facilities first.</p>
                    <div className="mt-10 flex items-center gap-x-4">
                    <h4 className="flex-none text-3xl font-semibold leading-6 text-[#ec4eca]">what’s included</h4>
                    <div className="h-px flex-auto bg-[#7ef455]"></div>
                    </div>
                    <ul role="list" className="grid leading-2 text-[#2c555b] font-bold sm:grid-cols-2 ">
                    <li className="flex items-start"> {/* Alineación superior */}
                        <div className="text-7xl leading-none">·</div> {/* Remover espacio adicional con leading-none */}
                        <span className="self-center pt-3 text-2xl">cardio & weight-machines</span> {/* Centrar el texto verticalmente */}
                    </li>
                    <li className="flex items-start">
                        <div className="text-7xl leading-none">·</div>
                        <span className="self-center pt-3 text-2xl">try our courses</span>
                    </li>
                    <li className="flex items-start">
                        <div className="text-7xl leading-none">·</div>
                        <span className="self-center pt-3 text-2xl">enjoy our olympic pool</span>
                    </li>
                    <li className="flex items-start">
                        <div className="text-7xl leading-none">·</div>
                        <span className="self-center pt-3 text-2xl">relax in our sauna</span>
                    </li>
                    </ul>

                </div>
                <div className="-mt-2 lg:mt-10 lg:w-full lg:max-w-md lg:flex-shrink-0">
                    <div className="bg-[#7ef455] py-10 text-center ring-1 ring-inset ring-gray-900/5 lg:flex lg:flex-col lg:justify-center lg:py-16">
                    <div className="mx-auto max-w-xs px-8">
                        <p className="mt-6 flex items-baseline justify-center gap-x-2">
                        <span className="text-5xl font-bold tracking-tight text-[#ec4eca]">14,00€</span>
                        </p>
                        <div className="align-middle select-none tracking-tight font-bold text-center transition-all disabled:opacity-50 disabled:shadow-none disabled:pointer-events-none text-5xl px-4 text-[#ec4eca] hover:bg-[#ec4eca] hover:text-[#7ef455] focus:ring focus:ring-green-200 active:opacity-[0.85] block w-full" type="button">
                        get it now
                        </div>
                    </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    )
}
