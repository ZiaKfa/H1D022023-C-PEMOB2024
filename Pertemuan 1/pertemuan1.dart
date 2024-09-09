class Pokemon {
  String name;
  String type;
  int damage;
  int maxHP;
  int currentHP;

  Pokemon(this.name, this.type, this.damage, this.maxHP) : currentHP = maxHP;

  void info() {
    print('Pokemon: $name');
    print('Type: $type');
    print('Damage: $damage');
    print('Max HP: $maxHP');
    print('Current HP: $currentHP');
  }

  void attack(Pokemon enemy) {
    print('$name is attacking ${enemy.name}');
    enemy.currentHP -= damage;
    print('${enemy.name}\'s HP is reduced to ${enemy.currentHP}');
  }

  void heal(int amount) {
    currentHP += amount;
    if (currentHP > maxHP) {
      currentHP = maxHP;
    }
    print('$name is healing. Current HP: $currentHP');
  }
}

void main() {
  var pikachu = Pokemon('Pikachu', 'Electric', 10, 100);
  var charmander = Pokemon('Charmander', 'Fire', 8, 90);

  pikachu.info();
  charmander.info();

  pikachu.attack(charmander);
  charmander.attack(pikachu);

  pikachu.heal(5);
  charmander.heal(4);

  pikachu.info();
  charmander.info();
}