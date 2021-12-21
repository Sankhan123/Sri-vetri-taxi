import React from 'react'
import car from "../assets/car.jpeg"

import { useNavigate } from "react-router";

function CarCard({data,id}) {

    let Navigate = useNavigate();
    const navigateToTable = () => {
      console.log("ehello")
      Navigate(`${id}`, { state: id });
    };

    return (
      
        <>
            <div className="col-md-3 col-sm-6 z col-lg-3 my-4">
                        <div className="card rounded">
                            <div className="card-image">

                                <img className="img-fluid" src={car} alt="Alternate Text" />
                            </div>

                            <div className="card-body text-center">
                                <div className="ad-title m-auto">
                                    <h5>{data.car_no}</h5>
                                </div>
                                <button onClick={navigateToTable} className="btn-warning btn" >
                                    View
                                </button>
                            </div> 
                            </div>
                    </div>  
        </>
    )
}

export default CarCard
