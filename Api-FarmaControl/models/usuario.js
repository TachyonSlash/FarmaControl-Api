const db = require('../config/database');

const Usuario = {
  getAll: (callback) => {
    db.query('SELECT * FROM usuarios', callback);
  },
  
  getById: (id, callback) => {
    db.query('SELECT * FROM usuarios WHERE id = ?', [id], callback);
  },
  
  create: (usuario, callback) => {
    db.query('INSERT INTO usuarios SET ?', usuario, callback);
  },
  
  update: (id, usuario, callback) => {
    db.query('UPDATE usuarios SET ? WHERE id = ?', [usuario, id], callback);
  },
  
  delete: (id, callback) => {
    db.query('DELETE FROM usuarios WHERE id = ?', [id], callback);
  },
  
  findByEmail: (email, callback) => {
    db.query('SELECT * FROM usuarios WHERE email = ?', [email], callback);
  }
};

  login: (email, contrasenia, callback) => {
    db.query('SELECT * FROM usuarios WHERE email = ? AND contrasenia = ?', 
    [email, contrasenia], 
    (err, results) => {
      if (err) return callback(err);
      
      if (results.length === 0) {
        return callback(null, null);
      }
      
      const user = results[0];
      delete user.contrasenia;
      callback(null, user);
    });
  };


module.exports = Usuario;