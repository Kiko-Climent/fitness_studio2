import TrainingCard from "./TrainingCard"
import Carousel from 'next-elastic-carousel'

function TrainingList() {
    const posts = [
        {
          id:'1234-logs',
          title: 'Boost your conversion rate',
          href: '#',
          category: { name: 'Article', href: '#' },
          description:
            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto accusantium praesentium eius, ut atque fuga culpa, similique sequi cum eos quis dolorum.',
          date: 'Mar 16, 2020',
          datetime: '2020-03-16',
          imageUrl:
            'https://res.cloudinary.com/dzlveh6fi/image/upload/v1718114697/bodypump2_yjclsk.jpg',
          readingTime: '6 min',
          author: {
            name: 'Roel Aufderehar',
            href: '#',
            imageUrl:
              'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80',
          },
        },
        {
          id:'1234-qwer',
          title: 'How to use search engine optimization to drive sales',
          href: '#',
          category: { name: 'Video', href: '#' },
          description:
            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit facilis asperiores porro quaerat doloribus, eveniet dolore. Adipisci tempora aut inventore optio animi., tempore temporibus quo laudantium.',
          date: 'Mar 10, 2020',
          datetime: '2020-03-10',
          imageUrl:
            'https://res.cloudinary.com/dzlveh6fi/image/upload/v1718102596/crossfit_lg_es84zr.jpg',
          readingTime: '4 min',
          author: {
            name: 'Brenna Goyette',
            href: '#',
            imageUrl:
              'https://images.unsplash.com/photo-1550525811-e5869dd03032?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80',
          },
        },
        {
          id:'1234-koki',
          title: 'Improve your customer experience',
          href: '#',
          category: { name: 'Case Study', href: '#' },
          description:
            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint harum rerum voluptatem quo recusandae magni placeat saepe molestiae, sed excepturi cumque corporis perferendis hic.',
          date: 'Feb 12, 2020',
          datetime: '2020-02-12',
          imageUrl:
            'https://res.cloudinary.com/dzlveh6fi/image/upload/v1717612858/pilates_jykkfq.jpg',
          readingTime: '11 min',
          author: {
            name: 'Daniela Metz',
            href: '#',
            imageUrl:
              'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80',
          },
        },
        {
          id:'1234-polr',
          title: 'Improve your customer experience',
          href: '#',
          category: { name: 'Case Study', href: '#' },
          description:
            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint harum rerum voluptatem quo recusandae magni placeat saepe molestiae, sed excepturi cumque corporis perferendis hic.',
          date: 'Feb 12, 2020',
          datetime: '2020-02-12',
          imageUrl:
            'https://res.cloudinary.com/dzlveh6fi/image/upload/v1718114354/alex-shaw-mSJsiQCm6og-unsplash_vztbpg.jpg',
          readingTime: '11 min',
          author: {
            name: 'Daniela Metz',
            href: '#',
            imageUrl:
              'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80',
          },
        },
      ]

    const breakPoints = [
        { width: 1, itemsToShow:1, itemsToScroll:1 },
        { width: 250, itemsToShow:2, itemsToScroll:1, pagination:false },
        { width: 1280, itemsToShow:2, itemsToScroll:2},
        { width: 1756, itemsToShow:3, itemsToScroll:2 },
        
      ]
    
    return(
        <div className="relative px-4 pt-16 pb-20 sm:px-6 lg:px-8 lg:pb-28">
        <div className="absolute inset-0">
          <div className="h-1/3 bg-white sm:h-2/3" />
        </div>
        <div className="relative mx-auto lg:mx-12 max-full">
          <div className="text-center">
            <h2 className="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">Courses & Training Plan</h2>
            <p className="mx-auto mt-3 mb-6 max-w-2xl text-xl text-gray-500 sm:mt-4">
              Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsa libero labore natus atque, ducimus sed.
            </p>
          </div>
          <Carousel
                itemsToScroll={3}
                itemsToShow={3}
                breakPoints={breakPoints}
                pagination={false}
                itemPadding={[0, 48]}
            >
            {posts.map((post, index) => (
                <TrainingCard index={index} data={post}/>
            ))}
            </Carousel>
        </div>
      </div>
    )
}
export default TrainingList
