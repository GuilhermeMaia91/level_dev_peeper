# Curso Leveldev (Locaweb)

Projetinho implementado durante o curso do **Level Dev** ministrado pelo mestre **Valeriano** (Meu muito obrigado por todo conhecimento 👏🧠).

Esse projeto possui um backend e frontend monolito
- Backend em Ruby on Rails
- Front Vue com o Vite

Para acessar o painel do sidekiq da aplicação acessar http://localhost:3000/sidekiq com as credenciais
```
user: sidekiq
password: sidekiq123
```

Para subir o container
```
docker-compose up
```

Para rodar os testes
```
docker-compose run web bundle exec rspec
```

Para rodar o sidekiq
```
docker-compose run web bundle exec sidekiq
```

Agradecimentos a **Vindi** por ter me proporcionado essa experiência de particiar desse projeto incrivel da **Locaweb** 💙
