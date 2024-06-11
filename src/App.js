import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import store from "./store";
import { Provider } from "react-redux";
import Error404 from "containers/errors/Error404";
import Home from "containers/pages/Home";
import Training from "containers/pages/Training";
import About from "containers/pages/About";
import Contact from "containers/pages/Contact";
import Members from "containers/pages/Members";
import Equipment from "containers/pages/Equipment";

function App() {
  return (
    <Provider store={store}>

      <Router>
        <Routes>
          {/* Error Display */}
          <Route path="*" element={<Error404 />} />
          {/* Home Display */}
          <Route path="/" element={<Home />} />
          <Route path="/training" element={<Training />} />
          <Route path="/equipment" element={<Equipment />} />
          <Route path="/about" element={<About />} />
          <Route path="/contact" element={<Contact />} />
          <Route path="/members" element={<Members />} />
        </Routes>
      </Router>
    </Provider>
  );
}

export default App;
