(require 'ox-publish)

(setq org-publish-project-alist
      '(
	("my-org-site"
	 :base-directory "../org"
	 :base-extension "org"
	 :publishing-directory "../html"
	 :recursive t
	 ;; :exclude
	 ;; :include
	 :publishing-function org-html-publish-to-html
	 ;; :preparation-function
	 ;; :completion-function
	 ;; -----------------------------------------------------------------------------------
	 ;; the DETAILS: options set within the individual .org file can
	 ;; override all of the settings below:
	 ;; you can specify majority the options that you see below in each
	 ;; individual file. Find out syntax for it in =C-h v
	 ;; org-publish-project-alist= and choose the configuration you want to
	 ;; see the syntax for.
	 :author "Arvydas Gasparavicius"
	 ;; :creator
	 :email "arvydas.gaspa@gmail.com"
	 ;; :exclude-tags "noexport"
	 :headline-levels 3
	 :language "en"
	 :preserve-breaks nil
	 :section-numbers t
	 ;; :select-tags
	 :time-stamp-file t
	 ;; :with-archived-trees
	 :with-author t
	 :with-creator t
	 :with-date t			;date from the filename?
	 ;; :with-drawers
	 :with-email t
	 :with-emphasize t
	 :with-entities t
	 :with-fixed-width t
	 :with-footnotes t
	 :with-inlinetasks t
	 :with-latex t
	 :with-planning t
	 :with-priority t
	 :with-properties t
	 ;; :with-smart-quotes
	 :with-special-strings t
	 :with-statistics-cookies' t
	 :with-sub-superscript nil
	 :with-toc t
	 :with-tables t
	 :with-tags t
	 :with-tasks t
	 :with-timestamps t
	 :with-title t
	 :with-todo-keywords t
	 ;; kita dalis
	 :auto-sitemap t
	 :sitemap-filename "sitemap.org"
	 :sitemap-title "Notes"
	 :sitemap-style tree
	 :sitemap-format-entry ag/org-sitemap-date-entry-format
	 ;; :sitemap-function
	 ;; :sitemap-sort-folders
	 :sitemap-sort-files anti-chronologically
	 ;; :sitemap-ignore-case
	 ;; :makeindex
	 ;; :body-only t
	 ;; -----------------------------------------------------------------------------------
	 ;; ox-html.el.gz

	 :html-doctype "html5"
	 :html-container "div"
	 :html-content-class "content"
	 :description "welcome to my site"
	 :keywords "emacs antanas geles"
	 :html-html5-fancy t
	 ;; :html-link-use-abs-url
	 ;; :html-link-home "sitemap.html"
	 :html-link-home "index.html"
	 :html-link-up "sitemap.html"
	 ;; :html-mathjax
	 ;; :html-equation-reference-format
	 ;; :html-postamble nil
	 ;; :html-postamble auto		;with-author/email/creator/date
	 ;; :html-postamble t               ;from :html-postamble-format
	 :html-postamble "<hr/>
	 <footer>
	 <div class=\"copyright-container\">
	 <div class=\"copyright\">
	 Copyright &copy; 2023-2023 Arvydas Gasparavicius
	 </div>
	 </div>
	 <p class=\"date\">This org file is created: %d</p>
	 <p class=\"date\">This org file is last modified: %C</p>
	 <p class=\"date\">This org file is exported to HTML: %T</p>
	 <div class=\"generated\">
	Created with %c on <a href=\"https://www.gnu.org\">GNU</a>/<a href=\"https://www.kernel.org/\">Linux</a>
	</div>
	</footer>
	 <button onclick=\"topFunction()\" id=\"myBtn\" title=\"Go to top\">Top</button>
	 <script src=\"../static/js/generic.js\"></script>
	 <script src=\"../static/js/scroll-to-top.js\"></script>
	 <script src=\"../static/js/lightbox.js\"></script>"
	 ;; :html-preamble t                 ;insert a default one, which in none
	 :html-preamble  "<div id=\"updated\">Updated: %C</div>"
	 ;; :html-head
	 :html-head "
<link rel=\"stylesheet\" href=\"../static/css/org-html-style-default.css\" type=\"text/css\"/>
<link rel=\"stylesheet\" href=\"../static/css/generic.css\" type=\"text/css\"/>
<link rel=\"stylesheet\" href=\"../static/css/taingram.css\" type=\"text/css\"/>
<link rel=\"stylesheet\" href=\"../static/css/lightbox.css\" type=\"text/css\"/>
<link rel=\"stylesheet\" href=\"../static/css/scroll-to-top.css\" type=\"text/css\"/>
"
	 ;; :html-head-extra "<link rel=\"stylesheet\" href=\"https://arvydas.dev/static/style.css\" type=\"text/css\"/>"
	 ;; :html-head-extra "<link rel=\"stylesheet\" href=\"../static/style.css\" type=\"text/css\"/>"
	 ;; :subtitle "this is a subtitle"
	 :html-head-include-default-style nil         ;turning them off, but adding in a separate file called org-html-style-default.css
	 :html-head-include-scripts nil
	 :html-allow-name-attribute-in-anchors nil
	 :html-divs ((preamble "div" "preamble")
		     (content "div" "content")
		     (postamble "div" "postamble"))
	 ;; :html-checkbox-type
	 :html-extension "html"
	 :html-footnote-format "<sup>%s</sup>"
	 :html-footnote-separator "<sup>, </sup>"
	 :html-footnotes-section "<div id=\"footnotes\">\n<h2 class=\"footnotes\">%s: </h2>\n<div id=\"text-footnotes\">\n%s\n</div>\n</div>"
	 ;; :html-format-drawer-function
	 ;; :html-format-headline-function
	 ;; :html-format-inlinetask-function
	 :html-home/up-format "<div id=\"org-div-home-and-up\">\n <a accesskey=\"h\" href=\"%s\">NOTES </a>\n \n <a accesskey=\"H\" href=\"%s\"> HOME </a>\n</div>"
	 :html-indent nil
	 ;; :html-infojs-options
	 ;; :html-infojs-template
	 ;; :html-inline-image-rules
	 :html-link-org-files-as-html t
	 ;; :html-mathjax-options
	 ;; :html-mathjax-template
	 :html-metadata-timestamp-format "%Y-%m-%d %a %H:%M"
	 ;; :html-postamble-format
	 ;; :html-preamble-format
	 ;; :html-prefer-user-labels nil
	 :html-self-link-headlines nil
	 :html-table-align-individual-fields t
	 ;; :html-table-caption-above t
	 :html-table-data-tags ("<td%s>" . "</td>")
	 :html-table-header-tags ("<th scope=\"%s\"%s>" . "</th>")
	 :html-table-use-header-tags-for-first-column nil
	 :html-tag-class-prefix "gaid"
	 :html-text-markup-alist ((bold . "<b>%s</b>")
				  (code . "<code>%s</code>")
				  (italic . "<i>%s</i>")
				  (strike-through . "<del>%s</del>")
				  (underline . "<span class=\"underline\">%s</span>")
				  (verbatim .  "<code>%s</code>"))
	 :html-todo-kwd-class-prefix ""
	 :html-toplevel-hlevel 2
	 ;; :html-use-infojs
	 :html-validation-link nil
	 ;; :html-validation-link "<a href=\"https://validator.w3.org/check?uri=referer\">Validate</a>"
	 :html-viewport  ((width "device-width")
			  (initial-scale "1")
			  (minimum-scale "")
			  (maximum-scale "")
			  (user-scalable ""))
	 :html-inline-images t
	 :html-table-attributes (:border "2" :cellspacing "0" :cellpadding "6" :rules "groups" :frame "hsides")
	 :html-table-row-open-tag "<tr>"
	 :html-table-row-close-tag "</tr>"
	 :html-xml-declaration (("html" . "<?xml version=\"1.0\" encoding=\"%s\"?>")
				("php" . "<?php echo \"<?xml version=\\\"1.0\\\" encoding=\\\"%s\\\" ?>\"; ?>"))
	 :html-wrap-src-lines nil
	 :html-klipsify-src nil		;making it to t - jupyterhub like code blocks. Insane!
	 ;; :html-klipse-css
	 ;; :html-klipse-js
	 ;; :html-klipse-selection-script
	 ;; :infojs-opt
	 ;; :creator
	 :with-latex t
	 ;; :latex-header
	 )

	("build-site.el" :components ("my-org-site"))))

(defun ag/org-sitemap-date-entry-format (entry style project)
  "Format ENTRY in org-publish PROJECT Sitemap format ENTRY ENTRY
 STYLE format that includes date."
  (let ((filename (org-publish-find-title entry project)))
    (if (= (length filename) 0)
	(format "*%s*" entry)
      (format "{{{timestamp(%s)}}} [[file:%s][%s]]"
	      (format-time-string "%Y-%m-%d"
				  (org-publish-find-date entry project))
	      entry
	      filename))))

(setq org-export-global-macros
      '(("timestamp" . "@@html:<span class=\"timestamp\">[$1]</span>@@")))

;; publish all the projects
;; (org-publish-all t)
;; publish only specific project
(org-publish "my-org-site" t)		;The t parameter tells it to regenerate
					;all files regardless of when they were
					;last generated)so no need to add the
					;force prefix with C-c C-e C-f

(message "Build complete!")
