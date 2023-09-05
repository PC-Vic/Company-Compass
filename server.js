const express = require('express');
const mysql = require('mysql2');

const PORT = process.env.PORT || 3001
const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());


const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: 'AlexiaNieves10!!$',
        database: 'employees_db' // unsure of what to put here, have multiple db
    },
    console.log('connected to database')
)

// Routes
app.get('/', (req, res) => {
    res.json({ message: ''})
});

app.get('/employees', (req, res) => {
    Connection.query('SELECT * from employees', (err, results) => {
        if (err) {
            console.error('Error fetching employee data:', err);
            res.status(500).json({ error: 'An error occurred while fetching data'});
        } else {
            res.json(results);
        }
    });
});





app.listen(PORT, () => {
    console.log(`Server running on port ${3001}`);
});
