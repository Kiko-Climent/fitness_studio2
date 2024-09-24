import { useEffect, useState } from 'react';
import { useSpring, animated } from '@react-spring/web';
import { connect } from 'react-redux';
import { get_courses } from 'redux/actions/courses';
import TrainingCard from './TrainingCard';
import Carousel from 'next-elastic-carousel';

const TrainingList = ({ courses, get_courses }) => {
    const [visible, setVisible] = useState(false);
    const [strikeActive, setStrikeActive] = useState(false);

    const [isVisible, setIsVisible] = useState(false);

    const props = useSpring({
        opacity: visible ? 1 : 0,
        transform: visible ? 'translateY(0)' : 'translateY(20px)',
        config: { tension: 280, friction: 80 },
    });

    useEffect(() => {
        const timer = setTimeout(() => {
            setVisible(true);
        }, 2000);

        const strikeTimer = setTimeout(() => {
            setStrikeActive(true);
        }, 4000); // Retraso adicional para que la línea aparezca después del texto

        const timer2 = setTimeout(() => {
            setIsVisible(true);
        }, 7000); // Simula que se activa al entrar la sección

        return () => {
            clearTimeout(timer);
            clearTimeout(strikeTimer);
            clearTimeout(timer2);
        };
    }, []);

    useEffect(() => {
        console.log('Fetching courses...');
        get_courses();
    }, [get_courses]);

    const breakPoints = [
        { width: 1, itemsToShow: 1, itemsToScroll: 1 }, // Dispositivos móviles
        { width: 640, itemsToShow: 1, itemsToScroll: 1, pagination: true }, // sm: dispositivos pequeños
        { width: 1024, itemsToShow: 2, itemsToScroll: 1 }, // md: tablets
        { width: 1280, itemsToShow: 3, itemsToScroll: 1 }, // lg: pantallas grandes
        { width: 1756, itemsToShow: 4, itemsToScroll: 1 }, // xl: pantallas muy grandes
    ];

    return (
        <div className="relative px-4 pt-16 pb-20 lg:px-8 lg:pb-28 sm:px-2">
            <div className="absolute inset-0">
                <div className="h-1/3 bg-white sm:h-2/3" />
            </div>
            <div className="text-center relative mx-auto max-w-full lg:mx-12">
                <animated.div style={props} className={`text-3xl lg:text-5xl font-bold tracking-tight text-[#7ef455] custom-strike-sections ${strikeActive ? 'active' : ''}`}>
                    {["courses", "and", "workouts",].map((word, index) => (
                        <span
                            key={index}
                            style={{
                                opacity: visible ? 1 : 0,
                                transition: `opacity ${index * 1.0}s ease-out`,
                            }}
                        >
                            {word}{" "}
                        </span>
                    ))}
                </animated.div>
                <div className="mt-12 sm:mt-16">
                    <Carousel
                        itemsToScroll={1} // Cambiado a 1 para que el scroll sea más suave en móviles
                        itemsToShow={1} // Mostrar un solo ítem en móviles
                        breakPoints={breakPoints}
                        pagination={true} // Activar paginación en dispositivos móviles
                        itemPadding={[10, 16]} // Más espacio interno en móviles
                    >
                        {courses && courses.map((course, index) => (
                            <TrainingCard key={course.id} index={index} data={course} />
                        ))}
                    </Carousel>
                </div>
            </div>
        </div>
    );
};

const mapStateToProps = (state) => ({
    courses: state.Courses.courses || []
});

export default connect(mapStateToProps, { get_courses })(TrainingList);
