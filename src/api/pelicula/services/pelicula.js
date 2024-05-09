'use strict';

/**
 * pelicula service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::pelicula.pelicula');
