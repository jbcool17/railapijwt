# RAILS API w/ JS Front End(React)
- Demonstating Rails API w/JWT Authentication

## Development
```
$ bundle
$ rake db:create
$ rake db:migrate
$ rake db:seed
$ rake hockey:get_standings
```

```
# Static Site Generator - Jekyll - this will contain mini sites
$ cd _site_generator && bundle
$ jekyll serve # http://localhost:4000
```

```
# React Development - work done from 'client' folder
$ cd client/<PROJECT> && npm install

# JWTCredentialsSite @ http://localhost:5000/
# HockeySite         @ http://localhost:5100/
# Rails API          @ http://localhost:3000/
# Start Up
$ foreman start
```

## Production Deploy Notes
```
# Create production build of react sites - Run a script
# Builds & deploys all sites to public folder
$ rake deploy:deploy_all

# Start dev server
$ rails s
```

## Hosting - Heroku
- [RailsAPI-JWT](https://floating-tor-40582.herokuapp.com/)

## API Only DOCS
### Sign Up / Confirm / Login - Get Json Web Token
```
# POST /users
$ curl -X POST -H "Content-Type: application/json" -H "Cache-Control: no-cache" \
  -d '{"user": {"email":"user@user1.com", "password": "test123","password_confirmation": "test123" }}' \
  "https://floating-tor-40582.herokuapp.com/users"

=> {"status":"User created successfully","confirm_link":"CONFIRM_LINK_WITH_TOKEN"}

# POST /users/confirm?token
$ curl -X POST -H "Cache-Control: no-cache" "CONFIRM_LINK_WITH_TOKEN"

=> {"status":"User confirmed successfully"}

# POST /users/login
$ curl -X POST -H "Content-Type: application/json" -H "Cache-Control: no-cache" -d '{"email": "user@user1.com", "password": "test123"}' "https://floating-tor-40582.herokuapp.com/users/login"

=> {"auth_token": "TOKEN"}
```

### Get JSON
```
# GET /v1/beers
$ curl -X GET -H "Authorization: Bearer TOKEN" -H "Cache-Control: no-cache" "https://floating-tor-40582.herokuapp.com/v1/beers"

# GET /v1/beers/:id
$ curl -X GET -H "Authorization: Bearer TOKEN" -H "Cache-Control: no-cache" "https://floating-tor-40582.herokuapp.com/v1/beers/:id"

# GET /v1/beers/search/:name
$ curl -X GET -H "Authorization: Bearer TOKEN" -H "Cache-Control: no-cache" "https://floating-tor-40582.herokuapp.com/v1/beers/:name"
```

## Testing via React
- Check the browser console for status messages

### 1 - Sign Up - with Email/Password/Password Confirmation
- this gives you a confirmation link that would normally get sent out via email.

![Step 2](https://floating-tor-40582.herokuapp.com/images/021.png)
![Step 3](https://floating-tor-40582.herokuapp.com/images/031.png)

### 2 - Click Confirm
![Step 4](https://floating-tor-40582.herokuapp.com/images/041.png)

### 3 - Login - Enter credentials from above, after confirmation complete.
![Step 6](https://floating-tor-40582.herokuapp.com/images/061.png)

### 4 - Current user should have the email.
- JWT should be in the console.
![Step 7](https://floating-tor-40582.herokuapp.com/images/071.png)

### 5 - Click 'Get All Beer' to get data
![Step 8](https://floating-tor-40582.herokuapp.com/images/081.png)

# Issues
- cannot add/update/delete beer
- delete beer cause React error
- needs hockey docs
