import { useEffect } from 'react';
import { connect } from 'react-redux';
import { get_courses } from 'redux/actions/courses';
import TrainingCard from './TrainingCard';
import Carousel from 'next-elastic-carousel';

const TrainingList = ({ courses, get_courses }) => {
    console.log('Courses from props:', courses);
  useEffect(() => {
      console.log('Fetching courses...');
      get_courses();
  }, [get_courses]);

  const breakPoints = [
      { width: 1, itemsToShow: 1, itemsToScroll: 1 },
      { width: 250, itemsToShow: 1, itemsToScroll: 1, pagination: false },
      { width: 1280, itemsToShow: 4, itemsToScroll: 1 },
      { width: 1756, itemsToShow: 3, itemsToScroll: 1 },
  ];
  console.log('Courses from props:', courses);
  return (
      <div className="relative px-4 pt-16 pb-20 sm:px-6 lg:px-8 lg:pb-28">
          <div className="absolute inset-0">
              <div className="h-1/3 bg-white sm:h-2/3" />
          </div>
          <div className="relative mx-auto lg:mx-12 max-full">
              <div className="text-center">
                  <h2 className="text-5xl font-bold tracking-tight text-[#7ef455] pb-2 lg:pb-12">courses & training plan.</h2>
              </div>
              <Carousel
                  itemsToScroll={3}
                  itemsToShow={3}
                  breakPoints={breakPoints}
                  pagination={false}
                  itemPadding={[0, 48]}
              >
                  {courses && courses.map((course, index) => (
                      <TrainingCard key={course.id} index={index} data={course} />
                      
                  ))}
              </Carousel>
          </div>
      </div>
  );
}

const mapStateToProps = (state) => ({
    courses: state.Courses.courses || []
  });

export default connect(mapStateToProps, { get_courses })(TrainingList);
