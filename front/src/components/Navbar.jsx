import React from 'react';
import { Link, useNavigate } from 'react-router-dom';

const Navbar = () => {
  const navigate = useNavigate();
  const isAuthenticated = !!localStorage.getItem('token');

  const handleLogout = () => {
    localStorage.removeItem('token');
    localStorage.removeItem('name');
    navigate('/');
  };

  return (
    <nav className="bg-gray-800 p-4 fixed top-0 left-0 w-full z-50">
      <div className="container mx-auto flex justify-between items-center">
        <div className="text-white text-lg font-bold">
            <a className='navbar-brand' href='/'>Website Name (agregar algo)</a>
        </div>
        <div className="space-x-4">
          {!isAuthenticated ? (
            <>
                <Link to="/" className="text-gray-300 hover:text-white">Pagina Principal</Link>
                <Link to="/login" className="text-gray-300 hover:text-white">Iniciar sesión</Link>
                <Link to="/register" className="text-gray-300 hover:text-white">Registrar</Link>
            </>
          ) : (
            <>
                <a>Bienvenido/a {localStorage.getItem('name')}</a>
                <Link to="/" className="text-gray-300 hover:text-white">Pagina Principal</Link>
                <button onClick={handleLogout} className="text-gray-300 hover:text-white">Cerrar sesión</button>
            </>
          )}
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
