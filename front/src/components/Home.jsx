import React, { useEffect, useState } from 'react';
import * as data from '../resources/url.json';
import axios from 'axios';
import { Link } from 'react-router-dom';

const {url} = data;

const Home = () => {
  const [movies, setMovies] = useState([]);

  useEffect(() => {
    axios.get(url + '/api/peliculas')
      .then(response => {
        setMovies(response.data.data);
      })
      .catch(error => {
        console.error('Error fetching the movie data', error);
      });
  }, []);

  return (
    <div className="container mx-auto mt-10">
      <h1 className="text-center text-3xl font-bold mb-10">Estrenos</h1>
      <div className="grid grid-cols-3 gap-6">
        {movies.map((movie) => (
          <div key={movie.id} className="text-center">
            <Link to={`/movies/${movie.id}`}>
              <img 
                src={movie.attributes.caratula} 
                alt={movie.attributes.titulo} 
                className="w-full h-auto mb-2" 
              />
            </Link>
            <h2 className="text-xl font-bold">
              <Link to={`/movies/${movie.id}`}>{movie.attributes.titulo}</Link>
            </h2>
            <p>Nota: {movie.attributes.puntuacion.toFixed(2)}</p>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Home;
