const inquirer = require("inquirer");
const mysql = require("mysql2");

const db = mysql.createConnection(
  {
    host: "localhost",
    user: "root",
    password: "AlexiaNieves10!!$",
    database: "company_db",
  },
  console.log("connected to database")
);

function mainMenu() {
  inquirer
    .prompt([
      {
        type: "list",
        name: "user_choice1",
        message: "What would you like to do?",
        choices: [
          "view departments",
          "view employees",
          "view roles",
          "add role",
          "add employee",
          "add department",
        ],
      },
    ])
    .then((answers) => {
      // added els statement but needs review
      console.log(answers.user_choice1);
      if (answers.user_choice1 === "view departments") {
        viewDepartments();
      } else if (answers.user_choice1 === "view employees") {
        viewEmployees();
      } else if (answers.user_choice1 === "view roles") {
        allRoles();
      } else if (answers.user_choice1 === "add role") {
        addRole();
      }
    });
}

function viewDepartments() {
  db.query("SELECT * from all_departments", (err, results) => {
    if (err) {
      console.error("Error fetching employee data:", err);
    } else {
      console.table(results);
    }
    mainMenu();
  });
}

// ???
function allRoles() {
  db.query("SELECT * from all_roles", (err, results) => {
    if (err) {
      console.error("Error fetching employee data:", err);
    } else {
      console.table(results);
    }

    mainMenu();
  });
}

function addRole() {
  db.promise()
    .query("SELECT * FROM all_departments")
    .then(([data]) => {
      const deptChoices = data.map(({ id, department_name }) => ({
        name: department_name,
        value: id,
      }));
      inquirer.prompt([
        {
          name: "title",
          message: "What is the name of the role?",
          type: "input",
        },
        {
          name: "salary",
          message: "What is the salary?",
          type: "input",
        },
        {
          name: "department",
          message: "What department does it belong to?",
          type: "list",
          choices: deptChoices,
        },
      ]).then(answers => {
        db.promise().query('INSERT INTO all_roles SET ?', answers).then(() => {
            console.log('Role was added')
            mainMenu()
        })
      })
    });
  
}

// function viewManagers(){
//     db.query('SELECT * from all_employees', (err, results) => {
//         if (err) {
//             console.error('Error fetching employee data:', err);
//         } else {
//             console.table(results)

//         }
//                 mainMenu()
//     });
// }

// viewDepartments()

mainMenu();
