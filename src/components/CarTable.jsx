import axios from 'axios';
import React from 'react'
import { useState, useEffect } from 'react';
import { useLocation} from "react-router-dom";

function CarTable() {
    let Location = useLocation();
    const data = Location.state;
    const [list, setList] = useState();
    useEffect(()=>{
        async function getList(){
            const res = await axios.get(`http://127.0.0.1:8000/api/cars-data/${data}`);
            if(res){
                console.log(res);
            }else{
                console.log("Error");
            }
        }
        getList()

    },[])

    return (
        <div>
            this is table id :{data} 
        </div>
    )
}

export default CarTable
