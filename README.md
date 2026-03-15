# Achter de Schermen van SAFe® Transformaties — Static Website

A professional, responsive static website for the SAFe article series by Roel Peels, built with Major Milestones brand colors and ready for GitHub Pages deployment.

## Files

- **index.html** — Meta-refresh redirect to artikelen.html
- **artikelen.html** — Main articles overview page with 43 articles across 9 categories
- **boek-alert.html** — Lead generation form for book notifications
- **artikelen/** — Directory for PDF files (use URL-encoded filenames with spaces)

## Features

- **Fully Responsive Design** — Mobile-first, tested on all screen sizes
- **Major Milestones Branding** — Complete MM huisstijl with official brand colors
- **No External Dependencies** — All CSS inline, vanilla JavaScript
- **PDF Download Links** — Properly URL-encoded for filenames with spaces
- **Form Integration** — FormSubmit.co backend for lead capture
- **Smooth Scrolling** — Navigation with category jump links
- **GitHub Pages Ready** — Single-file design, no build step required

## Brand Colors

- Dark Olive: `#3D4A1A` (headers, titles)
- Lime: `#BFCF3A` (accents, buttons)
- Mid Olive: `#5A6B2A` (subtitles)
- Light Olive: `#7A8C3A` (hover states)
- Lime Light: `#D4E05A` (highlights)
- Cream: `#F5F3E8` (light backgrounds)
- Dark BG: `#2A3312` (hero, footer)
- Font: Arial, sans-serif

## PDF File Organization

Place PDF files in the `artikelen/` subdirectory. Use URL-encoded filenames in href attributes:

```html
<a href="artikelen/005%20250820%20SAFe%20Jargon%2030%20termen%20ontcijferd%20-MAJMILES.pdf">Download</a>
```

## Deployment to GitHub Pages

1. Create a new GitHub repository
2. Clone locally: `git clone <repo-url>`
3. Copy all files to the repository
4. Commit and push: `git add . && git commit -m "Initial commit" && git push`
5. Enable GitHub Pages in repository settings (Settings → Pages → Deploy from main branch)
6. Site will be live at `https://yourusername.github.io/repo-name/`

## Form Configuration

The contact form uses FormSubmit.co and sends to:
```
safe-boek@majormilestones.nl
```

To change the email recipient, update the `action` attribute in the form:
```html
<form ... action="https://formsubmit.co/your-email@example.com">
```

## Browser Support

- Chrome, Firefox, Safari, Edge (latest versions)
- Mobile browsers (iOS Safari, Chrome Mobile)
- IE11+ with graceful degradation

## Customization

All styling is inline in `<style>` tags. To customize:
- Brand colors: Search and replace hex values
- Fonts: Modify the `font-family` in `body` CSS
- Articles: Add new `<article class="article-card">` elements
- Categories: Add new sections with `<section class="category-section">`

## Stats

- **43 Articles** across 9 themed categories
- **222+ Pages** of content
- **1,863 lines** of clean, semantic HTML
- **No external requests** except PDF downloads and form submission

---

Built for Major Milestones B.V. by Claude Code | SAFe® is a registered trademark of Scaled Agile, Inc.
