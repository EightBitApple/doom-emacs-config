;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
                                        ;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/radian-software/straight.el#the-recipe-format
                                        ;(package! another-package
                                        ;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
                                        ;(package! this-package
                                        ;  :recipe (:host github :repo "username/repo"
                                        ;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
                                        ;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
                                        ;(package! builtin-package :recipe (:nonrecursive t))
                                        ;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see radian-software/straight.el#279)
                                        ;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
                                        ;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
                                        ;(unpin! pinned-package)
;; ...or multiple packages
                                        ;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
                                        ;(unpin! t)
                                        ;
(package! elfeed-tube :pin "0c3fbc21259e1fa794f3179a53b410ba610231f2")
(package! elfeed-goodies :pin "544ef42ead011d960a0ad1c1d34df5d222461a6b")
(package! elfeed-tube-mpv :pin "0c3fbc21259e1fa794f3179a53b410ba610231f2")
(package! dired-launch :pin "31066f860735325a284c12a2f79c51a640d13556")
(package! org-auto-tangle :pin "817eabf902e759e96782bdc54d2dab36c4a2c5ab")
(package! org-present :pin "4ec04e1b77dea76d7c30066ccf3200d2e0b7bee9")
(package! plantuml-mode :pin "ea45a13707abd2a70df183f1aec6447197fc9ccc")
(package! speed-type :pin "b982ee6081a11837760eeaed73c4f413eefb07b1")
(package! org-auto-tangle :pin "817eabf902e759e96782bdc54d2dab36c4a2c5ab")
(package! yeetube :pin "d3437030bcd8d64b2e5a3bc579e2f2f0b4581d1f")
(package! gnosis :pin "852c3e25eda24471100ea210f7b0ecbb0225136f")
(package! gruber-darker-theme :pin "2e9f99c41fe8ef0557e9ea0f3b94ef50c68b5557")

(when (package! lsp-bridge
        :recipe (:host github
                 :repo "manateelazycat/lsp-bridge"
                 :branch "master"
                 :files ("*.el" "*.py" "acm" "core" "langserver" "multiserver" "resources")
                 ;; do not perform byte compilation or native compilation for lsp-bridge
                 :build (:not compile))
        :pin "0403c9e9f148cc0eb4526bb2d3912e1de031bca1")
  (package! markdown-mode :pin "8692afc12e13431efb0c302baee1de5bbf4a41e4")
  (package! yasnippet :pin "fe1f4e0e96ce42d8668920335eb22c3c009dab3e"))
