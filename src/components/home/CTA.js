import cta_pic from "assets/img/fitness_girl_color.jpg"

export default function CTA() {
    return(
        <div className="px-2 py-20 w-full flex justify-center">
            <div className="bg-white lg:mx-8 lg:flex lg:max-w-5xl lg:shadow-lg rounded-lg">
                <div className="lg:w-1/2">
                    <div className="lg:scale-110 h-80 bg-cover lg:h-full rounded-b-none border-2">
                        <img 
                        src={cta_pic}
                        className="w-full h-full filter-pink"/>
                    </div>
                </div>
                <div className="py-8 px-6 lg:px-12 max-w-xl lg:max-w-5xl lg:w-1/2 rounded-t-none border-r-2 border-b-2 border-t-2 border-[#7ef455] lg:rounded-lg">
                    <h2 className="text-4xl text-[#7ef455] font-bold">
                        do you want to workout with us?
                    </h2>
                    <p className="mt-4 text-[#2c555b]">
                        The "Eco-Tracker" project aims to create a web-based platform that encourages individuals to adopt
                        sustainable lifestyle choices and actively contribute to environmental conservation. The platform will
                        provide users with personalized tracking, education, and engagement features to empower them to make
                        eco-friendly decisions in various aspects of their lives.
                    </p>
                    <div className="mt-4">
                        <a href="#" className="text-[#ec4eca] text-5xl tracking-tight font-bold px-5 py-2 hover:bg-[#7ef455]">choose your plan</a>
                    </div>
                </div>
            </div>
        </div>
    )
}