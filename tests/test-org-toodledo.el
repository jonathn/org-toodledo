;;; -*- lexical-binding: t; -*-

(require 'undercover-init.el)
(require 'org-toodledo)

(describe "Error Codes Suite"
  (it "Mapping of Error Codes into Message Strings"
    (let* (
      (a 12)
      )
      (expect (org-toodledo-error-num-to-str "1") :to-equal "You did not specify a key for authentication")
      (expect (org-toodledo-error-num-to-str "2") :to-equal "The authentication key that you provided has expired or is invalid")
      (expect (org-toodledo-error-num-to-str "3") :to-equal "Only 50 tasks can be added/edited/deleted at a time")
      (expect (org-toodledo-error-num-to-str "4") :to-equal "You didn't specify any tasks to add/edit/delete")
      (expect (org-toodledo-error-num-to-str "5") :to-equal "The task's title cannot be blank")
      (expect (org-toodledo-error-num-to-str "6") :to-equal "The maximum number of tasks allowed per account (20000) has been reached")
      (expect (org-toodledo-error-num-to-str "7") :to-equal "Invalid task ID number")
      (expect (org-toodledo-error-num-to-str "8") :to-equal "Invalid folder ID")
      (expect (org-toodledo-error-num-to-str "9") :to-equal "Invalid context ID")
      (expect (org-toodledo-error-num-to-str "10") :to-equal "Invalid goal ID")
      (expect (org-toodledo-error-num-to-str "11") :to-equal "Invalid location ID")
      (expect (org-toodledo-error-num-to-str "12") :to-equal "Nothing was changed. You'll get this error if you attempt to edit a task but don't pass any parameters to edit")
      (expect (org-toodledo-error-num-to-str "13") :to-equal "Invalid parent ID")
      (expect (org-toodledo-error-num-to-str "100") :to-equal "Unknown Error")
      (expect (org-toodledo-error-num-to-str "500") :to-equal "The Toodledo server is offline for maintenance")
      (expect (org-toodledo-error-num-to-str "501") :to-equal "SSL connections require a Pro subscription")
      (expect (org-toodledo-error-num-to-str "99") :to-equal "Unknown code")  ;; NO SUCH CODE IN MAPPING TABLE
    )
  )
)
