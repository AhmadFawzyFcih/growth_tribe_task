# Growth-Tribe-Task

1-This is a simple application designed to catch tree structure from a random tree api and save this structure and perform many actions on this tree 
  such as find Child/Parent nodes quickly https://growth-tribe-task.herokuapp.com/1 :-

2-Here are the installation steps to run the project :

   - Ruby version  : 2.6.3
   - Rails version : 6.0.0
   - enter the project and run this command : bundle install
   - create DB : rails db:migrate
   - run the project with this command : rails s

3-Apis :

      - HTTP GET /catch_structure
      => Catch and save tree structure in json file called tree.json in public folder
      
      - HTTP GET /:tree_id
      => Return the saved structure
      
      - HTTP GET /:tree_id/parent/:id
      => Return the list of parents IDs
        
      - HTTP GET /:tree_id/child/:id
      => Return the list of child IDs

4-Import apis collection to your postman : https://www.getpostman.com/collections/9013dce7bf946f85a3a6
