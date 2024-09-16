import { Link } from "react-router-dom";

function TrainingCard({ data, index }) {
    return (
        <Link
            to={`/training/${data.id}`}
            onMouseEnter={() => {
                const title_element = document.getElementById(`title-${index}`);
                if (title_element) {
                    title_element.classList.add('custom-strike-sections');
                }
                const img = document.getElementById(`img-${data.id}`);
                if (img) {
                    img.classList.add('filter-pink');
                }
            }}
            onMouseLeave={() => {
                const title_element = document.getElementById(`title-${index}`);
                if (title_element) {
                    title_element.classList.remove('custom-strike-sections');
                }
                const img = document.getElementById(`img-${data.id}`);
                if (img) {
                    img.classList.remove('filter-pink');
                }
            }}
            className="flex flex-col overflow-hidden rounded-lg shadow-lg"
        >
            <div className="flex-shrink-0">
                <img id={`img-${data.id}`} className="h-72 w-full transition duration-400 ease-in-out object-cover" src={data.image_url} alt="" />
            </div>
            <div className="flex flex-1 flex-col justify-between bg-white p-6">
                <div className="flex-1">
                    <div className="-mt-8 block">
                        <p id={`title-${index}`} className=" pt-4 pb-8 text-4xl font-bold transition duration-400 ease-in-out text-[#7ef455]">{data.name}</p>
                        <p className="-mt-6 text-xl space-y-2 leading-6 text-[#2c555b]">{data.description}</p>
                    </div>
                </div>
            </div>
        </Link>
    );
}

export default TrainingCard;

