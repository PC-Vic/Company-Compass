const inquirer = require('inquirer');
const mysql = require('mysql2');


const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: 'AlexiaNieves10!!$',
        database: 'company_db' 
    },
    console.log('connected to database')
)

function mainMenu() {
    inquirer
        .prompt([
            {
                type: 'list',
                name: 'user_choice',
                message: 'What would you like to view?',
                choices: ['view departments', 'view employees', 'view managers', 'view roles',],
            },
        
        ])
        .then((answers) => {
        console.log(answers)
        if(answers = 'view departments') {
            viewDepartments()
        }
    });
}




function viewDepartments(){
    db.query('SELECT * from all_departments', (err, results) => {
        if (err) {
            console.error('Error fetching employee data:', err);
        } else {
            console.table(results)
            mainMenu()
        } 
    });
}

// viewDepartments()


mainMenu()

