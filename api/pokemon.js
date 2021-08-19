const { Model, DataTypes } = require('sequelize')

class Pokemon extends Model {
  static init(sequelize) {
    super.init({
      id: {
        type: DataTypes.UUIDV4(),
        primaryKey: true,
      },
      name: DataTypes.STRING(255),
      power: DataTypes.NUMBER(),
      avatar: DataTypes.STRING(255),
      weaknesses: DataTypes.ARRAY(DataTypes.STRING),
    }, {
      sequelize,
      tableName: 'pokemons',
      timestamps: false,
    })
  }
}
module.exports = Pokemon
