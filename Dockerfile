# Install dependencies
COPY composer.json composer.json
COPY composer.lock composer.lock
RUN composer install --prefer-dist --no-scripts --no-dev --no-autoloader && rm -rf /root/.composer

# Copy codebase
COPY . ./

# Finish composer
RUN composer dump-autoload --no-scripts --no-dev --optimize