# ParasocialNetwork

## Development (recommended `bin/` scripts)

### Setup

- **Install Ruby gems + prepare the database**:

```bash
bin/setup
```

This runs `bundle install` (if needed) and `bin/rails db:prepare`.

### Run the app

- **Start the development server**:

```bash
bin/dev
```

### Tests, linting, and security checks

- **Run the full CI workflow locally** (setup + RSpec + lint + audits):

```bash
bin/ci
```

- **Run just the test suite (RSpec)**:

```bash
bundle exec rspec
```

### Common Rails tasks

- **Rails commands**:

```bash
bin/rails routes
bin/rails console
bin/rails db:migrate
```

- **Rake tasks**:

```bash
bin/rake -T
```

## Database (PostgreSQL)

This app uses PostgreSQL. By default, development/test database names are:

- `parasocial_network_development`
- `parasocial_network_test`

Configure connection details via `config/database.yml` or `DATABASE_URL`.
