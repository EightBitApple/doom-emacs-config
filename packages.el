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
(package! elfeed-tube :pin "79d5a08d76ea3ae96d7def9a5e2ede2e3562462a")
(package! elfeed-goodies :pin "544ef42ead011d960a0ad1c1d34df5d222461a6b")
(package! elfeed-tube-mpv :pin "79d5a08d76ea3ae96d7def9a5e2ede2e3562462a")
(package! dired-launch :pin "97eb002a2090518df86182e9f1db703850534fb7")
(package! org-present :pin "4ec04e1b77dea76d7c30066ccf3200d2e0b7bee9")
(package! plantuml-mode :pin "dc0f497a67ee9b3d2e437e16023011780d0e8b05")
(package! org-auto-tangle :pin "56e7afc35e4a6321d11c535600c287dbb1a90bc3")
(package! gnosis :pin "dad9858d9316b7f7eff8e0b1fcad2f391b9b3255")
(package! gruber-darker-theme :pin "2e9f99c41fe8ef0557e9ea0f3b94ef50c68b5557")

(when (package! lsp-bridge
        :recipe (:host github
                 :repo "manateelazycat/lsp-bridge"
                 :branch "master"
                 :files ("*.el" "*.py" "acm" "core" "langserver" "multiserver" "resources")
                 ;; do not perform byte compilation or native compilation for lsp-bridge
                 :build (:not compile))
        :pin "1cf76d6506f48a3b78f5383a3816f3bf5c0d88f6")
  (package! markdown-mode :pin "7c20685df615469132763add897c1ca37cbe07e4")
  (package! yasnippet :pin "c1e6ff23e9af16b856c88dfaab9d3ad7b746ad37"))
