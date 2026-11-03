# Naija FC Columbus Constitution

Constitution, Rules & Regulations, Version 1.0 (plain-language edition).

| File | Use |
|---|---|
| `Naija-FC-Columbus-Constitution-Premium.pdf` | Emerald and ivory design, for sharing on screen (WhatsApp, email, website) |
| `Naija-FC-Columbus-Constitution-White-Cover.pdf` | **Official edition, chosen by the club.** Same inside pages as the Premium edition, with white (ivory) front and back covers |
| `Naija-FC-Columbus-Constitution-Print.pdf` | Same design on white paper, uses far less ink when printing |

All three editions have the same wording and the same 22 pages.

## Editing

The editable files are in `source/`:

- `constitution.html`: the wording of the Preamble and Articles I–XVII. Change the text here.
- `premium-head.html`: design, cover and contents page.
- `premium-tail.html`: Article XVIII (signature page), back cover, and the contents page numbers (`window.TOC_PAGES`).

To rebuild all three PDFs on Windows, open Git Bash in `source/` and run `./render.sh` (needs Google Chrome).
If a change moves articles to different pages, run `./toc.sh ../Naija-FC-Columbus-Constitution-Premium.pdf`
(needs `pdftotext`), paste the result into `window.TOC_PAGES` in `premium-tail.html`, and render again.

## On the website

Only the official White Cover edition is public. The Constitution page links to it:
`/constitution/Naija-FC-Columbus-Constitution-White-Cover.pdf`.
The Premium and Print editions and the `source/` folder are kept here on GitHub but blocked
on the website by the `.htaccess` files in this folder.
