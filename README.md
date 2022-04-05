##Задание:
• На Linux машине нужно поднять reliable Elasticsearch 7 кластер из нескольких нод

• Elasticsearch 7 кластер должен стабильно работать при потере до 2-х произвольных нод

• Перед Elasticsearch кластером должен работать nginx, который

...на запросы на /elasticsearch работает как reverse proxy для Elasticsearch кластера

...запроc на /logs/nginx возвращает последние 1000 строк лога nginx

...запроc на /logs/elasticsearch/1 возвращает последние 1000 строк лога первой ноды Elasticsearch

...запроc на /logs/elasticsearch/2 возвращает последние 1000 строк лога второй ноды Elasticsearch

...запроc на /logs/elasticsearch/{N} возвращает последние 1000 строк лога N-ой ноды Elasticsearch

...на все остальные запросы возвращает HTML страницу c параметрами обрабатываемого HTTP-запроса

• Elasticsearch и nginx должны быть описаны как единая docker compose конфигурация
