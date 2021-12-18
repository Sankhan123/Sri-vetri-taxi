import Logo from "../components/Logo"
import React, { useState } from 'react'
import axios from "axios";
import { useNavigate, Link } from "react-router-dom";

function Login() {
    let Navigate = useNavigate();
    const [name, setName] = useState("");
    const [password, setPassword] = useState("");

    function subHandler(e) {
        e.preventDefault();

        let data = {
            name : name,
            password : password,
        }
                   
        console.log(JSON.stringify(data))
        async function logincheck(){
            const response = await axios.get(`http://127.0.0.1:8000/api/check-login/${name}/${password}`);
            if (response.data.status === 200 ) {
                alert(response.data.message);
                Navigate("/");
              }
              else {
                alert(response.data.message);
                Navigate("/login");
              }
          }
          logincheck();

            setName("")
            setPassword("")
    }



    return (
     
        <div className="auth-wrapper">
        <div className="auth-inner">
        <form onSubmit={subHandler}>
        <h3>Sign In</h3>
            <Logo/>
        <div className=" mt-3 form-group">
            
            <input type="text" value={name} className="form-control mt-1" placeholder="Enter Car" onChange={(e)=>setName(e.target.value)}/>
        </div>

        <div className="form-group mt-3">
           
            <input type="password" className="mt-1 form-control" value={password} placeholder="Enter password" onChange={(e)=>setPassword(e.target.value)}/>
        </div>
        <div className="text-center">

        <button type="submit" className="mt-3  btn  btn-warning btn-block">Sign Up</button>
        </div>
    </form>
</div>
</div>
    )
}

export default Login
