const Form = ({ id, type, placeholder, value, label,handler,min,disable }) => {
  return (
    <>
      <label className="mt-2 mb-1" htmlFor={id}>
        {label}
      </label>
      <input
        className={`form-control mb-2 ${disable && "alert-dark"} border border-warning`}
        type={type}
        id={id}
        name={id}
        placeholder={placeholder}
        value={value}
        onChange={handler}
        min={min}
        disabled={disable}
        required="required"
      />
    </>
  );
};

export default Form;
