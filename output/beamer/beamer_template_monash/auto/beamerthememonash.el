(TeX-add-style-hook
 "beamerthememonash"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("textpos" "absolute" "overlay")))
   (TeX-run-style-hooks
    "beamerthememetropolis"
    "textpos")
   (TeX-add-symbols
    "placefig"))
 :latex)

