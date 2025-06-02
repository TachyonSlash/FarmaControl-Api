const express = require('express');
const router = express.Router();
const DetalleCompra = require('../models/detalleCompra');

router.get('/', (req, res) => {
  DetalleCompra.getAll((err, results) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json(results);
  });
});

router.get('/:id', (req, res) => {
  DetalleCompra.getById(req.params.id, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (!result || result.length === 0) return res.status(404).json({ message: 'Detalle de compra no encontrado' });
    res.json(result[0]);
  });
});

router.post('/', (req, res) => {
  DetalleCompra.create(req.body, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    res.status(201).json({ id: result.insertId, ...req.body });
  });
});

router.put('/:id', (req, res) => {
  DetalleCompra.update(req.params.id, req.body, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (result.affectedRows === 0) return res.status(404).json({ message: 'Detalle de compra no encontrado' });
    res.json({ message: 'Detalle de compra actualizado correctamente' });
  });
});

router.delete('/:id', (req, res) => {
  DetalleCompra.delete(req.params.id, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (result.affectedRows === 0) return res.status(404).json({ message: 'Detalle de compra no encontrado' });
    res.json({ message: 'Detalle de compra eliminado correctamente' });
  });
});

module.exports = router;