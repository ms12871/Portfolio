# Md Zafar Sadak — Portfolio

A responsive, single-page portfolio website built with plain HTML, CSS, and JavaScript. No build tools, package installation, or backend are required.

## Included files

- `index.html` — the portfolio website.
- `resume.pdf` — a downloadable résumé.
- `favicon.svg` — the browser-tab icon.
- `og-image.png` — the social-sharing preview image.
- `404.html` — a custom not-found page for GitHub Pages.
- `scripts/generate-assets.swift` — regenerates the résumé PDF and social image on macOS.

## Preview locally

Open `index.html` in a web browser, or run a local web server from this folder:

```bash
python3 -m http.server 8000
```

Then visit <http://localhost:8000>.

## Publish with GitHub Pages

Public URL: https://ms12871.github.io/Portfolio/


## Regenerate the résumé and social image

On macOS with Swift installed, run this from the project folder:

```bash
swift scripts/generate-assets.swift
```

## Customize the portfolio

- Edit the page content, project descriptions, skills, and education directly in `index.html`.
- Update the `mailto:`, phone, LinkedIn, and GitHub links if your contact details change.
- The page uses Google Fonts when a network connection is available; system fallback fonts are defined in the stylesheet.
- Project filters, expandable project details, the theme toggle, and mobile navigation are implemented in the page itself.
