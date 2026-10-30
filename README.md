# Naija FC Columbus

Website for Naija FC Columbus, a Nigerian football club in Columbus, Ohio.

> One Team. Many Backgrounds. One Naija.

## Structure

The whole site is a single file, `index.html`, with pages for Home, About, Gallery (Photos / Videos), Community, Join Us and the Club Constitution. Club photos go in `images/` (see `images/README.md` for file names).

## Things to update in `index.html`

Near the bottom of the file, in the `<script>` block:

- `SOCIALS`: replace the placeholder links with the club's real Instagram, Facebook, YouTube, TikTok and X accounts.
- `FORM_ENDPOINT`: set to a form service URL (for example Formspree) so the contact form delivers messages.
- `PHOTOS` / `VIDEOS`: titles, categories and durations shown in the galleries.

## Publishing with GitHub Pages

Settings → Pages → Source: "Deploy from a branch" → Branch: `main`, folder `/ (root)`. The site will be live at `https://ikecobe5.github.io/Naija-fc/`.
