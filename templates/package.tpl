{
  "name": "@element/{{TAG_NAME}}",
  "version": "1.0.0",
  "description": "",
  "main": "{{TAG_NAME}}.js",
  "lint-staged": {
    "*.js": [
      "eslint --fix",
      "prettier --write",
      "git add"
    ]
  },
  "scripts": {
    "start": "polymer serve --npm -p 8081 & browser-sync start --proxy 'localhost:8081' --port 8080 --ui-port 8082 --files 'index.html, test/**/*.spec.js, demo/index.html, ./*.js'",
    "lint": "npm run lint:eslint && npm run lint:prettier",
    "lint:eslint": "eslint --ext .js,.html .",
    "lint:prettier": "prettier '**/*.js' --list-different || (echo '↑↑ these files are not prettier formatted ↑↑' && exit 1)",
    "format": "npm run format:eslint && npm run format:prettier",
    "format:eslint": "eslint --ext .js,.html . --fix",
    "format:prettier": "prettier '**/*.js' --write",
    "test": "karma start",
    "test:watch": "karma start --auto-watch=true --single-run=false",
    "test:es5": "karma start karma.es5.config.js",
    "test:es5:watch": "karma start karma.es5.config.js --auto-watch=true --single-run=false"
  },
  "keywords": ["lit-element"],
  "author": "autogenered <Replace for your username and email>",
  "license": "MIT",
  "dependencies": {
    "lit-element": "^2.0.0-rc.5"
  },
  "devDependencies": {
    "@commitlint/cli": "^7.4.0",
    "@commitlint/config-conventional": "^7.3.1",
    "@open-wc/eslint-config": "^0.3.8",
    "@open-wc/prettier-config": "^0.1.5",
    "@open-wc/testing": "^0.9.11",
    "@open-wc/testing-karma": "^0.4.7",
    "browser-sync": "^2.26.3",
    "chokidar": "^2.0.4",
    "eslint": "^5.12.1",
    "husky": "^1.3.1",
    "jshint-stylish": "^2.2.1",
    "lint-staged": "^8.1.1",
    "prettier": "1.16.3"
  }
}
