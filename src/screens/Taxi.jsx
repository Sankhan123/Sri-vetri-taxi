import React, { useState } from 'react'
import axios from "axios";

function Taxi() {

    const [start, setStart] = useState("");
    const [end, setEnd] = useState("");
    const [name, setName] = useState("");
    const [phone, setPhone] = useState("");
    const [km, setKm] = useState("");
    const [hr, setHr] = useState("");

    let result = 12 * km;
    let w_charge = 0 ;
    let d_batta = 0 ;

    km>=300 ? d_batta = 300 : d_batta = 0 ;

    function subHandler(e) {
        e.preventDefault();
        let data = {
            from: start,
            to: end,
            cus_name: name,
            mobile: phone,
            distance: km,
            w_hour: hr,
            w_charge: w_charge,
            driver_batta: d_batta,
            total: result
          }
        console.log(JSON.stringify(data))
        async function addbill(){
            const response = await axios.post("http://127.0.0.1:8000/api/taxi-trip",data);
            if(response){
              alert(response.data.message);
            }else{
              alert("Something went wrong..!");
            }
          }
          addbill();

            setStart("")
            setEnd("")
            setName("")
            setPhone("")
            setKm("")
            setHr("")
    }

    return (
        <div className="d-flex flex-column justify-content-center align-items-center min-vh-100">

        <h2 className="my-4">Taxi</h2>
        <div className="container">
            <div className="row">

                <div className="auth-wrapper">

                    <div className="col-sm-12 col-md-10 col-lg-10 taxi-inner">
                        <div className="row">


                            <div className="form col-md-6 col-lg-6 col-sm-12">


                                <form onSubmit={subHandler}>
                                <div className="row">
                                        <div className=" mt-3 col-md-6 col-sm-12 col-lg-6 form-group">
                                        <label htmlFor="from">From : </label>
                                        <input onChange={(e) => setStart(e.target.value)} value={start} name="from" type="text" className="form-control mt-1" placeholder="Start" />
                                        </div>
                                        <div className=" mt-3  col-md-6 col-lg-6 col-sm-12 form-group">
                                        <label htmlFor="to">To : </label>
                                        <input value={end} onChange={(e) => setEnd(e.target.value)} name="to" type="text" className="form-control mt-1" placeholder="End" />
                                        </div>
                                    </div>

                                    <div className=" mt-3 form-group">
                                        <label htmlFor="name">Customer Name : </label>
                                        <input name="name" onChange={(e) => setName(e.target.value)} value={name} type="text" className="form-control mt-1" placeholder="Customer Name" />
                                    </div>
                                    <div className=" mt-3 form-group">
                                        <label htmlFor="number">Phone No : </label>
                                        <input onChange={(e) => setPhone(e.target.value)} name="number" value={phone} type="tel" className="form-control mt-1" placeholder="Phone No" />
                                    </div>

                                    <div className="row">
                                        <div className=" mt-3 col-md-6 col-sm-12 col-lg-6 form-group">
                                            <label htmlFor="kms">Distance Travelled : </label>
                                            <input onChange={(e) => setKm(e.target.value)} name="kms" value={km} type="tel" className="form-control mt-1" placeholder="Distance Travelled" />
                                        </div>
                                        <div className=" mt-3  col-md-6 col-lg-6 col-sm-12 form-group">
                                            <label htmlFor="hrs">Waiting Hours : </label>
                                            <input value={hr} onChange={(e) => setHr(e.target.value)} name="hrs" type="tel" className="form-control mt-1" placeholder="Waiting Hours" />
                                        </div>
                                    </div>

                                    <div className="d-grid mt-4    ">
                                        <button value='submit' className="btn btn-warning" type="submit"> Submit </button>
                                    </div>
                                </form>
                            </div>



                            <div className=" p-3   mt-4 result-inner col-md-5 col-lg-5 col-sm-12">

                                <div className="row">
                                    <div className="m-auto col-12">
                                        <h3 className="mt-3 " > Tariff Calculation</h3>
                                    </div>
                                </div>

                                <div className="row">
                                    <div className="col-7">
                                        <p>Distance Travelled </p>
                                    </div>
                                    <div className="col-5">
                                        : {km} kms
                                    </div>
                                    <div className="col-7">
                                        <p>Waiting Hours </p>
                                    </div>
                                    <div className="col-5">
                                        : {hr} Hour
                                    </div>


                                    {km >= 300 ?
                                        (<><div className="col-7">
                                            <p>Driver Beta</p>
                                        </div>

                                            <div className="col-5">
                                                : 300 ₹
                                            </div></>) : (<></>)
                                    }

                                    
                                   <div className="col-7">
                                            <p>Waiting Charges</p>
                                        </div>

                                            <div className="col-5">
                                                : {hr <=2 ? w_charge= hr*60 : hr <=4 && hr>2 ? w_charge= hr*80 : w_charge= hr*120 } ₹
                                            </div>


                                    <div className="col-7">
                                        <h3 className="font-warning">Total </h3>
                                    </div>
                                    <div className="col-5">

                                        {
                                            km >= 300 ? (<b> : {result = result + d_batta + w_charge} ₹ </b>) : (<b> : {result = result + w_charge} ₹</b>)
                                        }

                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
        </div>
    )
}

export default Taxi
