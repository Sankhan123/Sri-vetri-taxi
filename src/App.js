import Home from './screens/Home';
import Oneday from './screens/Oneday';
import Taxi from './screens/Taxi';
import Login from './screens/Login';
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import LocalTrip from './screens/LocalTrip';
import Hillstrip from './screens/Hillstrip';
import Dashboard from './screens/Dashboard';
import Customer from './screens/Customer';
import Car from './screens/Car';

import CarTable from './components/CarTable';
function App() {
  return (
    <Router>
      
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/login" element={<Login />} />
        <Route path="/one-day-trip" element={<Oneday />} />
        <Route path="/local-trip" element={<LocalTrip />} />
        <Route path="/hills-trip" element={<Hillstrip />} />
        <Route path="/taxi-trip" element={<Taxi />} />
        <Route path="/dashboard" element={<Dashboard />} >
            <Route path="customer" element={<Customer />}/>
            <Route path="car" element={<Car />}>
                  <Route path=":id" element={<CarTable/>}/>
            </Route>
        </Route>
      </Routes>
     
    </Router>
  );
}

export default App;
