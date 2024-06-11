import cta_pic from "assets/img/fitness_girl_color.jpg"

export default function CTA() {
    return(
        <div class="px-2 py-20 w-full flex justify-center">
            <div class="bg-white lg:mx-8 lg:flex lg:max-w-5xl lg:shadow-lg rounded-lg">
                <div class="lg:w-1/2">
                    <div class="lg:scale-110 h-80 bg-cover lg:h-full rounded-b-none border lg:rounded-lg">
                        <img 
                        src={cta_pic}
                        className="w-full h-full"/>
                    </div>
                </div>
                <div class="py-12 px-6 lg:px-12 max-w-xl lg:max-w-5xl lg:w-1/2 rounded-t-none border lg:rounded-lg">
                    <h2 class="text-4xl text-gray-800 font-bold">
                        Do you want to workout with us?
                    </h2>
                    <p class="mt-4 text-gray-600">
                        The "Eco-Tracker" project aims to create a web-based platform that encourages individuals to adopt
                        sustainable lifestyle choices and actively contribute to environmental conservation. The platform will
                        provide users with personalized tracking, education, and engagement features to empower them to make
                        eco-friendly decisions in various aspects of their lives.
                    </p>
                    <div class="mt-8">
                        <a href="#" class="bg-gray-900 text-gray-100 px-5 py-3 font-semibold rounded">Trial Day</a>
                    </div>
                </div>
            </div>
        </div>
    )
}