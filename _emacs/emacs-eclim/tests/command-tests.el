(ert-deftest test-command-should-sync-for-normal-commands ()
  (should (eclim--command-should-sync-p "java_complete" '("-f" "~/src/test/Panda.java")))
  (should (not (eclim--command-should-sync-p "other_cmd" '("-x" "~/src/test/Panda.java")))))

(ert-deftest test-command-should-sync-for-special-commands ()
  (should (not (eclim--command-should-sync-p "project_by_resource" '("-f" "~/src/test/Panda.java"))))
  (should (not (eclim--command-should-sync-p "project_link_resource" '("-f" "~/src/test/Panda.java")))))

(ert-deftest test-make-command-should-create-an-executable-string ()
  (let ((eclim-executable "/usr/local/eclipse/eclim"))
    (should (equal (eclim--make-command '("cmd" "-a" "arg"))
                   "/usr/local/eclipse/eclim -command cmd -a arg"))))

(ert-deftest test-make-command-should-escape-arguments ()
  (let ((eclim-executable "/usr/local/eclipse/eclim"))
    (should (equal (eclim--make-command '("cmd" "-a" ""))
                   "/usr/local/eclipse/eclim -command cmd -a ''"))
    (should (equal (eclim--make-command '("cmd" "-a" " a b c "))
                   "/usr/local/eclipse/eclim -command cmd -a \\ a\\ b\\ c\\ "))))

(ert-deftest test-make-command-should-allow-nils()
  (let ((eclim-executable "/usr/local/eclipse/eclim"))
    (should (equal (eclim--make-command '("cmd" "-a" "arg" "-b" nil))
                   "/usr/local/eclipse/eclim -command cmd -a arg -b"))
    (should (equal (eclim--make-command '("cmd" "-a" nil "-b" "arg"))
                   "/usr/local/eclipse/eclim -command cmd -a -b arg"))))