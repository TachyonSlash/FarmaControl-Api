const express = require('express');
const router = express.Router();
const Venta = require('../models/venta');

router.get('/', (req, res) => {
  Venta.getAll((err, results) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json(results);
  });
});

router.get('/:id', (req, res) => {
  Venta.getById(req.params.id, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (!result || result.length === 0) return res.status(404).json({ message: 'Venta no encontrada' });
    res.json(result[0]);
  });
});

router.post('/', (req, res) => {
  Venta.create(req.body, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    res.status(201).json({ id: result.insertId, ...req.body });
  });
});

router.put('/:id', (req, res) => {
  Venta.update(req.params.id, req.body, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (result.affectedRows === 0) return res.status(404).json({ message: 'Venta no encontrada' });
    res.json({ message: 'Venta actualizada correctamente' });
  });
});

router.delete('/:id', (req, res) => {
  Venta.delete(req.params.id, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (result.affectedRows === 0) return res.status(404).json({ message: 'Venta no encontrada' });
    res.json({ message: 'Venta eliminada correctamente' });
  });
});

module.exports = router;