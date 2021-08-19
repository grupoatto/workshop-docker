import { useEffect, useState, useCallback } from 'react'

const baseURL = 'http://pokemons.docker.localhost/api'

export default function App() {
  const [isLoading, setIsLoading] = useState(false)
  const [pokemons, setPokemons] = useState([])

  const fetchAllPokemons = useCallback(async () => {
    try {
      setIsLoading(true)
      const response = await fetch(`${baseURL}/pokemons`)
      const toJson = await response.json()
      return toJson
    } finally {
      setIsLoading(false)
    }
  }, [setIsLoading])

  useEffect(() => {
    fetchAllPokemons().then((response) => setPokemons(response))
  }, [fetchAllPokemons, setPokemons])

  if (isLoading) return (
    <div className="container">
      <h1 className="loading-message">Carregando lista de pokemons...</h1>
    </div>
  )

  return (
    <ul className="pokemon-list">
      {pokemons.map((pokemon) => (
        <li key={pokemon.id} className="container-pokemon">
          <p>Name: {pokemon.name}</p>
          <p>Power: {pokemon.power}</p>
          <img
            src={pokemon.avatar}
            alt="Imagem do pokémon"
            className="pokemon-img"
          />
          <p>Weaknesses:</p>
          <ul>
            {pokemon.weaknesses.map((weakness) => (
              <li key={weakness}>{weakness}</li>
            ))}
          </ul>
        </li>
      ))}
    </ul>
  )
}
