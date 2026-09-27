Die Teilnehmer-Datenbank ist mit einem symmetrischen GPG-Passwort verschlüsselt. Das Passwort ist in der ```pass```-Datenbank abgelegt.

## Benutzung

Zur einfachen Benutzung (entschlüsseln, Teilnehmer hinzufügen und verschlüsseln) kann das Skript `signup.py` verwendet werden. (python >= 3.5!)

```bash
./signup.py
```

## Manuelle Schritte

```bash
# Entschlüsseln
gpg2 --output signups.sqlite --decrypt signups.sqlite.gpg

# Bearbeiten
sqlite signups.sqlite

# Verschlüsseln
gpg2 --symmetric signups.sqlite
```

```sql
-- Neuen Teilnehmer hinzufügen
INSERT INTO signups (first_name,last_name,email,teamname,experience,allergies)
  VALUES ("Vorname", "Nachname", "die@mail", "yuh", "scratch", "keine");
```
