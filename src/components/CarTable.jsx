import React from 'react'
import { useLocation} from "react-router-dom";

function CarTable() {
    let Location = useLocation();
    const data = Location.state;
    return (
        <div>
            this is table id :{data} 
        </div>
    )
}

export default CarTable
