# Коричневый комментарий

Мод на Quake про безымянного президента СШП, решившего испортить очередной подъезд.

Некоторые ресурсы взяты с [LibreQuake](https://github.com/MissLav/LibreQuake). Используется модифицированный [QuakeSpasm](http://quakespasm.sourceforge.net) под названием EnteroSpasm.

## Установка

### Из исходников

0. Установите `git`, `fteqcc` (желательно из [исходников](#установка-fteqcc-из-исходников)) и компилятор C/C++ (Для дистрибутивов, основанных на Debian: `build-essential`)
1. Скачайте репозиторий: `git clone https://github.com/rndtrash/solid_commentary.git`
2. Выполните команду `make` для сборки. Мод с движком будет скопирован в папку `bin`
3. Запустите игру с помощью команды `make run` или запустив `quakespasm` в папке `bin`

### Установка FTEQCC из исходников

0. Выполните пункт 0 в инструкции выше, плюс установите `svn`
1. Выполните команду **вне** папки с модом: `svn checkout https://svn.code.sf.net/p/fteqw/code/trunk fteqw-code`
2. Зайдите в папку `fteqcc/engine/qclib`, выполните команду сборки: `make`
3. Скопируйте файл `fteqcc.bin` в папке этого репозитория `solid_commentary/qc`

### Из архива

Пока что никак...
