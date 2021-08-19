CREATE TABLE IF NOT EXISTS pokemons (
  id UUID NOT NULL CONSTRAINT pokemon_pk PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  power INT NOT NULL,
  avatar VARCHAR(255) NOT NULL,
  weaknesses VARCHAR[]
);

INSERT INTO pokemons(id, name, power, avatar, weaknesses) VALUES ('669a7366-1c7d-4f09-9dfe-790067d5b3d7', 'Ivysaur', 2800, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png', '{Fire, Psychic, Flying, Ice}');
INSERT INTO pokemons(id, name, power, avatar, weaknesses) VALUES ('aae8e45e-2f7f-4491-bfbc-acf76f984949', 'Bulbasaur', 2900, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png', '{Grass, Eletric}');
INSERT INTO pokemons(id, name, power, avatar, weaknesses) VALUES ('ac628078-24f2-4294-91c9-558bcdf21215', 'Squirtle', 3000, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png', '{Water, Ground, Rock}');
INSERT INTO pokemons(id, name, power, avatar, weaknesses) VALUES ('52e46eb3-d0d5-48a5-b9fa-b608a0f9c7c5', 'Charmander', 1500, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png', '{Ghost, Dark, Bug}');
INSERT INTO pokemons(id, name, power, avatar, weaknesses) VALUES ('bb5a00ae-6c71-4c80-bf2e-0c3b1c285cec', 'Mewtwo', 5000, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/150.png', '{Fairy, Dragon, Ice, Rock}');
INSERT INTO pokemons(id, name, power, avatar, weaknesses) VALUES ('72ebcfb0-aa0e-4ac9-bc11-4128f4aca0a2', 'Dragonite', 4000, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/149.png', '{Grass, Eletric}');
INSERT INTO pokemons(id, name, power, avatar, weaknesses) VALUES ('8ea9ee71-4505-409e-9b7b-7b1f12043776', 'Blastoise', 3300, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png', '{Fire, Flying, Ice, Poison, Bug}');
INSERT INTO pokemons(id, name, power, avatar, weaknesses) VALUES ('17ac5366-3ac2-49ea-9853-c165e94d2a16', 'Chikorita', 4600, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/152.png', '{Grass, Eletric}');
INSERT INTO pokemons(id, name, power, avatar, weaknesses) VALUES ('d990cd46-ef20-4adf-b1f2-8fa6b8a2befe', 'Kyogre', 2200, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/382.png', '{Ground}');
INSERT INTO pokemons(id, name, power, avatar, weaknesses) VALUES ('b4cdd7d8-3d40-4203-8eaa-eddbeb09eb9c', 'Elekid', 2600, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/239.png', '{Fire, Psychic, Flying, Ice}');
INSERT INTO pokemons(id, name, power, avatar, weaknesses) VALUES ('7f916dad-b5c4-424f-aecf-cf35b01a22dc', 'Articuno', 1300, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/144.png', '{Steel, Fire, Eletric, Rock}');
INSERT INTO pokemons(id, name, power, avatar, weaknesses) VALUES ('cefeb789-21de-4315-9d4c-f0bf7b919c88', 'Cyndaquil', 1800, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/155.png', '{Water, Ground, Rock}');
INSERT INTO pokemons(id, name, power, avatar, weaknesses) VALUES ('b15fd07f-b2e5-4c66-9084-f6e0655f8069', 'Typhlosion', 1500, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/157.png', '{Water, Ground, Rock}');
