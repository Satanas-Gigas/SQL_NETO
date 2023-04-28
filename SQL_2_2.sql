CREATE TABLE IF NOT EXISTS departments (
	       id SERIAL PRIMARY KEY,
        name VARCHAR(40) NOT NULL	
);

CREATE TABLE IF NOT EXISTS employees (
           id SERIAL PRIMARY KEY,
         name VARCHAR(40) NOT NULL,
id_departments INTEGER REFERENCES departments(id),
   id_managers INTEGER REFERENCES employees(id)
);