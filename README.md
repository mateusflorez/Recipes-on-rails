### Recipes on Rails
> Status: Complete :heavy_check_mark:

<table>
  <tr>
    <td>Ruby version</td>
    <td>
      2.7.0
    </td>
  </tr>
  <tr>
    <td>Rails version</td>
    <td>
       6.1.6.1
    </td>
  </tr>
  <tr>
    <td>Database</td>
    <td>
      SQLite3 (dev) / PostgreSQL (prod)
    </td>
  </tr>
</table>

## Functionalities:
+ Recipes CRUD
+ Add comments

## Instalation instructions:
```
#Clone the repository.
git clone https://github.com/mateusflorez/recipes-on-rails.git

#Open the terminal on the project root file.
cd recipes-on-rails

#Install Ruby on Rails dependencies
bundle install

#Install Node dependencies
yarn install

#Create the development and test databases
rails db:create

#Create the tables
rails db:migrate

#Run the project
rails s
```
Open the browser at the address `localhost:3000`.
