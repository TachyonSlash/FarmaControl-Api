const db = require('../config/database');

const DetalleVenta = {
  getAll: (callback) => {
    db.query('SELECT * FROM detalle_ventas', callback);
  },

  getById: (id, callback) => {
    db.query('SELECT * FROM detalle_ventas WHERE id = ?', [id], callback);
  },

  create: (detalle, callback) => {
    db.query('INSERT INTO detalle_ventas SET ?', detalle, callback);
  },

  update: (id, detalle, callback) => {
    db.query('UPDATE detalle_ventas SET ? WHERE id = ?', [detalle, id], callback);
  },

  delete: (id, callback) => {
    db.query('DELETE FROM detalle_ventas WHERE id = ?', [id], callback);
  }
};

module.exports = DetalleVenta;