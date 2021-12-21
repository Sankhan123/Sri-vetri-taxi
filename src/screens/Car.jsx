import axios from "axios";
import { useEffect, useState } from "react";

import CarCard from "../components/carCard";

const Car = () => {

    const [cars, setCars] = useState([]);

    useEffect( () => {

        async function getCars()
        {
        const res = await axios.get("http://127.0.0.1:8000/api/cars-list");
        if (res) {
            console.log(res)
            setCars(res.data.data);
        }
       
        }

        getCars() 

    }, [])


    return (
        <>
            <div className="container">
                <div className="row" id="ads">
                {
                    cars && cars.length > 0 ? 
                    
                    cars.map((car,i)=>(
                        <CarCard data={car} id ={i+1} />
                    )):"Loding ..."
                    

                }
                  
                </div>
            </div>
        </>
    )
}

export default Car;