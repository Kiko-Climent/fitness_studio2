import { useEffect, useRef, useState } from 'react';

const posts = [
    {
      title: 'Boost your conversion rate',
      href: '#',
      category: { name: 'CROSSFIT', href: '#' },
      description:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto accusantium praesentium eius, ut atque fuga culpa, similique sequi cum eos quis dolorum.',
      date: 'Mar 16, 2020',
      datetime: '2020-03-16',
      imageUrl:
      'https://res.cloudinary.com/dzlveh6fi/image/upload/v1718102596/crossfit_lg_es84zr.jpg',
    },
    {
      title: 'How to use search engine optimization to drive sales',
      href: '#',
      category: { name: 'EQUIPMENT', href: '#' },
      description:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit facilis asperiores porro quaerat doloribus, eveniet dolore. Adipisci tempora aut inventore optio animi., tempore temporibus quo laudantium.',
      date: 'Mar 10, 2020',
      datetime: '2020-03-10',
      imageUrl:
        'https://res.cloudinary.com/dzlveh6fi/image/upload/v1717756273/equipment2_pl56gt.jpg',
      readingTime: '4 min',
      author: {
        name: 'Brenna Goyette',
        href: '#',
        imageUrl:
          'https://images.unsplash.com/photo-1550525811-e5869dd03032?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80',
      },
    },
    {
      title: 'Improve your customer experience',
      href: '#',
      category: { name: 'PILATES', href: '#' },
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
  ]
  
  export default function Highlights() {
    const highlightsRef = useRef(null);
    const [isVisible, setIsVisible] = useState(false);
  
    useEffect(() => {
      const handleScroll = () => {
        const sectionTop = highlightsRef.current.getBoundingClientRect().top;
        const triggerPoint = window.innerHeight * 0.5;
  
        if (sectionTop < triggerPoint) {
          setIsVisible(true);
        } else {
          setIsVisible(false);
        }
      };
  
      window.addEventListener('scroll', handleScroll);
  
      return () => {
        window.removeEventListener('scroll', handleScroll);
      };
    }, []);
  
    return (
      <div ref={highlightsRef} className="relative px-4 pt-16 pb-20 sm:px-6 lg:px-8 lg:pt-24 lg:pb-28">
        <div className="absolute inset-0">
          <div className="h-1/3 bg-white sm:h-2/3" />
        </div>
        <div className="relative mx-auto max-w-7xl">
          <div className="text-center">
            <h2 className={`text-4xl lg:text-6xl font-bold tracking-tight text-[#7ef455] custom-strike ${isVisible ? 'active' : ''}`}>
              highlights.
            </h2>
          </div>
          <div className="mx-auto mt-12 grid max-w-lg gap-5 lg:max-w-none lg:grid-cols-3">
            {posts.map((post) => (
              <div key={post.title} className="hiden flex flex-col overflow-hidden">
                <div className="flex-shrink-0">
                  <img className="h-48 w-full object-cover filter sepia saturate-50 -hue-rotate-60" src={post.imageUrl} alt="" />
                </div>
                <div className="flex flex-1 flex-col justify-between bg-white p-6 border-l-2 border-r-2 border-b-2 border-[#7ef455]">
                  <div className="flex-1">
                    <a href={post.href} className="mt-2 block">
                      <p className="text-xl font-semibold text-[#7ef455]">{post.title}</p>
                      <p className="mt-3 text-base text-[#2c555b]">{post.description}</p>
                    </a>
                  </div>
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>
    );
  }