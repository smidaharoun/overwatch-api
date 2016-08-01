# Overwatch API

The Overwatch API is a project aiming to make available as much data about Overwatch as possible. It does not concern itself with player data, as made available by other APIs, but instead focuses on base data about the game such as heroes, maps and abilities.

The API is hosted at [overwatch-api.net](http://overwatch-api.net).

## Installation

Overwatch API is built with [Laravel](https://laravel.com) so, if you're familiar with the framework, the installation and setup should be straight forward. If you've never used Laravel, not to worry - the Laravel documentation is thorough and so it's easy to get started.

It is recommended you run the API in [Laravel Homestead](https://laravel.com/docs/homestead), as this will take care of the necessary system dependencies and server configuration.

First clone the repository:

    git clone git@github.com:jamesmcfadden/overwatch-api.git

Setup your configuration file:

    cd overwatch-api
    cp .env.example .env
    php artisan key:generate

Install (if required) and run [composer](https://getcomposer.org) to install necessary dependencies:

    composer install

If you're not using Laravel Homestead, ensure you point your web server to `overwatch-api/public`. The document index file is `index.php`. You'll also need to ensure your web server has read write permissions on the `storage` folder.
    
### Database Setup

Setup the database using the Laravel Artisan tool from the project root:

    php artisan migrate

This will create the database structure, and uses Laravel [migrations](https://laravel.com/docs/migrations).

### Importing Data

The data is stored in CSV format and can be found in `resources/data`. To remove all existing data and import afresh, from the project root run:

    php artisan import

To import one or more tables:

    php artisan import heroes,abilities

## Contribution

If you would like to contribute to the project, please follow the steps above to install the project on your system so you can make changes.

### Data Contribution

If you would like to make additions or amendments to the project data, please read the following.

#### Data Format

The data is stored in CSV format to make it easier to import to a database when necessary. When you add or update the data, please ensure you follow the format:

    id,name,description,hero_id,reward_id
    "1","Level 10","Reach level 10.",\N,"30"
    "2","Level 25","Reach level 25.",\N,"40"
    "3","Level 50","Reach level 50.",\N,"39"

That is:

- Data files are headed with the associated database column names;
- Records are separated with a newline character;
- Record fields are enlosed in double quotes (`"`);
- Record fields are separated with by a comma (`,`);
- Null fields are denoted by `\N`

### Submitting Changes

Please open a pull request on GitHub.

## License

View the license file [here](https://github.com/jamesmcfadden/overwatch-api/blob/master/LICENSE).
