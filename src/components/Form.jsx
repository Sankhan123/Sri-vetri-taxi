const Form = ({ id, type, placeholder, value, label,handler,min }) => {
  return (
    <>
      <label className="mt-2 mb-1" htmlFor={id}>
        {label}
      </label>
      <input
        className="form-control mb-2 border border-warning"
        type={type}
        id={id}
        name={id}
        placeholder={placeholder}
        value={value}
        onChange={handler}
        min={min}
      />
    </>
  );
};

export default Form;
