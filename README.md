# 📺 Media Tracker - Custom MVC Framework

Een back-end project gericht op de fundamenten van PHP architectuur. Dit project simuleert de core-functionaliteiten van moderne frameworks door middel van een custom routing engine, middleware beveiliging en terminal-based database tools.

## 🛠 Kernfunctionaliteiten

### 1. Regex Routing Engine
De applicatie maakt gebruik van een custom router die URL-patronen matcht middels reguliere expressies. Dit staat dynamische routes toe zoals `/details/{resource}/{id}`, waarbij de parameters direct worden doorgegeven aan de juiste controller-methode.

### 2. Base Controller & Middleware
Om redundante code te voorkomen, is er gekozen voor een **Inheritance-based security model**:
* **HomeController:** Functioneert als base class. De constructor bevat de `AuthenticationMiddleWare`.
* **Child Controllers:** Alle beveiligde pagina's (Add, Edit, Home) overerven van de HomeController. Hierdoor is elke route by default beveiligd zonder dat er in elke methode een check nodig is.

### 3. CLI Development Tools
Voor een efficiënte workflow zijn er twee command-line tools ontwikkeld:
* **Migrations (`migrate.php`):** Een systeem dat op basis van configuratie-arrays automatisch database-tabellen aanmaakt en beheert.
* **Factory Seeder (`seed.php`):** Genereert razendsnel testdata. Gebruikt `$argv` voor dynamische input in de terminal (bijv. `php seed.php 20`).

### 4. Dynamische Data Koppeling
Middels de `turnToClass` helper-methode worden URL-strings dynamisch omgezet naar Class-instantiaties. Dit zorgt voor een flexibele koppeling tussen de verschillende media-resources (films/series) en de onderliggende Models.

---

## 5. Runnen van project.
Bestand is gebouwd op een centrale vhost, hierdoor moet het project als het gecloned is, in een centrale mvc--style map/root staan. Er wordt namelijk gebruik gemaakt van een urlroot constante. Als je geen mvc--style directory, aanmaakt, zullen de redirects niet werken. Dus mapstructuur moet zijn -> mvc--style/gecloned project.

1. run ```bash mysql -u root < import.sql```
2. run migrate.php in de cli voor de users table. ```bash migrate.php ```
3. run seed.php 1 of 2 in de cli. (de 1 of 2 zijn argumenten in de cli)voor test data voor de de users table. ```bash seed.php 1 ```


## 📂 Project Structuur

```text
├── authentication/    # Sessie-beheer & Auth logica
├── controllers/       # Controllers (Add, Edit, Home)
├── Models/            # Database queries & Business logica
├── migrations/        # Tabel-definities & Migration engine
├── factory/           # Seeder configuratie & Seeder engine
├── views/             # PHP/HTML Templates
├── Router/            # Core routing logica
├── migrate.php        # CLI entry voor migraties
└── seed.php           # CLI entry voor seeding
