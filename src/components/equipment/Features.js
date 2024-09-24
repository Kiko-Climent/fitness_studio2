export default function Features() {
    return(
        <div className="p-4 lg:p-8 bg-white text-gray-100">
            <div className="container mx-auto space-y-12">
                <div className="flex flex-col overflow-hidden rounded-md shadow-sm lg:flex-row">
                    <img src="https://res.cloudinary.com/dzlveh6fi/image/upload/v1718104579/cardio_remo_ro4ib3.jpg" alt="" className="h-80 bg-gray-500 aspect-video" />
                    <div className="flex flex-col justify-center flex-1 p-6 bg-gray-200">
                        <span className="text-xl font-bold uppercase text-gray-900">Cardio</span>
                        <h3 className="text-3xl font-semi-bold text-black">We're not reinventing the wheel</h3>
                        <p className="my-6 text-gray-900">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor aliquam possimus quas, error esse quos.</p>
                        <button type="button" className="self-start">Action</button>
                    </div>
                </div>
                <div className="flex flex-col overflow-hidden rounded-md shadow-sm lg:flex-row-reverse">
                    <img src="https://res.cloudinary.com/dzlveh6fi/image/upload/v1718104888/anastase-maragos-FP7cfYPPUKM-unsplash_odwhbv.jpg" alt="" className="h-80 bg-gray-500 aspect-video" />
                    <div className="flex flex-col justify-center flex-1 p-6 bg-gray-900">
                        <span className="text-xs uppercase text-gray-400">Join, it's free</span>
                        <h3 className="text-3xl font-bold">We're not reinventing the wheel</h3>
                        <p className="my-6 text-gray-400">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor aliquam possimus quas, error esse quos.</p>
                        <button type="button" className="self-start">Action</button>
                    </div>
                </div>
                <div className="flex flex-col overflow-hidden rounded-md shadow-sm lg:flex-row">
                    <img src="https://res.cloudinary.com/dzlveh6fi/image/upload/v1718105228/sauna2_xbrun1.jpg" alt="" className="h-80 bg-gray-500 aspect-video" />
                    <div className="flex flex-col justify-center flex-1 p-6 bg-gray-900">
                        <span className="text-xs uppercase text-gray-400">Join, it's free</span>
                        <h3 className="text-3xl font-bold">We're not reinventing the wheel</h3>
                        <p className="my-6 text-gray-400">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor aliquam possimus quas, error esse quos.</p>
                        <button type="button" className="self-start">Action</button>
                    </div>
                </div>
            </div>
        </div>
    )
}