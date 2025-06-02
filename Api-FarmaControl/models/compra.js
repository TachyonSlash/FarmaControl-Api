const db = require('../config/database');

const Compra = {
  getAll: (callback) => {
    db.query('SELECT * FROM compras', callback);
  },

  getById: (id, callback) => {
    db.query('SELECT * FROM compras WHERE id = ?', [id], callback);
  },

  create: (compra, callback) => {
    db.query('INSERT INTO compras SET ?', compra, callback);
  },

  update: (id, compra, callback) => {
    db.query('UPDATE compras SET ? WHERE id = ?', [compra, id], callback);
  },

  delete: (id, callback) => {
    db.query('DELETE FROM compras WHERE id = ?', [id], callback);
  }
};

module.exports = Compra;