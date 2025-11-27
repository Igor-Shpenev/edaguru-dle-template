/**
 * EdaGuru DLE Template Scripts
 */
document.addEventListener('DOMContentLoaded', function() {
// Mobile Menu Toggle
const mobileMenuBtn = document.getElementById('mobile-menu-btn');
const mobileMenu = document.getElementById('mobile-menu');
if (mobileMenuBtn && mobileMenu) {
mobileMenuBtn.addEventListener('click', function() {
if (mobileMenu.style.display === 'none' || !mobileMenu.style.display) {
mobileMenu.style.display = 'block';
} else {
mobileMenu.style.display = 'none';
}
});
}
// Mobile Search Toggle
const mobileSearchBtn = document.getElementById('mobile-search-btn');
const mobileSearch = document.getElementById('mobile-search');
if (mobileSearchBtn && mobileSearch) {
mobileSearchBtn.addEventListener('click', function() {
if (mobileSearch.style.display === 'none' || !mobileSearch.style.display) {
mobileSearch.style.display = 'block';
mobileSearch.querySelector('input').focus();
} else {
mobileSearch.style.display = 'none';
}
});
}

// Dropdown Menu
const dropdownTrigger = document.querySelector('.dropdown-trigger');
const dropdownMenu = document.querySelector('.dropdown-menu');
if (dropdownTrigger && dropdownMenu) {
dropdownTrigger.addEventListener('click', function(e) {
e.preventDefault();
e.stopPropagation();
this.classList.toggle('active');
dropdownMenu.classList.toggle('active');
});
// Close dropdown when clicking outside
document.addEventListener('click', function(e) {
if (!dropdownTrigger.contains(e.target)) {
dropdownTrigger.classList.remove('active');
dropdownMenu.classList.remove('active');
}
});
// Prevent dropdown from closing when clicking inside
dropdownMenu.addEventListener('click', function(e) {
e.stopPropagation();
});
}

// Header Scroll Effect
let lastScroll = 0;
const header = document.querySelector('.site-header');
window.addEventListener('scroll', function() {
const currentScroll = window.pageYOffset;
if (currentScroll > 20) {
header.classList.add('scrolled');
} else {
header.classList.remove('scrolled');
}
lastScroll = currentScroll;
});
// Cook Today Widget
const cookTodayBtns = document.querySelectorAll('.cook-today-btn');
const cookTodaySelected = document.querySelector('.cook-today-selected strong');
cookTodayBtns.forEach(btn => {
btn.addEventListener('click', function() {
// Remove active class from all
cookTodayBtns.forEach(b => b.classList.remove('active'));
// Add active class to clicked
this.classList.add('active');
// Update selected text
if (cookTodaySelected) {
cookTodaySelected.textContent = this.getAttribute('data-meal');
}
});
});
// Popular Recipes Tabs
const popularTabs = document.querySelectorAll('.popular-tab');
popularTabs.forEach(tab => {
tab.addEventListener('click', function() {
const targetList = this.getAttribute('data-target');
// Remove active class from all tabs
popularTabs.forEach(t => t.classList.remove('active'));
// Add active to clicked
this.classList.add('active');
// Show/hide lists
const allLists = document.querySelectorAll('[data-list]');
allLists.forEach(list => {
if (list.getAttribute('data-list') === targetList) {
list.style.display = 'flex';
} else {
list.style.display = 'none';
}
});
});
});
// Like Button Animation
const likeBtns = document.querySelectorAll('.recipe-like-btn');
likeBtns.forEach(btn => {
btn.addEventListener('click', function(e) {
e.preventDefault();
e.stopPropagation();
const svg = this.querySelector('svg');
if (svg.style.fill === 'rgb(220, 38, 38)') {
svg.style.fill = 'none';
} else {
svg.style.fill = 'rgb(220, 38, 38)';
// Simple animation
this.style.transform = 'scale(1.2)';
setTimeout(() => {
this.style.transform = 'scale(1)';
}, 200);
}
});
});
// Smooth scroll for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
anchor.addEventListener('click', function (e) {
const href = this.getAttribute('href');
if (href !== '#') {
e.preventDefault();
const target = document.querySelector(href);
if (target) {
target.scrollIntoView({
behavior: 'smooth',
block: 'start'
});
}
}
});
});
// Close mobile menu on click outside
document.addEventListener('click', function(e) {
if (mobileMenu && mobileMenuBtn) {
if (!mobileMenu.contains(e.target) && !mobileMenuBtn.contains(e.target)) {
mobileMenu.style.display = 'none';
}
}
});
});
