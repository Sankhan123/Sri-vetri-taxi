import React from 'react'
import logo from "../images/logo.png"
import { Link } from 'react-router-dom'
function Profile() {
    return (


        <div class="col-sm-9 my-auto col-md-7 mt-5 col-lg-5 mx-auto">
            <div class="card border-0 shadow pt-4 mt-5 rounded-3 ">
                <div class=" p-4 p-sm-5">
                    <img className="img-fluid" src={logo} alt="vetri-taxi-logo" />
                    <div class="d-grid mt-5">
                        <Link to="/one-day-trip" className='border border-2 border-warning mt-5 fw-bold  text-dark  btn btn-outline-warning'>One Day Trip</Link>
                        <Link to="/taxi-trip" className='mt-3 text-light   fw-bold btn btn-warning '>Normal Taxi</Link>
                    </div>
                </div>
            </div>
        </div>


    )
}

export default Profile
