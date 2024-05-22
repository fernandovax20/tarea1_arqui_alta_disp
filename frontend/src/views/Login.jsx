import React, { useState } from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';
import * as data from '../config/url.json';

const {url} = data;

const Login = () => {
  const [formData, setFormData] = useState({
    identifier: '',
    password: '',
  });
  const navigate = useNavigate();

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post(url + '/api/auth/local', formData);
      localStorage.setItem('token', response.data.jwt);
      localStorage.setItem('name', response.data.user.username);
      localStorage.setItem('id', response.data.user.id);
      navigate('/');
    } catch (error) {
      alert('Login failed');
    }
  };

  return (
    <div className="flex items-center justify-center h-screen">
      <form onSubmit={handleSubmit} className="p-8 bg-white shadow-md rounded">
        <h1 className="mb-6 text-2xl font-bold">Login</h1>
        <input
          type="email"
          name="identifier"
          value={formData.identifier}
          onChange={handleChange}
          placeholder="Email"
          className="mb-4 p-2 border rounded"
        />
        <input
          type="password"
          name="password"
          value={formData.password}
          onChange={handleChange}
          placeholder="Password"
          className="mb-4 p-2 border rounded"
        />
        <button type="submit" className="w-full p-2 bg-blue-500 text-white rounded">Login</button>
      </form>
    </div>
  );
};

export default Login;
