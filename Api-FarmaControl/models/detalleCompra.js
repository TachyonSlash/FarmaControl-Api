const db = require('../config/database');

const DetalleCompra = {
  getAll: (callback) => {
    db.query('SELECT * FROM detalle_compras', callback);
  },

  getById: (id, callback) => {
    db.query('SELECT * FROM detalle_compras WHERE id = ?', [id], callback);
  },

  create: (detalle, callback) => {
    db.query('INSERT INTO detalle_compras SET ?', detalle, callback);
  },

  update: (id, detalle, callback) => {
    db.query('UPDATE detalle_compras SET ? WHERE id = ?', [detalle, id], callback);
  },

  delete: (id, callback) => {
    db.query('DELETE FROM detalle_compras WHERE id = ?', [id], callback);
  }
};

module.exports = DetalleCompra;