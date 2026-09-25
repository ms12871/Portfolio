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

1. Create a public GitHub repository for the portfolio.
2. Add `index.html` and this `README.md` to the repository's root directory.
3. In the repository, open **Settings → Pages**.
4. Under **Build and deployment**, choose **Deploy from a branch**.
5. Select the `main` branch and the `/ (root)` folder, then select **Save**.
6. Wait for the deployment to finish. GitHub will show the published website URL in **Settings → Pages**.

The site entry point must remain named `index.html` and be in the published folder.

GitHub Pages serves `404.html` automatically for missing pages. The Open Graph preview uses `og-image.png`; when sharing the published site, set an absolute image URL in `index.html` if your host requires one.

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
