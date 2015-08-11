(ns spekl-package-manager.check
 (:require [clojure.java.io :as io]
            [clojure.tools.logging :as log]
            [spekl-package-manager.util :as util]
            [spekl-package-manager.constants :as constants]
            [spekl-package-manager.download :as download]
            [spekl-package-manager.package :as package]
            [clojure.core.reducers :as r]
            [org.satta.glob :as glob]
            [clojure.string :as string]
            [clojure.java.shell :as shell]
            )

  )

(defn configure-solver [path]
  (spit
   "openjml.properties"
   (str
    "openjml.defaultProver=z3_4_3\n"
    "openjml.prover.z3_4_3=" (string/replace path "\\" "\\\\") "\n" ;; needed to support windows
    )))

(defn get-classpath-sep []
  (if (.equals (util/get-my-platform) "windows")
    ";"
    ":"))

(defn configure-classpath []
  (let [cp (*check-configuration* :classpath)]
    (if (= nil cp)
      "."
      (string/join (get-classpath-sep) (util/expand-glob cp)))))

(defcheck default
  ;; create a solver configuration
  (log/info  "Configuring solver for Z3...")
  (configure-solver (resolve-path "z3" "z3-4.3.0-x86/bin/z3.exe"))

  ;; run the check
  (log/info  "Running OpenJML in ESC Mode...")

  ;; see if they want to modify the classpath
  
  (run "java"  "-jar" "${openjml:openjml.jar}" "-classpath" (str "\"" (configure-classpath) "\"")  "-esc" *project-files* ))

