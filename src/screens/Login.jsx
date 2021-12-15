import Logo from "../components/Logo"

function Login() {
    return (
     
        <div className="auth-wrapper">
        <div className="auth-inner">
        <form>
        <h3>Sign In</h3>
            <Logo/>
        <div className=" mt-3 form-group">
            
            <input type="text" className="form-control mt-1" placeholder="Enter Car" />
        </div>

        
        <div className="form-group mt-3">
           
            <input type="password" className="mt-1 form-control" placeholder="Enter password" />
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
