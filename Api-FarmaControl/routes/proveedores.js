const express = require('express');
const router = express.Router();
const Proveedor = require('../models/proveedor');

router.get('/', (req, res) => {
  Proveedor.getAll((err, results) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json(results);
  });
});

router.get('/:id', (req, res) => {
  Proveedor.getById(req.params.id, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (!result || result.length === 0) return res.status(404).json({ message: 'Proveedor no encontrado' });
    res.json(result[0]);
  });
});

router.post('/', (req, res) => {
  Proveedor.create(req.body, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    res.status(201).json({ id: result.insertId, ...req.body });
  });
});

router.put('/:id', (req, res) => {
  Proveedor.update(req.params.id, req.body, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (result.affectedRows === 0) return res.status(404).json({ message: 'Proveedor no encontrado' });
    res.json({ message: 'Proveedor actualizado correctamente' });
  });
});

router.delete('/:id', (req, res) => {
  Proveedor.delete(req.params.id, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (result.affectedRows === 0) return res.status(404).json({ message: 'Proveedor no encontrado' });
    res.json({ message: 'Proveedor eliminado correctamente' });
  });
});

module.exports = router;