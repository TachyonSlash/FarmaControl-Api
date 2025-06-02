const db = require('../config/database');

const Venta = {
  getAll: (callback) => {
    db.query('SELECT * FROM ventas', callback);
  },

  getById: (id, callback) => {
    db.query('SELECT * FROM ventas WHERE id = ?', [id], callback);
  },

  create: (venta, callback) => {
    db.query('INSERT INTO ventas SET ?', venta, callback);
  },

  update: (id, venta, callback) => {
    db.query('UPDATE ventas SET ? WHERE id = ?', [venta, id], callback);
  },

  delete: (id, callback) => {
    db.query('DELETE FROM ventas WHERE id = ?', [id], callback);
  }
};

module.exports = Venta;