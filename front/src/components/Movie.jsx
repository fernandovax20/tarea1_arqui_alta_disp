import React, { useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import axios from 'axios';
import * as data from '../resources/url.json';

const {url} = data;

const Movie = () => {
  const { id } = useParams();
  const [movie, setMovie] = useState(null);
  const [reviews, setReviews] = useState([]);
  const [reviewContent, setReviewContent] = useState('');
  const isAuthenticated = !!localStorage.getItem('token');
  const [comment, setComment] = useState('');
  const [rating, setRating] = useState(0);

  useEffect(() => {
    axios.get(url + '/api/peliculas')
      .then(response => {
        const selectedMovie = response.data.data.find(movie => movie.id === parseInt(id));
        setMovie(selectedMovie);
      })
      .catch(error => {
        console.error('Error fetching the movie data', error);
      });
    fetchReviews();
  }, [id]);

  const fetchReviews = () => {
    const token = localStorage.getItem('token');
    if (token) {
      axios.get(url + `/api/peliculas?populate=*`, {headers: {Authorization: `Bearer ${token}`}})
        .then(response => {
          const selectedReviews = response.data.data.find(movie => movie.id === parseInt(id));
          setReviews(selectedReviews.attributes.resenias.data);
        })
        .catch(error => {
          console.error('Error fetching the reviews', error);
        });
    }
    else {
      return;
    }
  };

  const handleReviewSubmit = async (e) => {
    e.preventDefault();
    const token = localStorage.getItem('token');
    if (!token) {
      alert('Please log in to submit a review');
      return;
    }
    const fecha = new Date().toJSON().slice(0, 10);
    const id_emisor = localStorage.getItem('id');
    const emisor = localStorage.getItem('name');
    try {
      const pelicula = { id: id }
      const data = {
        pelicula: pelicula,
        texto: comment,
        fecha: fecha,
        id_emisor: id_emisor,
        emisor: emisor,
        puntuacion: rating
      }
      await axios.post(url + '/api/resenias', { data: data }, {
        headers: {
          Authorization: `Bearer ${token}`
        }
      });
      setReviewContent('');
      fetchReviews();
    } catch (error) {
      console.error('Error submitting the review', error);
    }
  };

  if (!movie) {
    return <div>Loading...</div>;
  }

  return (
    <div className="container mx-auto mt-10">
      <div className="text-center">
        <img src={movie.attributes.caratula} alt={movie.attributes.titulo} className="w-64 h-auto mb-4 mx-auto" />
        <h1 className="text-3xl font-bold mb-4">{movie.attributes.titulo}</h1>
        <p className="mb-4"><strong>Duración:</strong> {movie.attributes.duracion} minutos</p>
        <p className="mb-4"><strong>Género:</strong> {movie.attributes.genero}</p>
        <p className="mb-4"><strong>Descripción:</strong> {movie.attributes.descripcion}</p>
        <p className="mb-4"><strong>Puntuación:</strong> {movie.attributes.puntuacion}</p>
        <p className="mb-4"><strong>Director:</strong> {movie.attributes.director}</p>
        <p className="mb-4"><strong>Actores:</strong> {movie.attributes.actores}</p>
        <p className="mb-4"><strong>Fecha de estreno:</strong> {new Date(movie.attributes.estreno).toLocaleDateString()}</p>
      </div>

      <div className="mt-10">
        <h2 className="text-2xl font-bold mb-4">Reseñas</h2>
        {isAuthenticated ? (
          <>
            <form onSubmit={handleReviewSubmit} className="mb-4">
              <div className="text-center">
                <textarea 
                  placeholder="Write your review..." 
                  className="w-full p-2 border rounded mb-2"
                  value={comment} 
                  rows="4"
                  onChange={(e) => setComment(e.target.value)} 
                />
                <input 
                  type="number" 
                  className="w-40 p-2 border rounded mb-2"
                  placeholder="Rating (1-10)" 
                  min="1" 
                  max="10" 
                  value={rating} 
                  onChange={(e) => setRating(parseInt(e.target.value))} 
                />
                <h1>

                </h1>
                <button type="submit" className="p-2 bg-blue-500 text-white rounded">Submit Review</button>
              </div>
            </form>
            <div>
              {reviews.map((review, index) => (
                review.attributes.id_emisor == localStorage.getItem('id') ? (
                  <div key={review.id} className="mb-4 p-4 border rounded">
                    <p className="text-left text-sm text-gray-500">- {review.attributes.emisor}</p>
                    <p className="text-left text-sm text-gray-500">{review.attributes.puntuacion}</p>
                    <p>{review.attributes.texto}</p>
                    <p className="text-right text-sm text-gray-500">{review.attributes.fecha}</p>
                  </div>
                ) : null
              ))}
              {reviews.map((review, index) => (
                review.attributes.id_emisor != localStorage.getItem('id') ? (
                  <div key={review.id} className="mb-4 p-4 border rounded">
                    <p className="text-left text-sm text-gray-500">- {review.attributes.emisor}</p>
                    <p className="text-left text-sm text-gray-500">{review.attributes.puntuacion}</p>
                    <p>{review.attributes.texto}</p>
                    <p className="text-right text-sm text-gray-500">{review.attributes.fecha}</p>
                  </div>
                ) : null
              ))}
            </div>
          </>
        ) : (
          <>
            <div className="text-center">
              <h1>Para escribir una reseña <Link to="/register" className="text-gray-300 hover:text-white">Registrese</Link> o <Link to="/login" className="text-gray-300 hover:text-white">Inicie sesión</Link></h1>
            </div>
          </>
        )}
      </div>
    </div>
  );
};

export default Movie;
