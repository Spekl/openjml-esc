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

(defn configure-classpath [extra]
  (let [cp (*check-configuration* :classpath)]
    (if (= nil cp)
      (str  "."  (get-classpath-sep) extra)
      (string/join (get-classpath-sep) (cons extra (util/expand-glob cp))))))


(defn configure-specspath []
  (string/join (get-classpath-sep) (doall (map (fn [x] (.getPath (x :dir))) *specs*))))

(defn get-classpath [extra]
  (if (= nil (*check-configuration* :out))
    (list  "-classpath" (str "\"" (configure-classpath extra)  "\""))
    (list  "-classpath" (str "\"" (configure-classpath extra) (get-classpath-sep) (*check-configuration* :out) "\""))))

(defn has-specs []
  (> (count *specs*) 0))

(defn get-specspath []
  (if (has-specs)
    (list  "-specspath" (str "\"" (configure-specspath) "\""))))

(defn get-extra-args []
  (filter (fn [x] (not (= nil x))) (flatten (list (get-classpath ".") (get-specspath)))))


(defcheck default
  ;; create a solver configuration
  (log/info  "Configuring solver for Z3...")
  (configure-solver (resolve-path "z3" "z3-4.3.0-x86/bin/z3.exe"))

  ;; run the check
  (log/info  "Running OpenJML in ESC Mode...")

  ;; see if they want to modify the classpath
  
  (run "java"  "-jar" "${openjml:openjml.jar}" (get-extra-args)  "-esc" *project-files* ))

