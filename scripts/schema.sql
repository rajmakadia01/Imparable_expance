CREATE TABLE IF NOT EXISTS shop_users (username text PRIMARY KEY, salt text NOT NULL, hash text NOT NULL);
CREATE UNIQUE INDEX IF NOT EXISTS shop_users_lower_name ON shop_users(lower(username));
CREATE TABLE IF NOT EXISTS shop_sessions (token_hash text PRIMARY KEY, username text NOT NULL REFERENCES shop_users(username), expires_at timestamptz NOT NULL);
CREATE TABLE IF NOT EXISTS shop_attempts (ip text PRIMARY KEY, failures integer NOT NULL, until_at timestamptz NOT NULL);
CREATE TABLE IF NOT EXISTS shop_entries (sequence bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY, id text UNIQUE NOT NULL, data jsonb NOT NULL);
