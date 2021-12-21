import axios from "axios";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";

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
        <div className="container">
            <div className="row" id="ads">

            <div className="col-md-3">
        <div className="card rounded">
            <div className="card-image">
               
                <img className="img-fluid" src="https://imageonthefly.autodatadirect.com/images/?USER=eDealer&PW=edealer872&IMG=USC80HOC011A021001.jpg&width=440&height=262" alt="Alternate Text" />
            </div>
            
            <div className="card-body text-center">
                <div className="ad-title m-auto">
                    <h5>Honda Accord LX</h5>
                </div>
                <Link className="ad-btn" to="id">View</Link>
            </div>
        </div>
    </div>
              <div className="col-md-3">
        <div className="card rounded">
            <div className="card-image">
               
                <img className="img-fluid" src="https://imageonthefly.autodatadirect.com/images/?USER=eDealer&PW=edealer872&IMG=USC80HOC011A021001.jpg&width=440&height=262" alt="Alternate Text" />
            </div>
            
            <div className="card-body text-center">
                <div className="ad-title m-auto">
                    <h5>Honda Accord LX</h5>
                </div>
                <Link className="ad-btn" to="id">View</Link>
            </div>
        </div>
    </div>
    <div className="col-md-3">
        <div className="card rounded">
            <div className="card-image">
               
                <img className="img-fluid" src="https://imageonthefly.autodatadirect.com/images/?USER=eDealer&PW=edealer872&IMG=USC80HOC011A021001.jpg&width=440&height=262" alt="Alternate Text" />
            </div>
            
            <div className="card-body text-center">
                <div className="ad-title m-auto">
                    <h5>Honda Accord LX</h5>
                </div>
                <Link className="ad-btn" to="id">View</Link>
            </div>
        </div>
    </div>
    <div className="col-md-3">
        <div className="card rounded">
            <div className="card-image">
               
                <img className="img-fluid" src="https://imageonthefly.autodatadirect.com/images/?USER=eDealer&PW=edealer872&IMG=USC80HOC011A021001.jpg&width=440&height=262" alt="Alternate Text" />
            </div>
            
            <div className="card-body text-center">
                <div className="ad-title m-auto">
                    <h5>Honda Accord LX</h5>
                </div>
                <Link className="ad-btn" to="id">View</Link>
            </div>
        </div>
    </div>
    </div>
    <div className="row" id="ads">

            <div className="col-md-3">
        <div className="card rounded">
            <div className="card-image">
               
                <img className="img-fluid" src="https://imageonthefly.autodatadirect.com/images/?USER=eDealer&PW=edealer872&IMG=USC80HOC011A021001.jpg&width=440&height=262" alt="Alternate Text" />
            </div>
            
            <div className="card-body text-center">
                <div className="ad-title m-auto">
                    <h5>Honda Accord LX</h5>
                </div>
                <Link className="ad-btn" to="id">View</Link>
            </div>
        </div>
    </div>
              <div className="col-md-3">
        <div className="card rounded">
            <div className="card-image">
               
                <img className="img-fluid" src="https://imageonthefly.autodatadirect.com/images/?USER=eDealer&PW=edealer872&IMG=USC80HOC011A021001.jpg&width=440&height=262" alt="Alternate Text" />
            </div>
            
            <div className="card-body text-center">
                <div className="ad-title m-auto">
                    <h5>Honda Accord LX</h5>
                </div>
                <Link className="ad-btn" to="id">View</Link>
            </div>
        </div>
    </div>
    <div className="col-md-3">
        <div className="card rounded">
            <div className="card-image">
               
                <img className="img-fluid" src="https://imageonthefly.autodatadirect.com/images/?USER=eDealer&PW=edealer872&IMG=USC80HOC011A021001.jpg&width=440&height=262" alt="Alternate Text" />
            </div>
            
            <div className="card-body text-center">
                <div className="ad-title m-auto">
                    <h5>Honda Accord LX</h5>
                </div>
                <Link className="ad-btn" to="id">View</Link>
            </div>
        </div>
    </div>
    <div className="col-md-3">
        <div className="card rounded">
            <div className="card-image">
               
                <img className="img-fluid" src="https://imageonthefly.autodatadirect.com/images/?USER=eDealer&PW=edealer872&IMG=USC80HOC011A021001.jpg&width=440&height=262" alt="Alternate Text" />
            </div>
            
            <div className="card-body text-center">
                <div className="ad-title m-auto">
                    <h5>Honda Accord LX</h5>
                </div>
                <Link className="ad-btn" to="id">View</Link>
            </div>
        </div>
    </div>
    </div>
        </div>
        </>
    )
}

export default Car;