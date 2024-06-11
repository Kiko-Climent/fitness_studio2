export default function Header() {
    return(
        <div id="about" class="relative bg-white overflow-hidden mt-16">
            <div class="max-w-7xl mx-auto">
                <div class="relative z-10 pb-8 bg-white sm:pb-16 md:pb-20 lg:max-w-2xl lg:w-full lg:pb-28 xl:pb-32">
                    <svg class="hidden lg:block absolute right-0 inset-y-0 h-full w-48 text-white transform translate-x-1/2"
                        fill="currentColor" viewBox="0 0 100 100" preserveAspectRatio="none" aria-hidden="true">
                        <polygon points="50,0 100,0 50,100 0,100"></polygon>
                    </svg>

                    <div class="pt-1"></div>

                    <main class="mt-10 mx-auto max-w-7xl px-4 sm:mt-12 sm:px-6 md:mt-16 lg:mt-20 lg:px-8 xl:mt-28">
                        <div class="sm:text-center lg:text-left">
                            <h2 class="my-6 text-2xl tracking-tight font-extrabold text-gray-900 sm:text-3xl md:text-4xl">
                                About Us
                            </h2>

                            <p>
                                Donec porttitor, enim ut dapibus lobortis, lectus sem tincidunt dui, eget ornare lectus ex non
                                libero. Nam rhoncus diam ultrices porttitor laoreet. Ut mollis fermentum ex, vel viverra lorem
                                volutpat sodales. In ornare porttitor odio sit amet laoreet. Sed laoreet, nulla a posuere
                                ultrices, purus nulla tristique turpis, hendrerit rutrum augue quam ut est. Fusce malesuada
                                posuere libero, vitae dapibus eros facilisis euismod. Sed sed lobortis justo, ut tincidunt
                                velit. Mauris in maximus eros.
                            </p>
                        </div>
                    </main>
                </div>
            </div>
            <div class="lg:absolute lg:inset-y-0 lg:right-0 lg:w-1/2">
                <img class="h-56 w-full object-cover object-top sm:h-72 md:h-96 lg:w-full lg:h-full" src="https://res.cloudinary.com/dzlveh6fi/image/upload/v1717756752/about_pic_jlrvfb.jpg" alt=""/>
            </div>
        </div>
    )
}