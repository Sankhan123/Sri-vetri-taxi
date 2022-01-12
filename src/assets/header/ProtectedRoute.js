import { useNavigate } from "react-router-dom";
import { useEffect } from "react";

function ProtectedRoute({ children }) {
  let Navigate = useNavigate();
  let auth, role = null;
  if (sessionStorage.getItem("user") !== null) {
    auth = JSON.parse(sessionStorage.getItem("user"));
    role = auth.user.role;
  }
  useEffect(() => {
      if(!auth || !(role === 'admin')) {
        alert("You are not admin!!!"); 
        Navigate(-1);
      }
  }, []);
  
  return (auth && role === 'admin') && children ;
}

export default ProtectedRoute;