# Portal wycieczkowy C2C


## Celem projektu jest stworzenie portalu przechowującego oferty osób organizujących wycieczki oraz osób które daną wycieczkę chciałyby zakupić a takiej oferty obecnie nie ma.
Portal ma również usprawniać komunikację pomiędzy klientem a osobą wystawiającą ofertę może to być realizowane za pomocą chatu lub udostępnienia kontaktów: email, numeru telefonu, adresu oraz realizację płatności.

## Uruchomienie portalu (Docker)

Dla uruchomienia niezbędnymi będą:

* [Docker Compose](https://docs.docker.com/compose/install/#install-compose) (link zawiera instrukcję instalacji pod różne systemy)

Po zainstalowaniu Docker i Docker Compose, wejść w katalog repo i wywołać komendę:

```shell
$ docker-compose up
# lub dla uruchomienia w tle 
$ docker-compose up -d
```

* Strona portalu: http://wycieczki/
* Strona adminowa: http://wycieczki/wp-admin/
* Phpmyadmin dla zarządzania bazą danych: http://127.0.0.1:8081/

> **Uwaga!** <br>
Na systemach Linux/MAC strona może nie ładować stylów dla portalu. W takim razie należy zmodyfikować plik `/etc/hosts/` i dodać linijkę `127.0.0.1   wycieczki` i zrestartować maszynę:
```
  127.0.0.1   localhost
  127.0.0.1   wycieczki <-- dodać tą linijkę
```

