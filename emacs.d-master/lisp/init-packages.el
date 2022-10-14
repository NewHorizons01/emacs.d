(require 'package)
(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
("nongnu" . "http://elpa.zilongshanren.com/nongnu/")

			 ("melpa" . "http://elpa.zilongshanren.com/melpa/")))
(package-initialize)

;;防止反复调用 package-refresh-contents 会影响加载速度
(when (not package-archive-contents)
  (package-refresh-contents))

;;(package-install 'use-package)

(assq-delete-all 'org package--builtins)
(assq-delete-all 'org package--builtin-versions)

;; Setup `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package-ensure)
(setq use-package-always-ensure t)


(use-package restart-emacs
  :ensure t)


(provide 'init-packages)
