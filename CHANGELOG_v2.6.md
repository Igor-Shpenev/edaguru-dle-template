# Changelog v2.6

## Дата: 29 ноября 2024

### Изменения в выпадающем меню "Еще"

#### 1. Очищено содержимое меню "Еще"
- Удалены все подкатегории из выпадающего меню "Еще"
- Меню готово для динамического заполнения через JavaScript

#### 2. Исправлено поведение hover для выпадающих меню
- **Главное меню "Еще":**
  - Добавлен невидимый "мостик" (::before) высотой 10px между кнопкой и меню
  - Меню больше не исчезает при движении курсора от кнопки к меню
  - Убран JavaScript hover для desktop - теперь только CSS

- **Подменю (submenu):**
  - Добавлен невидимый "мостик" (::before) шириной 10px между пунктом меню и подменю
  - Подменю больше не исчезает при движении курсора
  - Добавлен селектор `.dropdown-submenu:hover` для сохранения видимости

#### 3. Изменена иконка меню "Еще"
- Заменена текстовая иконка "⋯" на SVG с тремя кругами
- Более четкое и современное отображение

### Измененные файлы:
- `engine/modules/categories_menu.tpl` - очищено содержимое меню "Еще", обновлена иконка
- `css/style.css` - исправлены стили для .dropdown-menu и .dropdown-submenu
- `js/script.js` - убран JavaScript hover для desktop, оставлен только для mobile

### Технические детали:

**CSS изменения:**
```css
/* Главное выпадающее меню */
.dropdown-menu::before {
  content: '';
  position: absolute;
  top: -10px;
  left: 0;
  right: 0;
  height: 10px;
  background: transparent;
}

/* Подменю */
.dropdown-submenu::before {
  content: '';
  position: absolute;
  left: 100%;
  top: 0;
  bottom: 0;
  width: 10px;
  background: transparent;
}

.dropdown-item:hover .dropdown-submenu,
.dropdown-submenu:hover {
  display: block;
  animation: fadeInLeft 0.2s ease;
}
```

### Совместимость:
- ✅ Все браузеры (Chrome, Firefox, Safari, Edge)
- ✅ Desktop и Mobile версии
- ✅ Обратная совместимость с предыдущими версиями шаблона

### Инструкции по обновлению:
Замените следующие файлы из архива:
1. `engine/modules/categories_menu.tpl`
2. `css/style.css`
3. `js/script.js`
