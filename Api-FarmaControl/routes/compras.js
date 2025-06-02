const express = require('express');
const router = express.Router();
const Compra = require('../models/compra');

router.get('/', (req, res) => {
  Compra.getAll((err, results) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json(results);
  });
});

router.get('/:id', (req, res) => {
  Compra.getById(req.params.id, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (!result || result.length === 0) return res.status(404).json({ message: 'Compra no encontrada' });
    res.json(result[0]);
  });
});

router.post('/', (req, res) => {
  Compra.create(req.body, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    res.status(201).json({ id: result.insertId, ...req.body });
  });
});

router.put('/:id', (req, res) => {
  Compra.update(req.params.id, req.body, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (result.affectedRows === 0) return res.status(404).json({ message: 'Compra no encontrada' });
    res.json({ message: 'Compra actualizada correctamente' });
  });
});

router.delete('/:id', (req, res) => {
  Compra.delete(req.params.id, (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    if (result.affectedRows === 0) return res.status(404).json({ message: 'Compra no encontrada' });
    res.json({ message: 'Compra eliminada correctamente' });
  });
});

module.exports = router;