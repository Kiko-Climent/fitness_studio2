import { Typewriter } from "react-simple-typewriter"
import { Link } from "react-router-dom"
import landingPic from "assets/img/gym1.jpeg"

function Header(){

    return(
        <main>
        <div className="relative px-6 lg:px-8">
          <div className="mx-auto max-w-3xl pt-20 pb-32 sm:pt-48 sm:pb-40">
            <div>
              <div>
                <h1 className="text-white font-bold tracking-tight sm:text-center sm:text-6xl text-7xl">
                   
                  <Typewriter
                        words={['Fitness', 'Pilates', 'Crossfit', 'Yoga', '..and more']}
                        loop={0}
                        cursor
                        cursorStyle='_'
                        typeSpeed={150}
                        deleteSpeed={70}
                        delaySpeed={1000}
                        //onLoopDone={handleDone}
                        //onType={handleType}
                    />
                </h1>
                <p className="mt-6 text-3xl font-bold leading-8 text-white sm:text-center">
                    "Empower Your Body, Elevate Your Mind"
                </p>
                <div className="mt-8 flex gap-x-4 sm:justify-center">
                  <a
                    href="#"
                    className="inline-block rounded-lg bg-blue-hercules px-4 py-1.5 text-base font-bold leading-7 text-white shadow-sm ring-1 ring-indigo-600 hover:bg-indigo-700 hover:ring-indigo-700"
                  >
                    Join Us
                   
                  </a>
                
                </div>
              </div>
              <div className="absolute inset-0 -z-10">
              <img
                src={landingPic}
                alt="Gym Background"
                className="w-full h-full object-cover"
            />
              </div>
            </div>
          </div>
        </div>
      </main>
    )
}
export default Header