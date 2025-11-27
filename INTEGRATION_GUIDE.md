# Руководство по интеграции шаблона EdaGuru в DLE

## 🎯 Быстрый старт

### Шаг 1: Установка шаблона

1. Загрузите папку `dle-template` на ваш сервер
2. Переименуйте папку в название вашего шаблона (например: `edaguru`)
3. Скопируйте в `/templates/edaguru/`

### Шаг 2: Активация шаблона

1. Войдите в админ-панель DLE
2. Перейдите: **Шаблоны** → **Управление шаблонами**
3. Выберите `edaguru` как основной шаблон
4. Сохраните изменения

## 📝 Создание дополнительных шаблонов

### Шаблон карточки рецепта (shortstory.tpl)


```html
<div class="recipe-card">
<div class="recipe-card-image">
{image-1}
<div class="recipe-category-badge">{link-category}</div>

<button class="recipe-like-btn">
<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
</svg>
</button>
</div>

<div class="recipe-card-content">
<h3 class="recipe-card-title">{title}</h3>
<p class="recipe-card-description">{short-story limit="120"}</p>

<div class="recipe-card-meta">
<div class="meta-tag time">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<circle cx="12" cy="12" r="10"></circle>
<polyline points="12 6 12 12 16 14"></polyline>
</svg>
<span>[xfvalue_cook_time] мин</span>
</div>
<div class="meta-tag calories">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M8.5 14.5A2.5 2.5 0 0 0 11 12c0-1.38-.5-2-1-3-1.072-2.143-.224-4.054 2-6 .5 2.5 2 4.9 4 6.5 2 1.6 3 3.5 3 5.5a7 7 0 1 1-14 0c0-1.153.433-2.294 1-3a2.5 2.5 0 0 0 2.5 2.5z"></path>
</svg>
<span>[xfvalue_calories] ккал</span>
</div>
</div>

<div class="recipe-card-footer">
<div class="recipe-card-stats">
<div class="recipe-stat">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
</svg>
<span>{favorites}</span>
</div>
<div class="recipe-stat">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
</svg>
<span>{comments-num}</span>
</div>
</div>

<a href="{full-link}" class="recipe-view-btn">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path>
<path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path>
</svg>
</a>
</div>
</div>
</div>
```

### Полный рецепт (fullstory.tpl)


```html
<article class="recipe-full">
<header class="recipe-full-header">
<div class="breadcrumbs">{speedbar}</div>

<h1 class="recipe-full-title">{title}</h1>

<div class="recipe-full-meta">
<div class="meta-tag time">
<svg>...</svg>
<span>[xfvalue_cook_time] мин</span>
</div>
<div class="meta-tag calories">
<svg>...</svg>
<span>[xfvalue_calories] ккал</span>
</div>
<div class="meta-tag servings">
<svg>...</svg>
<span>[xfvalue_servings] порций</span>
</div>
</div>

<div class="recipe-full-image">
{image-1}
</div>
</header>

<div class="recipe-full-content">
<section class="recipe-section">
<h2>Описание</h2>
{full-story}
</section>

<section class="recipe-section">
<h2>Ингредиенты</h2>
<div class="ingredients-list">
[xfvalue_ingredients]
</div>
</section>

<section class="recipe-section">
<h2>Приготовление</h2>
<div class="recipe-steps">
[xfvalue_recipe_steps]
</div>
</section>
</div>

<footer class="recipe-full-footer">
<div class="recipe-actions">
{favorites}
{addcomments}
</div>

<div class="recipe-tags">
{tags}
</div>
</footer>

<div class="recipe-comments">
{comments}
</div>
</article>
```

## 🔧 Создание дополнительных полей

### Через админ-панель DLE:

1. **Управление публикациями** → **Дополнительные поля**
2. Создайте следующие поля:

#### Время приготовления
- **Название поля:** cook_time
- **Тип поля:** Одна строка
- **Альтернативное имя:** Время приготовления (мин)
- **Значение по умолчанию:** 30

#### Калорийность
- **Название поля:** calories
- **Тип поля:** Одна строка
- **Альтернативное имя:** Калорийность (ккал)

#### Количество порций
- **Название поля:** servings
- **Тип поля:** Одна строка
- **Альтернативное имя:** Порций
- **Значение по умолчанию:** 2

#### Сложность
- **Название поля:** difficulty
- **Тип поля:** Список
- **Альтернативное имя:** Сложность
- **Варианты для списка:**
  ```
  Легкий
  Средний
  Сложный
  ```

#### Ингредиенты
- **Название поля:** ingredients
- **Тип поля:** Несколько строк
- **Альтернативное имя:** Ингредиенты

#### Шаги приготовления
- **Название поля:** recipe_steps
- **Тип поля:** Несколько строк
- **Альтернативное имя:** Этапы приготовления

## 📂 Структура категорий


1. **Первые блюда** (slug: pervye-blyuda)
   - Супы классические
   - Холодные супы
   - Крем-супы

2. **Вторые блюда** (slug: vtorye-blyuda)
   - Мясные блюда
   - Рыбные блюда
   - Овощные блюда

3. **Салаты** (slug: salaty)
   - Овощные салаты
   - Мясные салаты
   - Праздничные салаты

4. **Десерты** (slug: deserty)
   - Торты
   - Печенье
   - Фруктовые десерты

## 🎨 Настройка меню категорий


```html
<a href="/pervye-blyuda/" class="nav-category">
<svg>...</svg>
cd /home/project && npm_config_yes=true cat > dle-template/INTEGRATION_GUIDE.md << 'EOF'
# Руководство по интеграции шаблона EdaGuru в DLE

## 🎯 Быстрый старт

### Шаг 1: Установка шаблона

1. Загрузите папку `dle-template` на ваш сервер
2. Переименуйте папку в название вашего шаблона (например: `edaguru`)
3. Скопируйте в `/templates/edaguru/`

### Шаг 2: Активация шаблона

1. Войдите в админ-панель DLE
2. Перейдите: **Шаблоны** → **Управление шаблонами**
3. Выберите `edaguru` как основной шаблон
4. Сохраните изменения

## 📝 Создание дополнительных шаблонов

### Шаблон карточки рецепта (shortstory.tpl)


```html
<div class="recipe-card">
<div class="recipe-card-image">
{image-1}
<div class="recipe-category-badge">{link-category}</div>

<button class="recipe-like-btn">
<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
</svg>
</button>
</div>

<div class="recipe-card-content">
<h3 class="recipe-card-title">{title}</h3>
<p class="recipe-card-description">{short-story limit="120"}</p>

<div class="recipe-card-meta">
<div class="meta-tag time">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<circle cx="12" cy="12" r="10"></circle>
<polyline points="12 6 12 12 16 14"></polyline>
</svg>
<span>[xfvalue_cook_time] мин</span>
</div>
<div class="meta-tag calories">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M8.5 14.5A2.5 2.5 0 0 0 11 12c0-1.38-.5-2-1-3-1.072-2.143-.224-4.054 2-6 .5 2.5 2 4.9 4 6.5 2 1.6 3 3.5 3 5.5a7 7 0 1 1-14 0c0-1.153.433-2.294 1-3a2.5 2.5 0 0 0 2.5 2.5z"></path>
</svg>
<span>[xfvalue_calories] ккал</span>
</div>
</div>

<div class="recipe-card-footer">
<div class="recipe-card-stats">
<div class="recipe-stat">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
</svg>
<span>{favorites}</span>
</div>
<div class="recipe-stat">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
</svg>
<span>{comments-num}</span>
</div>
</div>

<a href="{full-link}" class="recipe-view-btn">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path>
<path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path>
</svg>
</a>
</div>
</div>
</div>
```

### Полный рецепт (fullstory.tpl)


```html
<article class="recipe-full">
<header class="recipe-full-header">
<div class="breadcrumbs">{speedbar}</div>

<h1 class="recipe-full-title">{title}</h1>

<div class="recipe-full-meta">
<div class="meta-tag time">
<svg>...</svg>
<span>[xfvalue_cook_time] мин</span>
</div>
<div class="meta-tag calories">
<svg>...</svg>
<span>[xfvalue_calories] ккал</span>
</div>
<div class="meta-tag servings">
<svg>...</svg>
<span>[xfvalue_servings] порций</span>
</div>
</div>

<div class="recipe-full-image">
{image-1}
</div>
</header>

<div class="recipe-full-content">
<section class="recipe-section">
<h2>Описание</h2>
{full-story}
</section>

<section class="recipe-section">
<h2>Ингредиенты</h2>
<div class="ingredients-list">
[xfvalue_ingredients]
</div>
</section>

<section class="recipe-section">
<h2>Приготовление</h2>
<div class="recipe-steps">
[xfvalue_recipe_steps]
</div>
</section>
</div>

<footer class="recipe-full-footer">
<div class="recipe-actions">
{favorites}
{addcomments}
</div>

<div class="recipe-tags">
{tags}
</div>
</footer>

<div class="recipe-comments">
{comments}
</div>
</article>
```

## 🔧 Создание дополнительных полей

### Через админ-панель DLE:

1. **Управление публикациями** → **Дополнительные поля**
2. Создайте следующие поля:

#### Время приготовления
- **Название поля:** cook_time
- **Тип поля:** Одна строка
- **Альтернативное имя:** Время приготовления (мин)
- **Значение по умолчанию:** 30

#### Калорийность
- **Название поля:** calories
- **Тип поля:** Одна строка
- **Альтернативное имя:** Калорийность (ккал)

#### Количество порций
- **Название поля:** servings
- **Тип поля:** Одна строка
- **Альтернативное имя:** Порций
- **Значение по умолчанию:** 2

#### Сложность
- **Название поля:** difficulty
- **Тип поля:** Список
- **Альтернативное имя:** Сложность
- **Варианты для списка:**
  ```
  Легкий
  Средний
  Сложный
  ```

#### Ингредиенты
- **Название поля:** ingredients
- **Тип поля:** Несколько строк
- **Альтернативное имя:** Ингредиенты

#### Шаги приготовления
- **Название поля:** recipe_steps
- **Тип поля:** Несколько строк
- **Альтернативное имя:** Этапы приготовления

## 📂 Структура категорий


1. **�</a>�ервые блюда** (slug: pervye-blyuda)
   - Супы классические
   - Холодные супы
   - Крем-супы

2. **Вторые блюда** (slug: vtorye-blyuda)
   - Мясные блюда
   - Рыбные блюда
   - Овощные блюда

3. **Салаты** (slug: salaty)
   - Овощные салаты
   - Мясные салаты
   - Праздничные салаты

4. **Десерты** (slug: deserty)
   - Торты
   - Печенье
   - Фруктовые десерты

## 🎨 Настройка меню категорий


```html
<a href="/pervye-blyuda/" class="nav-category">
<svg>...</svg>

<a href="/vtorye-blyuda/" class="nav-category">
<svg>...</svg>
cd /home/project && npm_config_yes=true cat > dle-template/INTEGRATION_GUIDE.md << 'EOF'
# Руководство по интеграции шаблона EdaGuru в DLE

## 🎯 Быстрый старт

### Шаг 1: Установка шаблона

1. Загрузите папку `dle-template` на ваш сервер
2. Переименуйте папку в название вашего шаблона (например: `edaguru`)
3. Скопируйте в `/templates/edaguru/`

### Шаг 2: Активация шаблона

1. Войдите в админ-панель DLE
2. Перейдите: **Шаблоны** → **Управление шаблонами**
3. Выберите `edaguru` как основной шаблон
4. Сохраните изменения

## 📝 Создание дополнительных шаблонов

### Шаблон карточки рецепта (shortstory.tpl)


```html
<div class="recipe-card">
<div class="recipe-card-image">
{image-1}
<div class="recipe-category-badge">{link-category}</div>

<button class="recipe-like-btn">
<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
</svg>
</button>
</div>

<div class="recipe-card-content">
<h3 class="recipe-card-title">{title}</h3>
<p class="recipe-card-description">{short-story limit="120"}</p>

<div class="recipe-card-meta">
<div class="meta-tag time">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<circle cx="12" cy="12" r="10"></circle>
<polyline points="12 6 12 12 16 14"></polyline>
</svg>
<span>[xfvalue_cook_time] мин</span>
</div>
<div class="meta-tag calories">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M8.5 14.5A2.5 2.5 0 0 0 11 12c0-1.38-.5-2-1-3-1.072-2.143-.224-4.054 2-6 .5 2.5 2 4.9 4 6.5 2 1.6 3 3.5 3 5.5a7 7 0 1 1-14 0c0-1.153.433-2.294 1-3a2.5 2.5 0 0 0 2.5 2.5z"></path>
</svg>
<span>[xfvalue_calories] ккал</span>
</div>
</div>

<div class="recipe-card-footer">
<div class="recipe-card-stats">
<div class="recipe-stat">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
</svg>
<span>{favorites}</span>
</div>
<div class="recipe-stat">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
</svg>
<span>{comments-num}</span>
</div>
</div>

<a href="{full-link}" class="recipe-view-btn">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path>
<path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path>
</svg>
</a>
</div>
</div>
</div>
```

### Полный рецепт (fullstory.tpl)


```html
<article class="recipe-full">
<header class="recipe-full-header">
<div class="breadcrumbs">{speedbar}</div>

<h1 class="recipe-full-title">{title}</h1>

<div class="recipe-full-meta">
<div class="meta-tag time">
<svg>...</svg>
<span>[xfvalue_cook_time] мин</span>
</div>
<div class="meta-tag calories">
<svg>...</svg>
<span>[xfvalue_calories] ккал</span>
</div>
<div class="meta-tag servings">
<svg>...</svg>
<span>[xfvalue_servings] порций</span>
</div>
</div>

<div class="recipe-full-image">
{image-1}
</div>
</header>

<div class="recipe-full-content">
<section class="recipe-section">
<h2>Описание</h2>
{full-story}
</section>

<section class="recipe-section">
<h2>Ингредиенты</h2>
<div class="ingredients-list">
[xfvalue_ingredients]
</div>
</section>

<section class="recipe-section">
<h2>Приготовление</h2>
<div class="recipe-steps">
[xfvalue_recipe_steps]
</div>
</section>
</div>

<footer class="recipe-full-footer">
<div class="recipe-actions">
{favorites}
{addcomments}
</div>

<div class="recipe-tags">
{tags}
</div>
</footer>

<div class="recipe-comments">
{comments}
</div>
</article>
```

## 🔧 Создание дополнительных полей

### Через админ-панель DLE:

1. **Управление публикациями** → **Дополнительные поля**
2. Создайте следующие поля:

#### Время приготовления
- **Название поля:** cook_time
- **Тип поля:** Одна строка
- **Альтернативное имя:** Время приготовления (мин)
- **Значение по умолчанию:** 30

#### Калорийность
- **Название поля:** calories
- **Тип поля:** Одна строка
- **Альтернативное имя:** Калорийность (ккал)

#### Количество порций
- **Название поля:** servings
- **Тип поля:** Одна строка
- **Альтернативное имя:** Порций
- **Значение по умолчанию:** 2

#### Сложность
- **Название поля:** difficulty
- **Тип поля:** Список
- **Альтернативное имя:** Сложность
- **Варианты для списка:**
  ```
  Легкий
  Средний
  Сложный
  ```

#### Ингредиенты
- **Название поля:** ingredients
- **Тип поля:** Несколько строк
- **Альтернативное имя:** Ингредиенты

#### Шаги приготовления
- **Название поля:** recipe_steps
- **Тип поля:** Несколько строк
- **Альтернативное имя:** Этапы приготовления

## 📂 Структура категорий


1. **Первые блюда** (slug: pervye-blyuda)
   - Супы классические
   - Холодные супы
   - Крем-супы

2. **Вторые блюда** (slug: vtorye-blyuda)
   - Мясные блюда
   - Рыбные блюда
   - Овощные блюда

3. **Салаты** (slug: salaty)
   - Овощные салаты
   - Мясные салаты
   - Праздничные салаты

4. **Десерты** (slug: deserty)
   - Торты
   - Печенье
   - Фруктовые десерты

## 🎨 Настройка меню категорий


```html
<a href="/pervye-blyuda/" class="nav-category">
<svg>...</svg>
cd /home/project && npm_config_yes=true cat > dle-template/INTEGRATION_GUIDE.md << 'EOF'
# Руководство по интеграции шаблона EdaGuru в DLE

## 🎯 Быстрый старт

### Шаг 1: Установка шаблона

1. Загрузите папку `dle-template` на ваш сервер
2. Переименуйте папку в название вашего шаблона (например: `edaguru`)
3. Скопируйте в `/templates/edaguru/`

### Шаг 2: Активация шаблона

1. Войдите в админ-панель DLE
2. Перейдите: **Шаблоны** → **Управление шаблонами**
3. Выберите `edaguru` как основной шаблон
4. Сохраните изменения

## 📝 Создание дополнительных шаблонов

### Шаблон карточки рецепта (shortstory.tpl)


```html
<div class="recipe-card">
<div class="recipe-card-image">
{image-1}
<div class="recipe-category-badge">{link-category}</div>

<button class="recipe-like-btn">
<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
</svg>
</button>
</div>

<div class="recipe-card-content">
<h3 class="recipe-card-title">{title}</h3>
<p class="recipe-card-description">{short-story limit="120"}</p>

<div class="recipe-card-meta">
<div class="meta-tag time">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<circle cx="12" cy="12" r="10"></circle>
<polyline points="12 6 12 12 16 14"></polyline>
</svg>
<span>[xfvalue_cook_time] мин</span>
</div>
<div class="meta-tag calories">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M8.5 14.5A2.5 2.5 0 0 0 11 12c0-1.38-.5-2-1-3-1.072-2.143-.224-4.054 2-6 .5 2.5 2 4.9 4 6.5 2 1.6 3 3.5 3 5.5a7 7 0 1 1-14 0c0-1.153.433-2.294 1-3a2.5 2.5 0 0 0 2.5 2.5z"></path>
</svg>
<span>[xfvalue_calories] ккал</span>
</div>
</div>

<div class="recipe-card-footer">
<div class="recipe-card-stats">
<div class="recipe-stat">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
</svg>
<span>{favorites}</span>
</div>
<div class="recipe-stat">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
</svg>
<span>{comments-num}</span>
</div>
</div>

<a href="{full-link}" class="recipe-view-btn">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path>
<path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path>
</svg>
</a>
</div>
</div>
</div>
```

### Полный рецепт (fullstory.tpl)


```html
<article class="recipe-full">
<header class="recipe-full-header">
<div class="breadcrumbs">{speedbar}</div>

<h1 class="recipe-full-title">{title}</h1>

<div class="recipe-full-meta">
<div class="meta-tag time">
<svg>...</svg>
<span>[xfvalue_cook_time] мин</span>
</div>
<div class="meta-tag calories">
<svg>...</svg>
<span>[xfvalue_calories] ккал</span>
</div>
<div class="meta-tag servings">
<svg>...</svg>
<span>[xfvalue_servings] порций</span>
</div>
</div>

<div class="recipe-full-image">
{image-1}
</div>
</header>

<div class="recipe-full-content">
<section class="recipe-section">
<h2>Описание</h2>
{full-story}
</section>

<section class="recipe-section">
<h2>Ингредиенты</h2>
<div class="ingredients-list">
[xfvalue_ingredients]
</div>
</section>

<section class="recipe-section">
<h2>Приготовление</h2>
<div class="recipe-steps">
[xfvalue_recipe_steps]
</div>
</section>
</div>

<footer class="recipe-full-footer">
<div class="recipe-actions">
{favorites}
{addcomments}
</div>

<div class="recipe-tags">
{tags}
</div>
</footer>

<div class="recipe-comments">
{comments}
</div>
</article>
```

## 🔧 Создание дополнительных полей

### Через админ-панель DLE:

1. **Управление публикациями** → **Дополнительные поля**
2. Создайте следующие поля:

#### Время приготовления
- **Название поля:** cook_time
- **Тип поля:** Одна строка
- **Альтернативное имя:** Время приготовления (мин)
- **Значение по умолчанию:** 30

#### Калорийность
- **Название поля:** calories
- **Тип поля:** Одна строка
- **Альтернативное имя:** Калорийность (ккал)

#### Количество порций
- **Название поля:** servings
- **Тип поля:** Одна строка
- **Альтернативное имя:** Порций
- **Значение по умолчанию:** 2

#### Сложность
- **Название поля:** difficulty
- **Тип поля:** Список
- **Альтернативное имя:** Сложность
- **Варианты для списка:**
  ```
  Легкий
  Средний
  Сложный
  ```

#### Ингредиенты
- **Название поля:** ingredients
- **Тип поля:** Несколько строк
- **Альтернативное имя:** Ингредиенты

#### Шаги приготовления
- **Название поля:** recipe_steps
- **Тип поля:** Несколько строк
- **Альтернативное имя:** Этапы приготовления

## 📂 Структура категорий


1. **�</a>�ервые блюда** (slug: pervye-blyuda)
   - Супы классические
   - Холодные супы
   - Крем-супы

2. **�</a>�торые блюда** (slug: vtorye-blyuda)
   - Мясные блюда
   - Рыбные блюда
   - Овощные блюда

3. **Салаты** (slug: salaty)
   - Овощные салаты
   - Мясные салаты
   - Праздничные салаты

4. **Десерты** (slug: deserty)
   - Торты
   - Печенье
   - Фруктовые десерты

## 🎨 Настройка меню категорий


```html
<a href="/pervye-blyuda/" class="nav-category">
<svg>...</svg>

<a href="/vtorye-blyuda/" class="nav-category">
<svg>...</svg>

<!-- ... остальные категории ... -->
```

## 🖼️ Загрузка изображений

### Обязательные изображения:

1. **favicon.ico** → `/templates/edaguru/images/`
2. **touch-icon-iphone.png** (120x120) → `/templates/edaguru/images/`
3. **touch-icon-ipad.png** (76x76) → `/templates/edaguru/images/`
4. **touch-icon-iphone-retina.png** (120x120) → `/templates/edaguru/images/`
5. **touch-icon-ipad-retina.png** (152x152) → `/templates/edaguru/images/`

### Изображения для виджетов:

**Ингредиенты** (загрузите в `/uploads/ingredients/`):
- meat.jpg (мясо)
- chicken.jpg (птица)
- fish.jpg (рыба)
- seafood.jpg (морепродукты)
- eggs.jpg (яйца)
- dairy.jpg (молочные)
- vegetables.jpg (овощи)
- fruits.jpg (фрукты)
- grains.jpg (крупы)
- mushrooms.jpg (грибы)

**Кухни мира** (загрузите в `/uploads/cuisines/`):
- eastern.jpg
- japanese.jpg
- georgian.jpg
- italian.jpg

## ⚡ Оптимизация

### Кеширование


```php
{custom days="30" template="shortstory" limit="6" cache="yes"}
```


### Сжатие CSS/JS

- `style.css` → `style.min.css`
- `script.js` → `script.min.js`


## 🔍 SEO настройки

### В каждой категории настройте:

1. **SEO заголовок**
2. **SEO описание**
3. **SEO ключевые слова**
4. **URL (ЧПУ)**: используйте транслит

### Для новостей:

1. Заполняйте **краткое описание** (short-story)
2. Используйте **alt-теги** для изображений
3. Добавляйте **теги** к каждому рецепту

## 📱 Проверка адаптивности

- iPhone (Safari)
- Android (Chrome)
- iPad (Safari)
- Desktop (Chrome, Firefox, Safari, Edge)

## ✅ Чеклист запуска

- [ ] Шаблон установлен и активирован
- [ ] Созданы файлы shortstory.tpl и fullstory.tpl
- [ ] Созданы дополнительные поля
- [ ] Настроены категории
- [ ] Загружены изображения (favicon, иконки)
- [ ] Загружены изображения для виджетов
- [ ] Обновлены ссылки в меню
- [ ] Создано несколько тестовых рецептов
- [ ] Проверена адаптивность
- [ ] Настроен SEO

## 🎉 Готово!


---

**Нужна помощь?** Проверьте документацию DLE или обратитесь в поддержку.
