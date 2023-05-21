import jwt from 'jsonwebtoken';
import { db } from '../database/database.connection.js';

export const authenticateToken = (req, res, next) => {
    const authHeader = req.headers.authorization;
    if (!authHeader || !authHeader.startsWith('Bearer ')) {
        return res.status(401).send('Token de autenticação não fornecido ou inválido.');
    }

    const token = authHeader.split(' ')[1];
    jwt.verify(token, process.env.JWT_SECRET, async (err, user) => {
        if (err) {
            return res.status(401).send('Token de autenticação inválido.');
        }
        req.user = user;
        
        const userId = await db.query(`SELECT * FROM users WHERE email = $1`, [user.email])
       
        res.locals.userId = userId.rows[0].id
        
        next();
    });
};