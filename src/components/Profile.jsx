import React from 'react'
import logo from "../images/logo.png"
import { Link } from 'react-router-dom'
function Profile() {
    return (
        <div className='d-flex flex-row align-center justify-content-center'>
            <div className="row col-sm-12 col-md-8 col-lg-8">
            <img src={logo} alt="vetri-taxi-logo"/>
            </div>
            <div className="row col-sm-12 col-md-8 col-lg-8">
            <Link to="/one-day-trip" className='btn btn-primary'>One Day Trip</Link>
            <Link to="/taxi-trip" className='btn btn-primary'>Normal Taxi</Link>
            </div>
           
        </div>
    )
}

export default Profile
