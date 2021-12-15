const Button = ({ children }) => {
  return (
    <div className="text-center">
      <button className="btn btn-dark text-white fw-bold mt-2">
        {children}
      </button>
    </div>
  );
};

export default Button;
