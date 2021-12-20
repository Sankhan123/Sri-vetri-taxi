import axios from "axios";
import { useEffect, useState } from "react";


const Car = () => {

    const [cars,setCars] = useState([]);

    useEffect(async()=>{

        const res = await axios.get("http://127.0.0.1:8000/api/cars-list");
        if(res){
            console.log(res);
        }
        
    },[])


    return (
        <>
            <h1>Admin Car Route</h1>
        </>
    )
}

export default Car;