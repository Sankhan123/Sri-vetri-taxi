import React from 'react'
import { Link } from "react-router-dom";
import car from "../assets/car.jpeg"

function CarCard({data}) {
    return (
        <>
            <div className="col-md-3">
                        <div className="card rounded">
                            <div className="card-image">

                                <img className="img-fluid" src={car} alt="Alternate Text" />
                            </div>

                            <div className="card-body text-center">
                                <div className="ad-title m-auto">
                                    <h5>{data.car_no}</h5>
                                </div>
                                <Link className="ad-btn" to="id">View</Link>
                            </div>
                        </div>
                    </div>  
        </>
    )
}

export default CarCard
