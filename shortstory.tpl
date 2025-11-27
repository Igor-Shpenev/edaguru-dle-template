<div class="recipe-card">
<div class="recipe-card-image">
<a href="{full-link}">
{image-1}
</a>

<div class="recipe-category-badge">{link-category}</div>

<button class="recipe-like-btn" onclick="doFavorite('{news-id}', 'plus'); return false;">
<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
</svg>
</button>

[xfgiven_video]
<div class="recipe-video-badge">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<polygon points="5 3 19 12 5 21 5 3"></polygon>
</svg>
<span>Видео</span>
</div>
[xfvalue_video][/xfgiven_video]
</div>

<div class="recipe-card-content">
<h3 class="recipe-card-title">
<a href="{full-link}">{title}</a>
</h3>

<p class="recipe-card-description">{short-story limit="120"}</p>

<div class="recipe-card-meta">
[xfgiven_cook_time]<span>[xfvalue_cook_time]
<div class="meta-tag time">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<circle cx="12" cy="12" r="10"></circle>
<polyline points="12 6 12 12 16 14"></polyline>
</svg>
<span>{xfvalue_cook_time} мин</span>
</div>
</span>[/xfgiven_cook_time]

[xfgiven_calories][xfvalue_calories]
<div class="meta-tag calories">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M8.5 14.5A2.5 2.5 0 0 0 11 12c0-1.38-.5-2-1-3-1.072-2.143-.224-4.054 2-6 .5 2.5 2 4.9 4 6.5 2 1.6 3 3.5 3 5.5a7 7 0 1 1-14 0c0-1.153.433-2.294 1-3a2.5 2.5 0 0 0 2.5 2.5z"></path>
</svg>
<span>{xfvalue_calories} ккал</span>
</div>
[/xfgiven_calories]
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
