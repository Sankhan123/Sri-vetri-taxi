import Home from './screens/Home';
import Oneday from './screens/Oneday';
import Taxi from './screens/Taxi';
import Login from './screens/Login';
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import LocalTrip from './screens/LocalTrip';

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/login" element={<Login />} />
        <Route path="/one-day-trip" element={<Oneday />} />
        <Route path="/local-trip" element={<LocalTrip />} />
        <Route path="/taxi-trip" element={<Taxi />} />
      </Routes>
    </Router>
  );
}

export default App;
