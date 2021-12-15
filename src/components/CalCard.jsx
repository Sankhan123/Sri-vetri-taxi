const CalCard = ({ initPayment, pricePerKm,totalPrice }) => {
  return (
    <section className="card px-5 py-3 mx-3 text-dark border border-warning shadow-sm">
      <p className="text-center fw-bold fs-4">Tariff Calculation</p>
      <div className="mx-1">
        <div className="d-flex justify-content-between">
          <p>Initial Payment : </p>
          <span className="h4">{initPayment}</span>
        </div>
        <div className="d-flex justify-content-between">
          <p>Price Per Km : </p>
          <span className="h4">{pricePerKm}</span>
        </div>
        <div className="d-flex justify-content-between">
          <p className="text-warning h4">Total : </p>
          <span className="h4 text-success">{totalPrice}</span>
        </div>
      </div>
    </section>
  );
};

export default CalCard;
