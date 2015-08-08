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

(defcheck default
  ;; create a solver configuration
  (log/info  "Configuring solver for Z3...")
  (configure-solver (resolve-path "z3" "z3-4.3.0-x86/bin/z3.exe"))

  ;; run the check
  (log/info  "Running OpenJML in ESC Mode...")  
  (run "java" "-jar" "${openjml:openjml.jar}" "-esc" *project-files-string* ))

