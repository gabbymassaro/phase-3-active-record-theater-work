# Practice Code Challenge Theater Work

## Learning Goals

- Write Active Record Migrations
- Connect between tables using Active Record Associations
- Write class and instance methods using Active Record
- Use Active Record to query the database

## Introduction

The Flatiron Theater Company is holding Auditions!

## Getting started

run `bundle install`

## Migrations

Create your migrations.

- **Auditions** should have a `location` (string) and `belong_to` a `role` (integer)
- **Roles** should only have a `character_name` (string)
- **Actors** should have a `name` (string) and a `phone` (integer)

### Auditions Table

| Column   | Type    |
| -------- | ------- |
| location | string  |
| hired    | boolean |
| role_id  | integer |
| actor_id | integer |

### Roles Table

| Column         | Type   |
| -------------- | ------ |
| character_name | string |

### Actors Table

| Column | Type    |
| ------ | ------- |
| name   | string  |
| phone  | integer |

## Relationship

- What associations will this need?
  - (i.e. `has_many`, `has_many through`, and `belongs_to`)

## Audition

- `Audition#role` returns an instance of role associated with this audition
- `Audition#actor` returns an instance of actor associated with this audition
- `Audition#call_back` will change the hired attribute to `true`
- `Audition.hired` returns all auditions where the hired attribute is `true`
- `Audition.not_hired` returns all auditions where the hired attribute is `false`

## Roles

- `Role#auditions` returns all of the auditions associated with this role
- `Role#actors` returns an array of names from the actors associated with this role
- `Role#locations` returns an array of locations from the auditions associated with this role
- `Role#lead` returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
- `Role#understudy` returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'
- `Role.most_auditions` returns the role with the highest number of auditions
- `Role.all_actors` returns a unique list of all actors who have auditioned for any role

## Actors

- `Actor#auditions` returns all of the auditions associated with this actor
- `Actor#roles` returns an array of roles associated with this actor
- `Actor.most_roles` returns the actor who has auditioned for the most roles
- `Actor.hired_roles` returns all roles for which the actor has been hired
