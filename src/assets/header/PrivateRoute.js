import { useNavigate } from "react-router-dom";
import { useEffect } from "react";

function PrivateRoute({ children }) {
  let Navigate = useNavigate();
  let auth, role = null;
  if (sessionStorage.getItem("user") !== null) {
    auth = JSON.parse(sessionStorage.getItem("user"));
    role = auth.user.role;
  }
  useEffect(() => {
    if (!auth || !(role === "user")) {
      alert("You are not user!!! Please login");
      Navigate(-1);
    }
  }, []);
  return auth && role === "user" && children ;
}

export default PrivateRoute;
