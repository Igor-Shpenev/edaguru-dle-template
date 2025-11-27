<div class="widget">
<div class="popular-tabs">
<button class="popular-tab active" data-target="popular">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<polyline points="23 6 13.5 15.5 8.5 10.5 1 18"></polyline>
<polyline points="17 6 23 6 23 12"></polyline>
</svg>
<span>Популярные</span>
</button>
<button class="popular-tab" data-target="discussed">
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor">
<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
</svg>
<span>Обсуждаемые</span>
</button>
</div>

<div class="popular-recipes-list" data-list="popular">
{custom days="30" template="popular_item" limit="5" sort="rating" cache="yes"}
</div>

<div class="popular-recipes-list" data-list="discussed" style="display: none;">
{custom days="30" template="popular_item" limit="5" sort="comments" cache="yes"}
</div>
</div>
