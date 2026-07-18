import './App.css';

import BookDetails from './Components/BookDetails';
import BlogDetails from './Components/BlogDetails';
import CourseDetails from './Components/CourseDetails';

function App() {

  const showBooks = true;
  const showBlogs = true;
  const showCourses = true;

  let component;

  // Element Variable
  if (showBooks) {
    component = <BookDetails />;
  }

  return (

    <div className="App">

      <h1>Blogger Application</h1>

      {/* Method 1 : Element Variable */}
      {component}

      {/* Method 2 : Logical AND */}
      {showBlogs && <BlogDetails />}

      {/* Method 3 : Ternary Operator */}
      {showCourses ? <CourseDetails /> : <h3>No Courses Available</h3>}

    </div>

  );

}

export default App;