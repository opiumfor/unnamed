## Ansible

### Установка зависимостей из ansible-galaxy
Добавляем руками в .ansible-galaxy.yaml:

```
- src: {{ role name }}
  version: {{ role version }}
```

А потом просим ansible-galaxy притянуть зависимости из репозиториев:
```bash
ansible-galaxy install -r .ansible-galaxy.yaml
```

### Развёртывание копии проекта
Все зависимости мы ставим в virtualenv, никаких глобальных окружений даже на локальных машинах. Тут инструкция только для virtualenv, остальные примочки типа virtualenvwrapper каждый ставит себе по желанию (и PR welcome в этот readme).

```bash
# Python 2:
$ virtualenv .venv
# Python 3
$ python3 -m venv .venv

$ source .venv/bin/activate

# Python 2
$ pip install -r requirements.txt
# Python 3
$ pip3 install -r requirements.txt

$ deactivate
```
