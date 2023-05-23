import bcrypt from "bcrypt";
import { db } from "../database/database.connection.js";
import jwt from 'jsonwebtoken';

export const registerUser = async (req, res) => {
    const { name, email, password, confirmPassword } = req.body;

    try {
        const existingUser = await db.query('SELECT * FROM users WHERE email = $1', [email.toLowerCase()]);
        if (existingUser.rows.length > 0) return res.status(409).send('E-mail already registered');

        if (password !== confirmPassword) return res.status(422).send('Passwords do not match');

        const hashedPassword = await bcrypt.hash(password, 10);

        await db.query('INSERT INTO users (name, email, password) VALUES ($1, $2, $3)', [
            name.toLowerCase(),
            email.toLowerCase(),
            hashedPassword,
        ]);

        return res.status(201).send('User registered successfully');
    } catch (error) {
        return res.status(500).send('Internal Server Error');
    }
};


export const signIn = async (req, res) => {
    try {

        const { email, password } = req.body;
        const query = 'SELECT * FROM users WHERE email = $1';
        const result = await db.query(query, [email.toLowerCase()]);

        if (result.rows.length === 0) return res.status(401).send('Email ou senha incorretos');
        
        const user = result.rows[0];
        const passwordMatch = await bcrypt.compare(password, user.password);

        if (!passwordMatch) return res.status(401).send('Email ou senha incorretos');
        
        const token = jwt.sign({ email }, process.env.JWT_SECRET || 'mysecret', { expiresIn: '1h' });

        res.status(200).send({ token });
    } catch (error) {
        res.status(500).send('Internal Server Error');
    }
};