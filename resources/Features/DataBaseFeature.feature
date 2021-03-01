Feature: DataBase SQL query Feature Scenario

@testDB
Scenario: Execute all information from Actor Table

                Given user connect to PostgreSql Databse 
                When user sends query 'select * from public.actor'
                Then user should get all information from that table
                
