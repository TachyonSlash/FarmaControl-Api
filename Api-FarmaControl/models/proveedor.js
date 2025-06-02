const db = require('../config/database');

const Proveedor = {
  getAll: (callback) => {
    db.query('SELECT * FROM proveedores', callback);
  },

  getById: (id, callback) => {
    db.query('SELECT * FROM proveedores WHERE id = ?', [id], callback);
  },

  create: (proveedor, callback) => {
    db.query('INSERT INTO proveedores SET ?', proveedor, callback);
  },

  update: (id, proveedor, callback) => {
    db.query('UPDATE proveedores SET ? WHERE id = ?', [proveedor, id], callback);
  },

  delete: (id, callback) => {
    db.query('DELETE FROM proveedores WHERE id = ?', [id], callback);
  }
};

module.exports = Proveedor;