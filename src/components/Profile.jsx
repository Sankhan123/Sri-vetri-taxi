import React from 'react'
import Logo from './Logo'
import { Link } from 'react-router-dom'
function Profile() {
    return (


        <div class="col-sm-9 my-auto col-md-7 mt-5 col-lg-5 mx-auto">
            <div class="card border-0 shadow pt-4 mt-5 rounded-3 ">
                <div class=" p-4 p-sm-5">
                    <Logo/>
                    <div class="d-grid mt-5">
                        <Link to="/one-day-trip" className='border border-2 border-warning mt-4 fw-bold  text-dark  btn btn-outline-warning'>One Day Trip</Link>
                        <Link to="/taxi-trip" className='border border-2 border-warning mt-3 fw-bold  text-dark  btn btn-outline-warning'>Normal Taxi</Link>
                        <Link to="/local-trip" className='border border-2 border-warning mt-3 fw-bold  text-dark  btn btn-outline-warning'>Local Trip</Link>
                        <Link to="/hills-trip" className='border border-2 border-warning mt-3 fw-bold  text-dark  btn btn-outline-warning'>Hills Trip</Link>
                    </div>
                </div>
            </div>
        </div>


    )
}

export default Profile
