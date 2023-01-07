import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import {BrowserRouter as Router,Routes,Route} from 'react-router-dom';
import AdminLogin from './components/AdminLogin';
import Admin from './components/Admin';
function App() {
  return (
    <div className="App">
      <Router>
        <Routes>
          <Route exact path = "/" element={<AdminLogin/>} />
          <Route exact path = "/admin" element={<Admin/>} />
        </Routes>
      </Router>
    </div>
  );
}

export default App;
