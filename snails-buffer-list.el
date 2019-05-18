(defvar snails-backend-name-buffer-list "buffer-list")

(defun snails-backend-search-buffer-list (input input-ticker render-callback)
  (let (candidates)
    (dolist (buf (buffer-list))
      (when (string-match-p (regexp-quote input) (buffer-name buf))
        (add-to-list 'candidates (list (buffer-name buf) (buffer-name buf)) t)))
    (funcall
     render-callback
     snails-backend-name-buffer-list
     input-ticker
     candidates)))

(defun snails-backend-do-buffer-list (candidate)
  )

(defvar snails-backend-buffer-list
  '(("name" . snails-backend-name-buffer-list)
    ("search" . snails-backend-search-buffer-list)
    ("do" . snails-backend-do-buffer-list)
    ))

(provide 'snails-backend-buffer-list)