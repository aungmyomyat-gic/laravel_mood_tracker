# Mood Tracker Application

A modern, responsive web application built with Laravel and MySQL (using PlanetScale) that allows users to track their daily moods and journal entries. This application demonstrates a complete CRUD (Create, Read, Update, Delete) implementation with a clean, user-friendly interface.

## Features

- **Mood Management**: Create, view, edit, and delete mood entries
- **Journal Entries**: Add detailed notes to your mood entries
- **Visual Tracking**: Color-coded mood indicators for quick reference
- **Responsive Design**: Works on desktop and mobile devices
- **RESTful API**: Built with Laravel's resource controllers
- **Docker Support**: Easy containerized development environment
- **Caching**: Implements Laravel's caching for better performance

## Tech Stack

- **Backend**: Laravel 9.x
- **Frontend**: Tailwind CSS, Alpine.js
- **Database**: MySQL (PlanetScale)
- **Containerization**: Docker & Docker Compose
- **Deployment**: Ready for Laravel Forge/Vapor, Heroku, or similar platforms

## Prerequisites

- Docker and Docker Compose
- PHP 8.0+ (if running without Docker)
- Composer (if running without Docker)
- Node.js & NPM (for frontend assets)
- A PlanetScale database (or any MySQL database)

## Getting Started

### With Docker (Recommended)

1. Clone the repository:
   ```bash
   git clone git@github.com:planetscale/laravel-crud-mysql.git
   cd laravel-crud-mysql
   ```

2. Copy the environment file and update with your database credentials:
   ```bash
   cp .env.example .env
   ```

3. Start the Docker containers:
   ```bash
   docker compose up -d
   ```

4. Install PHP dependencies:
   ```bash
   docker compose exec app composer install
   ```

5. Install NPM dependencies and compile assets:
   ```bash
   docker compose exec app npm install
   docker compose exec app npm run dev
   ```

6. Generate application key:
   ```bash
   docker compose exec app php artisan key:generate
   ```

7. Run database migrations:
   ```bash
   docker compose exec app php artisan migrate
   ```

8. Access the application at: http://localhost:8000

### Without Docker

1. Clone the repository and install dependencies:
   ```bash
   git clone git@github.com:planetscale/laravel-crud-mysql.git
   cd laravel-crud-mysql
   composer install
   npm install
   npm run dev
   ```

2. Set up your environment:
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

3. Configure your database connection in `.env`

4. Run migrations:
   ```bash
   php artisan migrate
   ```

5. Start the development server:
   ```bash
   php artisan serve
   ```

## Environment Variables

Update the following variables in your `.env` file:

```
DB_CONNECTION=mysql
DB_HOST=your_database_host
DB_PORT=3306
DB_DATABASE=your_database_name
DB_USERNAME=your_database_username
DB_PASSWORD=your_database_password
MYSQL_ATTR_SSL_CA=/path/to/ssl/cert.pem  # Required for PlanetScale
```

## Project Structure

```
laravel-crud-mysql/
├── app/                  # Application code
│   ├── Http/            # Controllers and middleware
│   ├── Models/          # Eloquent models
│   └── ...
├── config/              # Configuration files
├── database/            # Migrations and seeders
├── public/              # Publicly accessible files
├── resources/           # Views and assets
│   ├── js/             # JavaScript files
│   ├── views/          # Blade templates
│   └── ...
├── routes/              # Application routes
├── storage/             # Storage directory
└── tests/               # Test files
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

## Credits

- Built with [Laravel](https://laravel.com)
- Styled with [Tailwind CSS](https://tailwindcss.com)
- Database by [PlanetScale](https://planetscale.com)

7. Seed the database:

```bash
php artisan db:seed
```

8. Start the build process (for Tailwind):

```bash
npm run watch
```

9. Start the server:

```bash
php artisan serve
```

10. View the application at [http://localhost:8080](http://localhost:8080)
