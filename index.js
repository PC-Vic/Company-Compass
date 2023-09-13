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
      } else if (answers.user_choice1 === "add department") {
        addDepartment();
      } else if (answers.user_choice1 === "add employee") {
        addEmployee();
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


function addDepartment() {
      inquirer.prompt([
        {
          name: "department_name",
          message: "What is the name of the department?",
          type: "input",
        },
      ]).then(answers => {
        db.promise().query('INSERT INTO all_departments SET ?', answers).then(() => {
            console.log('Role dept was added')
            mainMenu()
        })
      })
  
}

function addEmployee() {
  db.promise()
    .query("SELECT * FROM all_roles")
    .then(([data]) => {
      const deptChoices = data.map(({ id, title }) => ({
        name: title,
        value: id,
      }));
      inquirer.prompt([
        {
          name: "first_name",
          message: "What is employee first name?",
          type: "input",
        },
        {
          name: "last_name",
          message: "What is the employees last name?",
          type: "input",
        },
        {
          name: "title",
          message: "what is their job title?",
          type: "list",
          choices: deptChoices,
        }, 

      ]).then(answers => {
        db.promise().query("SELECT * FROM all_employees").then(([data]) => {
          const managerChoices = data.map(({ id, first_name, last_name }) => ({
            name: `${first_name} ${last_name}`,
            value: id,
          }));
          managerChoices.unshift({name: "None", value: null})
          inquirer.prompt([{
            name: "manager",
            message: 'Who is your manager?',
            type: 'list',
            choices: managerChoices
          }]) .then(answers => {
            db.promise().query('INSERT INTO all_roles SET ?', answers).then(() => {
                console.log('Role was added')
                mainMenu()
            })
          })
      })
     
              
    
    });
  
})
}



mainMenu();
