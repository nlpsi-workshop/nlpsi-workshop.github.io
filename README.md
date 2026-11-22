

# NLPSI Workshop: Integrating NLP and Psychology to Study Social Interactions  

Repository for website: [https://nlpsi-workshop.github.io](https://nlpsi-workshop.github.io)  

## Editing  

The website is built automatically when you push or update the pages directly in GitHub. Always make edits in the `main` branch. The `gh-pages` branch is automatically generated and deployed.  

- To create a new page (e.g., Accepted Papers), create a `.md` file in the `_pages` folder.  
- To publish news updates or announcements, create a `.md` file as `_news/announcement_<n>.md`. Only the three latest news items will be displayed.  

## Archive Old Versions of the Workshop  

Do this when the next edition is announced, **before** replacing any content, so the archive captures the edition that just ended. In the steps below, `<year>` is the year of the edition you are archiving.

1. **Install the dependencies** (once per machine).  
    ```bash
    bundle install
    ```

2. **Build the archive.**  
    ```bash
    bin/archive_edition.sh <year>
    ```
   This builds the site with `--baseurl /<year>`, so every link and image points inside the archive (e.g. `/<year>/schedule/`), and saves it in the folder `<year>/`. Older archives are not copied into it. The build takes several minutes.  
   If `bundle` is broken on your machine, use a working one, e.g. `BUNDLE=bundle3.2 bin/archive_edition.sh <year>`.

3. **Add it to the "Past Editions" menu** in `_pages/drowpdown.md`. Add a new entry at the top of `children:` (newest year first), using the full URL:  
    ```yaml
    children:
      - title: "<year>"
        permalink: https://nlpsi-workshop.github.io/<year>/
      # ...existing entries for earlier years stay below
    ```

4. **Commit and push.** The archive will then be live at `https://nlpsi-workshop.github.io/<year>/`.

**Keeping archives working:** for links to site pages or images in templates and pages, use `{{ '/path/' | relative_url }}` rather than `/path/` or `https://nlpsi-workshop.github.io/path/`. Otherwise the archived copy links to the current site instead of itself. Archived editions automatically get a "Current Edition" link in their menu.
  

---
