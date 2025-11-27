# Инструкция по установке шаблона EdaGuru

## Быстрая установка

### Скачать шаблон

**Прямая ссылка на скачивание:**
https://github.com/Igor-Shpenev/dle-edaguru-template/raw/master/edaguru-template-v2.0.tar.gz

```bash
wget https://github.com/Igor-Shpenev/dle-edaguru-template/raw/master/edaguru-template-v2.0.tar.gz
```

### Установка

1. **Распакуйте архив:**
   ```bash
   tar -xzf edaguru-template-v2.0.tar.gz
   ```

2. **Загрузите папку Edaguru на сервер:**
   - Загрузите папку `Edaguru` в директорию `/templates/` вашего сайта DLE
   - Путь должен быть: `/templates/Edaguru/`

3. **Активируйте шаблон:**
   - Войдите в админ-панель DLE
   - Перейдите в "Настройки" → "Настройки шаблонов"
   - Выберите шаблон "Edaguru"
   - Сохраните изменения

4. **Создайте дополнительные поля:**
   - См. файл `REQUIRED_FIELDS.md` для подробной инструкции
   - Нужно создать 7 полей: cook_time, calories, servings, difficulty, ingredients, recipe_steps, video

5. **Настройте категории:**
   - Создайте категории: Первые блюда, Вторые блюда, Гарниры, Салаты, Закуски, Десерты, Напитки, Детям
   - Если ID категорий отличаются от 1-8, отредактируйте `fullstory.tpl`

## Состав архива

```
Edaguru/
 main.tpl              # Главный шаблон
 fullstory.tpl         # Полная статья рецепта
 shortstory.tpl        # Краткая карточка рецепта
 shortstory_compact.tpl # Компактная карточка
 popular_item.tpl      # Популярный рецепт
 recipe_of_day.tpl     # Рецепт дня
 css/
   └── style.css         # Основные стили
 js/
   └── script.js         # JavaScript
 images/
   ├── cuisines/         # Изображения кухонь (4 шт)
   └── ingredients/      # Изображения ингредиентов (10 шт)
 engine/
    └── modules/
        ├── categories_menu.tpl        # Меню категорий (десктоп)
        ├── categories_menu_mobile.tpl # Меню категорий (мобильное)
        ├── cook_today.tpl             # Блок "Приготовить сегодня"
        ├── popular_recipes.tpl        # Популярные рецепты
        ├── quick_recipes.tpl          # Быстрые рецепты
        └── world_cuisines.tpl         # Кухни мира
```

## Требования

- DLE 14.x или выше
- PHP 7.4 или выше
- Включенная поддержка дополнительных полей

## Поддержка

- GitHub: https://github.com/Igor-Shpenev/dle-edaguru-template
- Issues: https://github.com/Igor-Shpenev/dle-edaguru-template/issues

---

**Версия:** 2.0  
**Дата выпуска:** 26 ноября 2025
