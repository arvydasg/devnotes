;; Set the package installation directory so that packages aren't stored in the
;; ~/.emacs.d/elpa path.
(require 'package)
(setq package-user-dir (expand-file-name "./.packages"))
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

;; Initialize the package system
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(message "Package refresh complete!")

;; Install dependencies inside the ./packages directory
;; should install ONLY org-static-blog
(package-install 'org-static-blog)
(message "Package installation complete!")

;; stop making ~ files
(setq make-backup-files nil)

;; directories and urls
(setq org-static-blog-publish-title "arvydasg.github.io")
(setq org-static-blog-publish-url "https://arvydasg.github.io/devnotes/html")
(setq org-static-blog-publish-directory "~/GIT/devnotes/html")
(setq org-static-blog-posts-directory "~/GIT/devnotes/org")
(setq org-static-blog-drafts-directory "~/GIT/devnotes/drafts")
(setq org-static-blog-index-length 10)
(setq org-static-blog-preview-date-first-p nil)
(setq org-static-blog-use-preview t)
(setq org-static-blog-enable-tags t)
(setq org-static-blog-no-post-tag "NONPOST")
(setq org-static-blog-enable-deprecation-warning nil)
;; (setq org-export-with-toc nil)            ;can add in individual file with #+OPTIONS: toc:1/nil
;; (setq org-export-with-section-numbers nil) ;can add in individual file with
;; #+OPTIONS: num:nil
(setq org-static-blog-page-header
"<meta name=\"author\" content=\"Arvydas Gasparavicius\">
<meta name=\"referrer\" content=\"no-referrer\">
<meta name=\"viewport\" content=\"initial-scale=1,width=device-width,minimum-scale=1\">
<link rel=\"stylesheet\" href=\"../static/style.css\"/>
<link rel=\"icon\" href=\"../static/ag.ico\">
<script src=\"../static/lightbox.js\"></script>
<script src=\"static/auto-render.min.js\"></script>")

(setq org-static-blog-page-preamble "<br>preamble here yo</br>")
(setq org-static-blog-page-postamble "<br>postamble in he house</br>")

(org-static-blog-publish t)

(message "Build complete!")
