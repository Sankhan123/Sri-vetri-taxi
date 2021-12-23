import React, { useState } from "react";
import axios from "axios";


import Form from "../components/Form";
import Button from "../components/Button";
import CalCard from "../components/CalCard";

function Oneday() {
  const [kms, setKms] = useState(0);
  const [custName, setCustName] = useState("");
  const [custNo, setCustNo] = useState("");
  const initPayment = 1800;
  const pricePerKm = 7;
  const totalPrice = initPayment + pricePerKm * kms;
  
  function kmsHandler(e) {
    setKms(e.target.value);
  }
  function custNameHandler(e) {
    setCustName(e.target.value);
  }
  function custNoHandler(e) {
    setCustNo(e.target.value);
  }
  function submitHandler(e) {
    e.preventDefault();
    let data = {
      cus_name: custName,
      mobile: custNo,
      distance: kms,
      total: totalPrice
    }
    async function addbill(){
      const response = await axios.post("http://127.0.0.1:8000/api/add-day-trip",data);
      if(response){
        alert(response.data.message);
      }else{
        alert("Something went wrong..!");
      }
    }
    addbill();

    console.log(JSON.stringify(data));
    setCustName("")
    setCustNo("")
    setKms(0)
  }


  return (
    <main className="d-flex justify-content-center align-items-center  vh-100">
      <div className="card shadow-sm py-4 px-5">
        <CalCard initPayment={initPayment} pricePerKm={pricePerKm} totalPrice={totalPrice}/>
        <form onSubmit={submitHandler} className="pt-3">
          <Form
            id={"customer_name"}
            type={"text"}
            placeholder={"Customer Name"}
            label={"Customer Name :"}
            value={custName}
            handler={custNameHandler}
          />
          <Form
            id={"mobile_no"}
            type={"tel"}
            placeholder={"Mobile No"}
            label={"Mobile No :"}
            value={custNo}
            handler={custNoHandler}
          />
          <Form
            id={"initial_payment"}
            type={"number"}
            placeholder={"Initial Payment"}
            label={"Initial Payment :"}
            value={initPayment}
            disable={true}
          />
          <Form
            id={"kms_covered"}
            type={"number"}
            placeholder={"Distance Travelled"}
            label={"Distance Travelled :"}
            value={kms}
            handler={kmsHandler}
            min={0}
          />
          <Button>Submit</Button>
        </form>
      </div>
    </main>
  );
}

export default Oneday;
