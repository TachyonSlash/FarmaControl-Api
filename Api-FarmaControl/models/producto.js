const db = require('../config/database');

const Producto = {
  getAll: (callback) => {
    db.query('SELECT * FROM productos', callback);
  },

  getById: (id, callback) => {
    db.query('SELECT * FROM productos WHERE id = ?', [id], callback);
  },

  create: (producto, callback) => {
    db.query('INSERT INTO productos SET ?', producto, callback);
  },

  update: (id, producto, callback) => {
    db.query('UPDATE productos SET ? WHERE id = ?', [producto, id], callback);
  },

  delete: (id, callback) => {
    db.query('DELETE FROM productos WHERE id = ?', [id], callback);
  }
};

module.exports = Producto;