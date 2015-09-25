(require 'ox-latex)
(setq org-latex-with-hyperref nil)
(setq org-export-latex-listings t)
(setq org-latex-pdf-process
      '("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))


(custom-set-variables
 '(latex-run-command "xelatex")
 '(pdf-latex-command "xelatex")
 '(tex-run-command "xelatex"))

(add-to-list 'org-latex-classes
        '("dtekprotokoll"
          "\\documentclass{dtekprotokoll}
	  [NO-DEFAULT-PACKAGES]
	  [NO-PACKAGES]"
          ("\\section{%s}" . "\\section*{%s}")
          ("\\subsection{%s}" . "\\subsection*{%s}")
          ("\\beslut{%s}" . "\\beslut*{%s}")
	  ))

(add-to-list 'org-latex-classes
        '("dtek"
          "\\documentclass{dtek}
          [NO-DEFAULT-PACKAGES]
          [NO-PACKAGES]"
          ))
