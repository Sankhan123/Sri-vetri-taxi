import React, { useState } from 'react'

function Taxi() {

    const [start, setStart] = useState("");
    const [end, setEnd] = useState("");
    const [name, setName] = useState("");
    const [phone, setPhone] = useState("");
    const [km, setKm] = useState("");
    const [hr, setHr] = useState("");

    let result = 12 * km;

    function subHandler(e) {
        e.preventDefault();
        console.log("hello World")

    }

    return (
        <div className="container mt-4">
            <div className="row">

                <div className="auth-wrapper">

                    <div className="col-sm-12 col-md-10 col-lg-10 taxi-inner">
                        <div className="row">


                            <div className="form col-md-6 col-lg-6 col-sm-12">


                                <form onSubmit={subHandler}>
                                    <div className="  form-group">
                                        <label htmlFor="from">From : </label>
                                        <input onChange={(e) => setStart(e.target.value)} value={start} name="from" type="text" className="form-control mt-1" placeholder="Start" />
                                    </div>
                                    <div className=" mt-3 form-group">
                                        <label htmlFor="to">To : </label>
                                        <input value={end} onChange={(e) => setEnd(e.target.value)} name="to" type="text" className="form-control mt-1" placeholder="End" />
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
                                            <label htmlFor="kms">Kms Travel : </label>
                                            <input onChange={(e) => setKm(e.target.value)} name="kms" value={km} type="tel" className="form-control mt-1" placeholder="Kms Travel" />
                                        </div>
                                        <div className=" mt-3  col-md-6 col-lg-6 col-sm-12 form-group">
                                            <label htmlFor="hrs">Waiting Hours : </label>
                                            <input value={hr} onChange={(e) => setHr(e.target.value)} name="hrs" type="tel" className="form-control mt-1" placeholder="Waiting Hours" />
                                        </div>


                                    </div>


                                    <div className="d-grid mt-4    ">
                                        <button value='submit' className="btn btn-warning" type="button"> Submit </button>
                                    </div>
                                </form>
                            </div>



                            <div className=" p-3   mt-4 result-inner col-md-5 col-lg-5 col-sm-12">

                                <div className="row">
                                    <div className="m-auto col-12">                                <h3 className="mt-3 " > Tariff Calculation</h3>
                                    </div>
                                </div>

                                <div className="row">
                                    <div className="col-7">
                                        <p>kms Travel </p>
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


                                    {km > 300 ?
                                        (<><div className="col-7">
                                            <p>Driver Beta</p>
                                        </div>

                                            <div className="col-5">
                                                : 300 ₹
                                            </div></>) : (<></>)
                                    }



                                    <div className="col-7">
                                        <h3 className="font-warning">Total </h3>
                                    </div>
                                    <div className="col-5">


                                        {
                                            km > 300 ? (<b> : {result = result + 300 + " "} ₹ </b>) : (<b> : {result + " "} ₹</b>)
                                        }


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
