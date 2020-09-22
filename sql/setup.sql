DROP TABLE IF EXISTS recipes, logs;

CREATE TABLE recipes (
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  name TEXT NOT NULL,
  directions TEXT[],
  ingredients JSONB
);

CREATE TABLE logs (
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  recipe_id BIGINT,
  date_of_event TEXT NOT NULL,
  notes TEXT NOT NULL,
  rating INT
)
