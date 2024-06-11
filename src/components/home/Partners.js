import nike from "assets/img/nike_logo2.png"
import reebok from "assets/img/reebok_logo.png"
import adidas from "assets/img/adidas_logo.png"
import gatorade from "assets/img/gatorade_logo.png"
import okpro from "assets/img/okpro_logo.jpeg"
import esn from "assets/img/esn_logo.webp"

export default function Partners() {
    return(
        <div class="py-8 lg:py-16 mx-auto max-w-screen-xl px-4">
        <h2 class="mb-8 lg:mb-16 text-3xl font-extrabold tracking-tight leading-tight text-center text-gray-900 dark:text-white md:text-4xl">Our Partners</h2>
        <div class="grid grid-cols-2 gap-8 text-gray-500 sm:gap-12 md:grid-cols-3 lg:grid-cols-6 dark:text-gray-400">
            <img src={nike} className="flex justify-center items-center"/>

            <img src={reebok} className="flex justify-center items-center"/>

            <img src={adidas} className="flex justify-center items-center mt-8"/>

            <img src={gatorade} className="flex justify-center items-center mt-6"/>

            <img src={okpro} className="flex justify-center items-center"/>

            <img src={esn} className="flex justify-center items-center mt-3"/>
                                                               

            
        </div>
    </div>
    )
}