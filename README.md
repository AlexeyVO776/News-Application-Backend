# News Application Backend
## Описание
Это бэкенд для новостного сайта, написанный на Ruby on Rails. 
Бэкенд предоставляет REST API для управления новостями.
## Установка
### Клонируйте репозиторий:
### Установите зависимости:
    bundle install
### Настройте базу данных:
    rails db:create
    rails db:migrate
    rails db:seed
## Запуск
### Запустите сервер:
    rails server
Сервер будет доступен по адресу http://localhost:3000.
## Тестирование
Для запуска тестов используйте:
    rspec
## API
    GET /big_news - Получить список всех новостей
    GET /big_news/:id - Получить новость по ID
    GET /big_news/latest - Получить последнюю новость
## Админская панель
Админская панель доступна по адресу http://localhost:3000/admin/big_news.
