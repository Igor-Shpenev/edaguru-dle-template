<!DOCTYPE html>
<html lang="ru">
<head>
{headers}
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, width=device-width"> 
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">

<link rel="shortcut icon" href="{THEME}/images/favicon.ico">
<link rel="apple-touch-icon" href="{THEME}/images/touch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="76x76" href="{THEME}/images/touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="120x120" href="{THEME}/images/touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="152x152" href="{THEME}/images/touch-icon-ipad-retina.png">

<link href="{THEME}/css/style.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="page-wrapper">
<!-- Header -->
<header class="site-header">
<div class="container">
<!-- Top Bar -->
<div class="header-top">
<!-- Logo -->
<div class="logo">
<a href="/" class="logo-link">
<div class="logo-icon">
<span>E</span>
</div>
<div class="logo-text">
<h1>EdaGuru</h1>
<p class="logo-subtitle">Кулинарный властелин</p>
</div>
</a>
</div>

<!-- Search Bar - Desktop -->
<div class="search-bar desktop-only">
<form action="" method="post">
<input type="hidden" name="do" value="search">
<input type="hidden" name="subaction" value="search">
<div class="search-input-wrapper">
<svg class="search-icon" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<circle cx="11" cy="11" r="8"></circle>
<path d="m21 21-4.35-4.35"></path>
</svg>
<input type="text" name="story" placeholder="Поиск рецептов..." class="search-input">
</div>
</form>
</div>

<!-- Auth Buttons / Profile -->
<div class="header-actions desktop-only">
{login}
</div>

<!-- Mobile Actions -->
<div class="mobile-actions mobile-only">
<button class="icon-btn" id="mobile-search-btn">
<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<circle cx="11" cy="11" r="8"></circle>
<path d="m21 21-4.35-4.35"></path>
</svg>
</button>
<button class="icon-btn" id="mobile-menu-btn">
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<line x1="3" y1="12" x2="21" y2="12"></line>
<line x1="3" y1="6" x2="21" y2="6"></line>
<line x1="3" y1="18" x2="21" y2="18"></line>
</svg>
</button>
</div>

<!-- Desktop Add Recipe Button -->
<button class="btn-primary desktop-only">
<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<line x1="12" y1="5" x2="12" y2="19"></line>
<line x1="5" y1="12" x2="19" y2="12"></line>
</svg>
<span>Добавить рецепт</span>
</button>
</div>

<!-- Mobile Search Bar -->
<div class="mobile-search mobile-only" id="mobile-search" style="display: none;">
<form action="" method="post">
<input type="hidden" name="do" value="search">
<input type="hidden" name="subaction" value="search">
<div class="search-input-wrapper">
<svg class="search-icon" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<circle cx="11" cy="11" r="8"></circle>
<path d="m21 21-4.35-4.35"></path>
</svg>
<input type="text" name="story" placeholder="Поиск рецептов..." class="search-input">
</div>
</form>
</div>

<!-- Navigation - Desktop -->
<nav class="main-nav desktop-only">
<div class="nav-categories">
{include file="engine/modules/categories_menu.tpl"}
</div>

<!-- Quick Filters -->
<div class="quick-filters">
<span class="filter-label">Быстрые фильтры:</span>
<a href="#" class="filter-tag">До 30 мин</a>
<a href="#" class="filter-tag">Простые</a>
<a href="#" class="filter-tag">ПП</a>
<a href="#" class="filter-tag">Вегетарианские</a>
<a href="#" class="filter-tag">Без духовки</a>
</div>
</nav>

<!-- Mobile Menu -->
<div class="mobile-menu mobile-only" id="mobile-menu" style="display: none;">
<div class="mobile-filters">
<span class="filter-label">Фильтры:</span>
<div class="filter-tags">
<a href="#" class="filter-tag">До 30 мин</a>
<a href="#" class="filter-tag">Простые</a>
<a href="#" class="filter-tag">ПП</a>
<a href="#" class="filter-tag">Вегетарианские</a>
<a href="#" class="filter-tag">Без духовки</a>
</div>
</div>
<div class="mobile-categories">
{include file="engine/modules/categories_menu_mobile.tpl"}
</div>
<div class="mobile-auth">
{login}
</div>
</div>
</div>
</header>

<!-- Main Content -->
<main class="main-content">
<div class="container">
<!-- Breadcrumbs -->
[not-available=main]
<div class="breadcrumbs">
{speedbar}
</div>
[/not-available]

{info}

<!-- Two Column Layout -->
<div class="content-layout">
<!-- Left Sidebar -->
<aside class="sidebar-left">
<!-- Cook Today Block -->
{include file="engine/modules/cook_today.tpl"}

<!-- Popular Recipes with Tabs -->
{include file="engine/modules/popular_recipes.tpl"}

<!-- Quick Recipes -->
{include file="engine/modules/quick_recipes.tpl"}
</aside>

<!-- Main Content Area -->
<div class="content-main">
<!-- Recipe of the Day - Only on Main Page -->
[available=main]
<section class="recipe-of-day">
{custom days="1" template="recipe_of_day" limit="1" cache="yes"}
</section>

<!-- SEO Block -->
<section class="seo-block">
<div class="seo-card">
<h2 class="seo-title">🍳 Добро пожаловать в EdaGuru</h2>
<p class="seo-text">
</p>
<div class="seo-stats">
<div class="stat-item">
<div class="stat-number">2,500+</div>
<div class="stat-label">Рецептов</div>
</div>
<div class="stat-item">
<div class="stat-number">150+</div>
<div class="stat-label">Категорий</div>
</div>
<div class="stat-item">
<div class="stat-number">50K+</div>
<div class="stat-label">Пользователей</div>
</div>
</div>
</div>
</section>
[/available]

<!-- New Recipes -->
[available=main]
<section class="recipes-section">
<div class="section-header">
<div class="section-title">
<svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" class="title-icon">
<circle cx="12" cy="12" r="10"></circle>
<polyline points="12 6 12 12 16 14"></polyline>
</svg>
<h2>Новые рецепты</h2>
</div>
<a href="/recipes/" class="view-all">Смотреть все →</a>
</div>

<div class="recipes-grid">
{custom days="30" template="shortstory" limit="6" order="date" cache="yes"}
</div>
</section>
[/available]

<!-- World Cuisines -->
[available=main]
{include file="engine/modules/world_cuisines.tpl"}
[/available]

<!-- Best Recipes -->
[available=main]
<section class="recipes-section">
<div class="section-header">
<div class="section-title">
<svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" class="title-icon">
<polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
</svg>
<h2>Лучшие рецепты</h2>
</div>
<a href="/top/" class="view-all">Смотреть все →</a>
</div>

<div class="recipes-grid-compact">
{custom days="120" template="shortstory_compact" limit="4" sort="rating" cache="yes"}
</div>
</section>
[/available]

<!-- Content for other pages -->
[not-available=main]
<section class="content-area">
{content}
</section>
[/not-available]
</div>
</div>
</div>
</main>

<!-- Footer -->
<footer class="site-footer">
<div class="container">
<div class="footer-content">
<!-- Mobile: Logo and Description -->
<div class="footer-logo mobile-only">
<div class="logo-icon">
<span>E</span>
</div>
<h3>EdaGuru</h3>
<p>Ваш проводник в мир кулинарного искусства</p>
</div>

<!-- Desktop: Logo and Description -->
<div class="footer-column desktop-only">
<h3>EdaGuru</h3>
<p>Ваш проводник в мир кулинарного искусства</p>
</div>

<div class="footer-column">
<h4>Категории</h4>
<ul>
<li><a href="/category/pervye-blyuda/">Первые блюда</a></li>
<li><a href="/category/vtorye-blyuda/">Вторые блюда</a></li>
<li><a href="/category/salaty/">Салаты</a></li>
<li><a href="/category/deserty/">Десерты</a></li>
</ul>
</div>

<div class="footer-column">
<h4>Информация</h4>
<ul>
<li><a href="/about/">О нас</a></li>
<li><a href="/contacts/">Контакты</a></li>
<li><a href="/advertising/">Реклама</a></li>
<li><a href="/rules/">Правила</a></li>
</ul>
</div>

<div class="footer-column">
<h4>Социальные сети</h4>
<ul>
<li><a href="#">ВКонтакте</a></li>
<li><a href="#">Телеграм</a></li>
<li><a href="#">YouTube</a></li>
<li><a href="#">Instagram</a></li>
</ul>
</div>
</div>

<div class="footer-bottom">
<p>© 2025 EdaGuru.ru - Все права защищены</p>
</div>
</div>
</footer>
</div>

{AJAX}
<script src="{THEME}/js/script.js"></script>
</body>
</html>
