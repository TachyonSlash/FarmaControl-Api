const express = require('express');
const router = express.Router();
const Usuario = require('../models/usuario');

// Ruta para login
router.post('/login', (req, res) => {
  const { email, contrasenia } = req.body;
  
  // Validación simple
  if (!email || !contrasenia) {
    return res.status(400).json({
      success: false,
      message: 'Email y contraseña son requeridos'
    });
  }
  
  Usuario.login(email, contrasenia, (err, user) => {
    if (err) {
      return res.status(500).json({
        success: false,
        message: 'Error en el servidor',
        error: err.message
      });
    }
    
    if (!user) {
      return res.status(401).json({
        success: false,
        message: 'Credenciales incorrectas'
      });
    }
    
    // Login exitoso
    res.json({
      success: true,
      message: 'Autenticación exitosa',
      user: user
    });
  });
});

module.exports = router;