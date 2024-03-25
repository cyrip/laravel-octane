# Laravel octane test project

## start octane server
docker-compose -f docker-compose/open-swoole.yml up

## run tests
./vendor/bin/phpunit

### if you have problem with autoloading, ugly hack add this line to the top of the file
```php
require_once __DIR__ . '/../../../autoload.php';
vendor/laravel/octane/bin/swoole-server

