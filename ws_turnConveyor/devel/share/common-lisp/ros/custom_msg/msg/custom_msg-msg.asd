
(cl:in-package :asdf)

(defsystem "custom_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FloatList" :depends-on ("_package_FloatList"))
    (:file "_package_FloatList" :depends-on ("_package"))
  ))