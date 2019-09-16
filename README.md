# ElixirGraphql

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Populate your database with following command (on the database console):
    * `COPY cities(state, name, uf, inserted_at, updated_at) FROM 'YOUR_PATH/data/cities.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER);`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000/api/graphiql`](http://localhost:4000/api/graphiql) from your browser.
