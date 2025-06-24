const express = require('express');
const router = express.Router();
const Usuario = require('../models/usuario');

// Obtener todos los usuarios
router.get('/', (req, res) => {
  Usuario.getAll((err, results) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json(results);
  });
});

// Obtener un usuario por ID
router.get('/:id', (req, res) => {
  Usuario.getById(req.params.id, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (!result) return res.status(404).json({ message: 'Usuario no encontrado' });
    res.json(result);
  });
});

// Crear un nuevo usuario
router.post('/', (req, res) => {
  const { email } = req.body;
  
  // Verificar si el email ya existe
  Usuario.findByEmail(email, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (result && result.length > 0) return res.status(400).json({ message: 'El email ya está registrado' });
    
    // Crear el usuario
    Usuario.create(req.body, (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.status(201).json({ id: result.insertId, ...req.body });
    });
  });
});

// Actualizar un usuario
router.put('/:id', (req, res) => {
  Usuario.update(req.params.id, req.body, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (result.affectedRows === 0) {
      return res.status(404).json({ message: 'Usuario no encontrado' });
    }
    res.json({ message: 'Usuario actualizado correctamente' });
  });
});

// Eliminar un usuario
router.delete('/:id', (req, res) => {
  Usuario.delete(req.params.id, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (result.affectedRows === 0) {
      return res.status(404).json({ message: 'Usuario no encontrado' });
    }
    res.json({ message: 'Usuario eliminado correctamente' });
  });
});

module.exports = router;