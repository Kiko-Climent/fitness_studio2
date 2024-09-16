export default function Header() {
    
    return(
        <div id="about" className="relative bg-white overflow-hidden my-16">
            <div className="max-w-7xl mx-auto">
                <div className="relative z-10 pb-8 bg-white sm:pb-16 md:pb-20 lg:max-w-2xl lg:w-full lg:pb-28 xl:pb-32">
                    <svg className="hidden lg:block absolute right-0 inset-y-0 h-full w-48 text-white transform translate-x-1/2"
                        fill="currentColor" viewBox="0 0 100 100" preserveAspectRatio="none" aria-hidden="true">
                        <polygon points="50,0 100,0 50,100 0,100"></polygon>
                    </svg>

                    <div className="pt-1"></div>

                    <main className="mt-10 mx-auto max-w-7xl px-4 sm:mt-12 sm:px-6 md:mt-16 lg:mt-20 lg:px-8 xl:mt-28">
                        <div className="sm:text-center lg:text-left">
                            <h2 className="my-6 tracking-tight font-bold text-[#7ef455] custom-strike-sections active text-5xl ">
                                training.
                            </h2>

                            <p className="text-[#2c555b]">
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
    )
}