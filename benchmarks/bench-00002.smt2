;; .spm/z3-4.3.0-2/z3-4.3.0-x86/bin/z3.exe -smt2 -in SMTLIB2_COMPLIANT=true 
(set-option :print-success true)
;OUT: success

(set-option :produce-models true)
;OUT: success

(set-logic AUFLIA)
;OUT: success

(declare-sort REF 0)
;OUT: success

(declare-fun NULL () REF)
;OUT: success

(declare-fun THIS () REF)
;OUT: success

(declare-fun stringConcat (REF REF ) REF)
;OUT: success

(declare-fun stringLength (REF ) Int)
;OUT: success

(assert (distinct THIS NULL))
;OUT: success

(declare-fun __JMLlength () (Array REF Int))
;OUT: success

(assert (forall ((o REF) ) (>= (select __JMLlength o) 0)))
;OUT: success

(assert (forall ((s1 REF) (s2 REF) ) (distinct (stringConcat s1 s2) NULL)))
;OUT: success

(declare-fun asIntArray (REF ) (Array Int Int))
;OUT: success

(declare-fun asREFArray (REF ) (Array Int REF))
;OUT: success

(declare-fun intValue (REF ) Int)
;OUT: success

(declare-fun booleanValue (REF ) Bool)
;OUT: success

(declare-sort JMLTypeSort 0)
;OUT: success

(declare-fun javaTypeOf (REF ) REF)
;OUT: success

(declare-fun jmlTypeOf (REF ) JMLTypeSort)
;OUT: success

(declare-fun typearg1_1 (JMLTypeSort ) JMLTypeSort)
;OUT: success

(declare-fun typearg2_1 (JMLTypeSort ) JMLTypeSort)
;OUT: success

(declare-fun typearg2_2 (JMLTypeSort ) JMLTypeSort)
;OUT: success

(declare-fun javaSubType (REF REF ) Bool)
;OUT: success

(declare-fun jmlSubType (JMLTypeSort JMLTypeSort ) Bool)
;OUT: success

(declare-fun erasure (JMLTypeSort ) REF)
;OUT: success

(assert (forall ((o REF) ) (= (erasure (jmlTypeOf o)) (javaTypeOf o))))
;OUT: success

(declare-fun _makeArrayType (REF ) REF)
;OUT: success

(declare-fun _isArrayType (REF ) Bool)
;OUT: success

(declare-fun _makeJMLArrayType (JMLTypeSort ) JMLTypeSort)
;OUT: success

(declare-fun _isJMLArrayType (JMLTypeSort ) Bool)
;OUT: success

(declare-fun __arrayElemType (JMLTypeSort ) JMLTypeSort)
;OUT: success

(assert (forall ((T JMLTypeSort) ) (= (erasure (_makeJMLArrayType T)) (_makeArrayType (erasure T)))))
;OUT: success

(assert (forall ((T1 JMLTypeSort) (T2 JMLTypeSort) ) (=> (jmlSubType T1 T2) (javaSubType (erasure T1) (erasure T2)))))
;OUT: success

(declare-fun nonnullelements (REF (Array REF (Array Int REF)) ) Bool)
;OUT: success

(assert (forall ((a REF) (arrays (Array REF (Array Int REF))) ) (= (nonnullelements a arrays) (forall ((i Int) ) (=> (and (<= 0 i) (< i (select __JMLlength a))) (distinct NULL (select (select arrays a) i)))))))
;OUT: success

(declare-fun _JMLT_0 (REF ) JMLTypeSort)
;OUT: success

(declare-fun _JMLT_1 (REF JMLTypeSort ) JMLTypeSort)
;OUT: success

(declare-fun _JMLT_2 (REF JMLTypeSort JMLTypeSort ) JMLTypeSort)
;OUT: success

(declare-fun T_java_io_Serializable () REF)
;OUT: success

(assert (not (_isArrayType T_java_io_Serializable)))
;OUT: success

(declare-fun JMLT_java_io_Serializable () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_io_Serializable)))
;OUT: success

(assert (= (_JMLT_0 T_java_io_Serializable) JMLT_java_io_Serializable))
;OUT: success

(assert (= (erasure JMLT_java_io_Serializable) T_java_io_Serializable))
;OUT: success

(declare-fun T_org_jmlspecs_lang_JMLDataGroup () REF)
;OUT: success

(assert (not (_isArrayType T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (forall ((t REF) ) (=> (javaSubType t T_org_jmlspecs_lang_JMLDataGroup) (= t T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(declare-fun JMLT_org_jmlspecs_lang_JMLDataGroup () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (= (_JMLT_0 T_org_jmlspecs_lang_JMLDataGroup) JMLT_org_jmlspecs_lang_JMLDataGroup))
;OUT: success

(assert (= (erasure JMLT_org_jmlspecs_lang_JMLDataGroup) T_org_jmlspecs_lang_JMLDataGroup))
;OUT: success

(assert (forall ((t JMLTypeSort) ) (=> (jmlSubType t JMLT_org_jmlspecs_lang_JMLDataGroup) (= t JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(declare-fun T_java_lang_Exception () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_Exception)))
;OUT: success

(declare-fun JMLT_java_lang_Exception () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_lang_Exception)))
;OUT: success

(assert (= (_JMLT_0 T_java_lang_Exception) JMLT_java_lang_Exception))
;OUT: success

(assert (= (erasure JMLT_java_lang_Exception) T_java_lang_Exception))
;OUT: success

(declare-fun T_java_lang_Cloneable () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_Cloneable)))
;OUT: success

(declare-fun JMLT_java_lang_Cloneable () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_lang_Cloneable)))
;OUT: success

(assert (= (_JMLT_0 T_java_lang_Cloneable) JMLT_java_lang_Cloneable))
;OUT: success

(assert (= (erasure JMLT_java_lang_Cloneable) T_java_lang_Cloneable))
;OUT: success

(declare-fun T_java_lang_Object () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_Object)))
;OUT: success

(declare-fun JMLT_java_lang_Object () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (= (_JMLT_0 T_java_lang_Object) JMLT_java_lang_Object))
;OUT: success

(assert (= (erasure JMLT_java_lang_Object) T_java_lang_Object))
;OUT: success

(declare-fun T_java_lang_String () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_String)))
;OUT: success

(assert (forall ((t REF) ) (=> (javaSubType t T_java_lang_String) (= t T_java_lang_String))))
;OUT: success

(declare-fun JMLT_java_lang_String () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_lang_String)))
;OUT: success

(assert (= (_JMLT_0 T_java_lang_String) JMLT_java_lang_String))
;OUT: success

(assert (= (erasure JMLT_java_lang_String) T_java_lang_String))
;OUT: success

(assert (forall ((t JMLTypeSort) ) (=> (jmlSubType t JMLT_java_lang_String) (= t JMLT_java_lang_String))))
;OUT: success

(declare-fun T_java_lang_CharSequence () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_CharSequence)))
;OUT: success

(declare-fun JMLT_java_lang_CharSequence () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_lang_CharSequence)))
;OUT: success

(assert (= (_JMLT_0 T_java_lang_CharSequence) JMLT_java_lang_CharSequence))
;OUT: success

(assert (= (erasure JMLT_java_lang_CharSequence) T_java_lang_CharSequence))
;OUT: success

(declare-fun T_java_lang_Comparable () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_Comparable)))
;OUT: success

(declare-fun T_java_lang_RuntimeException () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_RuntimeException)))
;OUT: success

(declare-fun JMLT_java_lang_RuntimeException () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (= (_JMLT_0 T_java_lang_RuntimeException) JMLT_java_lang_RuntimeException))
;OUT: success

(assert (= (erasure JMLT_java_lang_RuntimeException) T_java_lang_RuntimeException))
;OUT: success

(assert (distinct T_java_io_Serializable T_org_jmlspecs_lang_JMLDataGroup T_java_lang_Exception T_java_lang_Cloneable T_java_lang_Object T_java_lang_String T_java_lang_CharSequence T_java_lang_Comparable T_java_lang_RuntimeException))
;OUT: success

(assert (distinct JMLT_java_io_Serializable JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_lang_Exception JMLT_java_lang_Cloneable JMLT_java_lang_Object JMLT_java_lang_String JMLT_java_lang_CharSequence JMLT_java_lang_RuntimeException))
;OUT: success

(assert (javaSubType T_java_io_Serializable T_java_io_Serializable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_io_Serializable)))
;OUT: success

(assert (jmlSubType JMLT_java_io_Serializable JMLT_java_io_Serializable))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_io_Serializable JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (jmlSubType JMLT_java_io_Serializable JMLT_java_lang_Exception)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_lang_Exception))))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_io_Serializable JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_lang_Cloneable))))
;OUT: success

(assert (javaSubType T_java_io_Serializable T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_io_Serializable JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_java_io_Serializable JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (jmlSubType JMLT_java_io_Serializable JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_lang_CharSequence))))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_java_io_Serializable JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (not (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_io_Serializable))))
;OUT: success

(assert (not (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_io_Serializable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_io_Serializable))))
;OUT: success

(assert (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_org_jmlspecs_lang_JMLDataGroup))
;OUT: success

(assert (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_org_jmlspecs_lang_JMLDataGroup))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_lang_Exception)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_lang_Exception))))
;OUT: success

(assert (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_Cloneable))
;OUT: success

(assert (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_Cloneable)))
;OUT: success

(assert (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_lang_Cloneable))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_lang_Cloneable)))
;OUT: success

(assert (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (not (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_lang_CharSequence))))
;OUT: success

(assert (not (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (javaSubType T_java_lang_Exception T_java_io_Serializable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_io_Serializable)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_Exception JMLT_java_io_Serializable))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType T_java_lang_Exception T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Exception JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (javaSubType T_java_lang_Exception T_java_lang_Exception))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_Exception)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_Exception JMLT_java_lang_Exception))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType T_java_lang_Exception T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Exception JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_lang_Cloneable))))
;OUT: success

(assert (javaSubType T_java_lang_Exception T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_Exception JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_lang_Exception T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Exception JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (not (javaSubType T_java_lang_Exception T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Exception JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_lang_CharSequence))))
;OUT: success

(assert (not (javaSubType T_java_lang_Exception T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Exception T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Exception JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_io_Serializable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Cloneable JMLT_java_io_Serializable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_io_Serializable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Cloneable JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Cloneable JMLT_java_lang_Exception)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_lang_Exception))))
;OUT: success

(assert (javaSubType T_java_lang_Cloneable T_java_lang_Cloneable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_Cloneable)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_Cloneable JMLT_java_lang_Cloneable))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_lang_Cloneable)))
;OUT: success

(assert (javaSubType T_java_lang_Cloneable T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_Cloneable JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Cloneable JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Cloneable JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_lang_CharSequence))))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Cloneable JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_io_Serializable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_java_io_Serializable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_io_Serializable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_java_lang_Exception)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_lang_Exception))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_lang_Cloneable))))
;OUT: success

(assert (javaSubType T_java_lang_Object T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_Object JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_lang_CharSequence))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (javaSubType T_java_lang_String T_java_io_Serializable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_io_Serializable)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_String JMLT_java_io_Serializable))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType T_java_lang_String T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_String JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_lang_String T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_String JMLT_java_lang_Exception)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_lang_Exception))))
;OUT: success

(assert (not (javaSubType T_java_lang_String T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_String JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_lang_Cloneable))))
;OUT: success

(assert (javaSubType T_java_lang_String T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_String JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (javaSubType T_java_lang_String T_java_lang_String))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_String)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_String JMLT_java_lang_String))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_lang_String)))
;OUT: success

(assert (javaSubType T_java_lang_String T_java_lang_CharSequence))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_CharSequence)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_String JMLT_java_lang_CharSequence))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_lang_CharSequence)))
;OUT: success

(assert (javaSubType T_java_lang_String T_java_lang_Comparable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType T_java_lang_String T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_String JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_io_Serializable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_CharSequence JMLT_java_io_Serializable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_io_Serializable))))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_CharSequence JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_CharSequence JMLT_java_lang_Exception)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_lang_Exception))))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_CharSequence JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_lang_Cloneable))))
;OUT: success

(assert (javaSubType T_java_lang_CharSequence T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_CharSequence JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_CharSequence JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (javaSubType T_java_lang_CharSequence T_java_lang_CharSequence))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_CharSequence)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_CharSequence JMLT_java_lang_CharSequence))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_CharSequence JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_io_Serializable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (javaSubType T_java_lang_Comparable T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (javaSubType T_java_lang_Comparable T_java_lang_Comparable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (javaSubType T_java_lang_RuntimeException T_java_io_Serializable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_io_Serializable)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_io_Serializable))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType T_java_lang_RuntimeException T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_RuntimeException JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (javaSubType T_java_lang_RuntimeException T_java_lang_Exception))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_Exception)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_lang_Exception))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType T_java_lang_RuntimeException T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_lang_Cloneable))))
;OUT: success

(assert (javaSubType T_java_lang_RuntimeException T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_lang_RuntimeException T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (not (javaSubType T_java_lang_RuntimeException T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_lang_CharSequence))))
;OUT: success

(assert (not (javaSubType T_java_lang_RuntimeException T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (javaSubType T_java_lang_RuntimeException T_java_lang_RuntimeException))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_RuntimeException)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_lang_RuntimeException))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (forall ((t1 REF) (t2 REF) (t3 REF) ) (=> (and (javaSubType t1 t2) (javaSubType t2 t3)) (javaSubType t1 t3))))
;OUT: success

(assert (forall ((t1 JMLTypeSort) (t2 JMLTypeSort) (t3 JMLTypeSort) ) (=> (and (jmlSubType t1 t2) (jmlSubType t2 t3)) (jmlSubType t1 t3))))
;OUT: success

(assert (distinct T_java_io_Serializable T_org_jmlspecs_lang_JMLDataGroup T_java_lang_Exception T_java_lang_Cloneable T_java_lang_Object T_java_lang_String T_java_lang_CharSequence T_java_lang_Comparable T_java_lang_RuntimeException))
;OUT: success

(assert (distinct (_JMLT_1 T_java_lang_Comparable JMLT_java_lang_String) (_JMLT_0 T_java_lang_String) (_JMLT_0 T_org_jmlspecs_lang_JMLDataGroup) (_JMLT_0 T_java_lang_RuntimeException) (_JMLT_0 T_java_io_Serializable) (_JMLT_0 T_java_lang_Exception) (_JMLT_0 T_java_lang_Cloneable) (_JMLT_0 T_java_lang_Object) (_JMLT_0 T_java_lang_CharSequence)))
;OUT: success

(declare-fun java.lang.Object_owner_1585 () (Array REF REF))
;OUT: success

(declare-fun java.lang.Object_theHashCode_2129 () (Array REF Int))
;OUT: success

(declare-fun java.lang.Object_theString_6988 () (Array REF REF))
;OUT: success

(declare-fun _isalloc___7 () (Array REF Bool))
;OUT: success

(declare-fun java.lang.Object_objectTimesFinalized_9235 () (Array REF Int))
;OUT: success

(declare-fun java.lang.Object_objectState_1211 () (Array REF REF))
;OUT: success

(declare-fun java.lang.Object_privateState_1345 () (Array REF REF))
;OUT: success

(declare-fun a_0 () Int)
;OUT: success

(declare-fun b_0 () Int)
;OUT: success

(declare-fun _JML___result_45_45___1 () Int)
;OUT: success

(declare-fun _JML___exception_45_45___2 () REF)
;OUT: success

(declare-fun _JML___termination_45_45___3 () Int)
;OUT: success

(declare-fun a_53 () Int)
;OUT: success

(declare-fun b_60 () Int)
;OUT: success

(declare-fun ASSERT_37_45_45___4 () Bool)
;OUT: success

(declare-fun ASSERT_38_78_78___5 () Bool)
;OUT: success

(declare-fun ASSERT_39_78_78___6 () Bool)
;OUT: success

(declare-fun _JML___result_45_70___7 () Int)
;OUT: success

(declare-fun _JML___termination_45_70___8 () Int)
;OUT: success

(declare-fun _JML___exception_45_70___9 () REF)
;OUT: success

(declare-fun ASSERT_40_45_45___10 () Bool)
;OUT: success

(declare-fun ASSERT_41_45_45___11 () Bool)
;OUT: success

(declare-fun BL_45Start_1 () Bool)
;OUT: success

(declare-fun BL_62bodyBegin_2 () Bool)
;OUT: success

(declare-fun BL_45_AfterLabel_3 () Bool)
;OUT: success

(declare-fun BL_70_return_11 () Bool)
;OUT: success

(declare-fun BL_45tryTarget_5 () Bool)
;OUT: success

(declare-fun BL_45noException_7 () Bool)
;OUT: success

(declare-fun BL_45nocatch_8 () Bool)
;OUT: success

(declare-fun BL_45_finally_6 () Bool)
;OUT: success

(declare-fun BL_45_then_13 () Bool)
;OUT: success

(declare-fun BL_45_else_14 () Bool)
;OUT: success

(declare-fun BL_45_afterIf_12 () Bool)
;OUT: success

(declare-fun BL_45finallyNormal_9 () Bool)
;OUT: success

(declare-fun BL_45finallyExit_10 () Bool)
;OUT: success

(declare-fun BL_45_AfterTry_4 () Bool)
;OUT: success

(assert (= BL_45Start_1 BL_62bodyBegin_2))
;OUT: success

(declare-fun __JML_AssumeCheck_ () Int)
;OUT: success

(define-fun PRE_a_53 () Int a_53)
;OUT: success

(define-fun PRE_b_60 () Int b_60)
;OUT: success

(assert (= BL_62bodyBegin_2 (=> (= _JML___result_45_45___1 0) (=> (= _JML___exception_45_45___2 NULL) (=> (= _JML___termination_45_45___3 0) (=> (and (<= (- 2147483648) (select java.lang.Object_objectTimesFinalized_9235 THIS)) (<= (select java.lang.Object_objectTimesFinalized_9235 THIS) 2147483647)) (=> (distinct (select java.lang.Object_theString_6988 THIS) NULL) (=> (select _isalloc___7 (select java.lang.Object_theString_6988 THIS)) (=> (and (and (and (and (or (= (select java.lang.Object_theString_6988 THIS) NULL) (and (and (distinct (select java.lang.Object_theString_6988 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_theString_6988 THIS)) T_java_lang_Object)) (jmlSubType (jmlTypeOf (select java.lang.Object_theString_6988 THIS)) JMLT_java_lang_Object))) (or (= (select java.lang.Object_theString_6988 THIS) NULL) (and (and (distinct (select java.lang.Object_theString_6988 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_theString_6988 THIS)) T_java_io_Serializable)) (jmlSubType (jmlTypeOf (select java.lang.Object_theString_6988 THIS)) JMLT_java_io_Serializable)))) (or (= (select java.lang.Object_theString_6988 THIS) NULL) (and (and (distinct (select java.lang.Object_theString_6988 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_theString_6988 THIS)) T_java_lang_Comparable)) (jmlSubType (jmlTypeOf (select java.lang.Object_theString_6988 THIS)) (_JMLT_1 T_java_lang_Comparable JMLT_java_lang_String))))) (or (= (select java.lang.Object_theString_6988 THIS) NULL) (and (and (distinct (select java.lang.Object_theString_6988 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_theString_6988 THIS)) T_java_lang_CharSequence)) (jmlSubType (jmlTypeOf (select java.lang.Object_theString_6988 THIS)) JMLT_java_lang_CharSequence)))) (or (= (select java.lang.Object_theString_6988 THIS) NULL) (and (and (distinct (select java.lang.Object_theString_6988 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_theString_6988 THIS)) T_java_lang_String)) (jmlSubType (jmlTypeOf (select java.lang.Object_theString_6988 THIS)) JMLT_java_lang_String)))) (=> (and (<= (- 2147483648) (select java.lang.Object_theHashCode_2129 THIS)) (<= (select java.lang.Object_theHashCode_2129 THIS) 2147483647)) (=> (or (= (select java.lang.Object_owner_1585 THIS) NULL) (select _isalloc___7 (select java.lang.Object_owner_1585 THIS))) (=> (or (= (select java.lang.Object_owner_1585 THIS) NULL) (and (and (distinct (select java.lang.Object_owner_1585 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_owner_1585 THIS)) T_java_lang_Object)) (jmlSubType (jmlTypeOf (select java.lang.Object_owner_1585 THIS)) JMLT_java_lang_Object))) (=> (distinct (select java.lang.Object_privateState_1345 THIS) NULL) (=> (select _isalloc___7 (select java.lang.Object_privateState_1345 THIS)) (=> (and (and (or (= (select java.lang.Object_privateState_1345 THIS) NULL) (and (and (distinct (select java.lang.Object_privateState_1345 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_privateState_1345 THIS)) T_java_lang_Object)) (jmlSubType (jmlTypeOf (select java.lang.Object_privateState_1345 THIS)) JMLT_java_lang_Object))) (or (= (select java.lang.Object_privateState_1345 THIS) NULL) (and (and (distinct (select java.lang.Object_privateState_1345 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_privateState_1345 THIS)) T_java_lang_Cloneable)) (jmlSubType (jmlTypeOf (select java.lang.Object_privateState_1345 THIS)) JMLT_java_lang_Cloneable)))) (or (= (select java.lang.Object_privateState_1345 THIS) NULL) (and (and (distinct (select java.lang.Object_privateState_1345 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_privateState_1345 THIS)) T_org_jmlspecs_lang_JMLDataGroup)) (jmlSubType (jmlTypeOf (select java.lang.Object_privateState_1345 THIS)) JMLT_org_jmlspecs_lang_JMLDataGroup)))) (=> (distinct (select java.lang.Object_objectState_1211 THIS) NULL) (=> (select _isalloc___7 (select java.lang.Object_objectState_1211 THIS)) (=> (and (and (or (= (select java.lang.Object_objectState_1211 THIS) NULL) (and (and (distinct (select java.lang.Object_objectState_1211 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_objectState_1211 THIS)) T_java_lang_Object)) (jmlSubType (jmlTypeOf (select java.lang.Object_objectState_1211 THIS)) JMLT_java_lang_Object))) (or (= (select java.lang.Object_objectState_1211 THIS) NULL) (and (and (distinct (select java.lang.Object_objectState_1211 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_objectState_1211 THIS)) T_java_lang_Cloneable)) (jmlSubType (jmlTypeOf (select java.lang.Object_objectState_1211 THIS)) JMLT_java_lang_Cloneable)))) (or (= (select java.lang.Object_objectState_1211 THIS) NULL) (and (and (distinct (select java.lang.Object_objectState_1211 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_objectState_1211 THIS)) T_org_jmlspecs_lang_JMLDataGroup)) (jmlSubType (jmlTypeOf (select java.lang.Object_objectState_1211 THIS)) JMLT_org_jmlspecs_lang_JMLDataGroup)))) (=> (and (<= (- 2147483648) a_53) (<= a_53 2147483647)) (=> (and (<= (- 2147483648) b_60) (<= b_60 2147483647)) BL_45_AfterLabel_3))))))))))))))))))))
;OUT: success

(define-fun _JML__tmp4 () Int (+ a_53 b_60))
;OUT: success

(assert (= BL_45_AfterLabel_3 (=> (= ASSERT_37_45_45___4 (distinct __JML_AssumeCheck_ 1)) (and ASSERT_37_45_45___4 (=> ASSERT_37_45_45___4 (=> (= ASSERT_38_78_78___5 (or (not (and (< 0 a_53) (< 0 b_60))) (<= a_53 (- 2147483647 b_60)))) (and ASSERT_38_78_78___5 (=> ASSERT_38_78_78___5 (=> (= ASSERT_39_78_78___6 (or (not (and (< a_53 0) (< b_60 0))) (<= (- (- 2147483648) b_60) a_53))) (and ASSERT_39_78_78___6 (=> ASSERT_39_78_78___6 (=> (= _JML___result_45_70___7 _JML__tmp4) (=> (= _JML___termination_45_70___8 70) (=> (= _JML___exception_45_70___9 NULL) BL_70_return_11))))))))))))))
;OUT: success

(assert (= BL_70_return_11 BL_45tryTarget_5))
;OUT: success

(assert (= BL_45tryTarget_5 (and BL_45noException_7 BL_45nocatch_8)))
;OUT: success

(assert (= BL_45noException_7 (=> (= _JML___exception_45_70___9 NULL) BL_45_finally_6)))
;OUT: success

(assert (= BL_45nocatch_8 (=> (distinct _JML___exception_45_70___9 NULL) BL_45_finally_6)))
;OUT: success

(assert (= BL_45_finally_6 (and BL_45_then_13 BL_45_else_14)))
;OUT: success

(assert (= BL_45_then_13 (=> (= _JML___exception_45_70___9 NULL) BL_45_afterIf_12)))
;OUT: success

(assert (= BL_45_else_14 (=> (not (= _JML___exception_45_70___9 NULL)) (=> (= ASSERT_40_45_45___10 (and (distinct _JML___exception_45_70___9 NULL) (javaSubType (javaTypeOf _JML___exception_45_70___9) T_java_lang_RuntimeException))) (and ASSERT_40_45_45___10 (=> ASSERT_40_45_45___10 BL_45_afterIf_12))))))
;OUT: success

(assert (= BL_45_afterIf_12 (=> (= ASSERT_41_45_45___11 (distinct __JML_AssumeCheck_ 2)) (and ASSERT_41_45_45___11 (=> ASSERT_41_45_45___11 (and BL_45finallyNormal_9 BL_45finallyExit_10))))))
;OUT: success

(assert (= BL_45finallyNormal_9 (=> (= _JML___termination_45_70___8 0) BL_45_AfterTry_4)))
;OUT: success

(assert (= BL_45finallyExit_10 (=> (distinct _JML___termination_45_70___8 0) BL_45_AfterTry_4)))
;OUT: success

(assert (= BL_45_AfterTry_4 true))
;OUT: success

(assert (not BL_45Start_1))
;OUT: success

(push 1)
;OUT: success

(assert (= __JML_AssumeCheck_ 0))
;OUT: success

(push 1)
;OUT: success

(check-sat)
;OUT: unknown

(get-info :reason-unknown)
;OUT: (:reason-unknown (incomplete (theory array)))

(get-value ( NULL))
;OUT: ((NULL REF!val!18))

(get-value ( NULL))
;OUT: ((NULL REF!val!18))

(get-value ( (not (and (< 0 a_53) (< 0 b_60)))))
;OUT: (((not (and (< 0 a_53) (< 0 b_60))) true))

(get-value ( (and (< 0 a_53) (< 0 b_60))))
;OUT: (((and (< 0 a_53) (< 0 b_60)) false))

(get-value ( (- (- 2147483648) b_60)))
;OUT: (((- (- 2147483648) b_60) 0))

(get-value ( (select java.lang.Object_objectTimesFinalized_9235 THIS)))
;OUT: (((select java.lang.Object_objectTimesFinalized_9235 THIS) 0))

(get-value ( _JML___exception_45_70___9))
;OUT: ((_JML___exception_45_70___9 REF!val!14))

(get-value ( (or (not (and (< 0 a_53) (< 0 b_60))) (<= a_53 (- 2147483647 b_60)))))
;OUT: (((or (not (and (< 0 a_53) (< 0 b_60))) (<= a_53 (- 2147483647 b_60))) true))

(get-value ( b_60))
;OUT: ((b_60 (- 2147483648)))

(get-value ( (distinct __JML_AssumeCheck_ 2)))
;OUT: (((distinct __JML_AssumeCheck_ 2) true))

(get-value ( (and (distinct _JML___exception_45_70___9 NULL) (javaSubType (javaTypeOf _JML___exception_45_70___9) T_java_lang_RuntimeException))))
;OUT: (((and (distinct _JML___exception_45_70___9 NULL) (javaSubType (javaTypeOf _JML___exception_45_70___9) T_java_lang_RuntimeException)) true))

(get-value ( (select java.lang.Object_privateState_1345 THIS)))
;OUT: (((select java.lang.Object_privateState_1345 THIS) REF!val!12))

(get-value ( (select java.lang.Object_theHashCode_2129 THIS)))
;OUT: (((select java.lang.Object_theHashCode_2129 THIS) (- 2147482412)))

(get-value ( (< b_60 0)))
;OUT: (((< b_60 0) true))

(get-value ( __JML_AssumeCheck_))
;OUT: ((__JML_AssumeCheck_ 0))

(get-value ( _JML__tmp4))
;OUT: ((_JML__tmp4 (- 2147483649)))

(get-value ( __JML_AssumeCheck_))
;OUT: ((__JML_AssumeCheck_ 0))

(get-value ( 1))
;OUT: ((1 1))

(get-value ( (select java.lang.Object_objectState_1211 THIS)))
;OUT: (((select java.lang.Object_objectState_1211 THIS) REF!val!13))

(get-value ( (distinct __JML_AssumeCheck_ 1)))
;OUT: (((distinct __JML_AssumeCheck_ 1) true))

(get-value ( NULL))
;OUT: ((NULL REF!val!18))

(get-value ( (< a_53 0)))
;OUT: (((< a_53 0) true))

(get-value ( b_60))
;OUT: ((b_60 (- 2147483648)))

(get-value ( a_53))
;OUT: ((a_53 (- 1)))

(get-value ( (< 0 b_60)))
;OUT: (((< 0 b_60) false))

(get-value ( (select java.lang.Object_owner_1585 THIS)))
;OUT: (((select java.lang.Object_owner_1585 THIS) REF!val!18))

(get-value ( 2))
;OUT: ((2 2))

(get-value ( a_53))
;OUT: ((a_53 (- 1)))

(get-value ( (- 2147483647 b_60)))
;OUT: (((- 2147483647 b_60) 4294967295))

(get-value ( (<= (- (- 2147483648) b_60) a_53)))
;OUT: (((<= (- (- 2147483648) b_60) a_53) false))

(get-value ( 0))
;OUT: ((0 0))

(get-value ( (< 0 a_53)))
;OUT: (((< 0 a_53) false))

(get-value ( (or (not (and (< a_53 0) (< b_60 0))) (<= (- (- 2147483648) b_60) a_53))))
;OUT: (((or (not (and (< a_53 0) (< b_60 0))) (<= (- (- 2147483648) b_60) a_53)) false))

(get-value ( (- 2147483648)))
;OUT: (((- 2147483648) (- 2147483648)))

(get-value ( (select java.lang.Object_theString_6988 THIS)))
;OUT: (((select java.lang.Object_theString_6988 THIS) REF!val!11))

(get-value ( (not (and (< a_53 0) (< b_60 0)))))
;OUT: (((not (and (< a_53 0) (< b_60 0))) false))

(get-value ( a_53))
;OUT: ((a_53 (- 1)))

(get-value ( (<= a_53 (- 2147483647 b_60))))
;OUT: (((<= a_53 (- 2147483647 b_60)) true))

(get-value ( b_60))
;OUT: ((b_60 (- 2147483648)))

(get-value ( 2147483647))
;OUT: ((2147483647 2147483647))

(get-value ( (and (< a_53 0) (< b_60 0))))
;OUT: (((and (< a_53 0) (< b_60 0)) true))

(get-value ( NULL))
;OUT: ((NULL REF!val!18))

(get-value ( THIS))
;OUT: ((THIS REF!val!0))

(get-value ( BL_45Start_1))
;OUT: ((BL_45Start_1 false))

(get-value ( BL_62bodyBegin_2))
;OUT: ((BL_62bodyBegin_2 false))

(get-value ( BL_45_AfterLabel_3))
;OUT: ((BL_45_AfterLabel_3 false))

(get-value ( ASSERT_37_45_45___4))
;OUT: ((ASSERT_37_45_45___4 true))

(get-value ( ASSERT_38_78_78___5))
;OUT: ((ASSERT_38_78_78___5 true))

(get-value ( ASSERT_39_78_78___6))
;OUT: ((ASSERT_39_78_78___6 false))

(pop 1)
;OUT: success

(assert ASSERT_39_78_78___6)
;OUT: success

(push 1)
;OUT: success

(check-sat)
;OUT: unknown

(get-info :reason-unknown)
;OUT: (:reason-unknown (incomplete (theory array)))

(get-value ( NULL))
;OUT: ((NULL REF!val!18))

(get-value ( NULL))
;OUT: ((NULL REF!val!18))

(get-value ( (not (and (< 0 a_53) (< 0 b_60)))))
;OUT: (((not (and (< 0 a_53) (< 0 b_60))) false))

(get-value ( (and (< 0 a_53) (< 0 b_60))))
;OUT: (((and (< 0 a_53) (< 0 b_60)) true))

(get-value ( (- (- 2147483648) b_60)))
;OUT: (((- (- 2147483648) b_60) (- 4294967295)))

(get-value ( (select java.lang.Object_objectTimesFinalized_9235 THIS)))
;OUT: (((select java.lang.Object_objectTimesFinalized_9235 THIS) 0))

(get-value ( _JML___exception_45_70___9))
;OUT: ((_JML___exception_45_70___9 REF!val!14))

(get-value ( (or (not (and (< 0 a_53) (< 0 b_60))) (<= a_53 (- 2147483647 b_60)))))
;OUT: (((or (not (and (< 0 a_53) (< 0 b_60))) (<= a_53 (- 2147483647 b_60))) false))

(get-value ( b_60))
;OUT: ((b_60 2147483647))

(get-value ( (distinct __JML_AssumeCheck_ 2)))
;OUT: (((distinct __JML_AssumeCheck_ 2) true))

(get-value ( (and (distinct _JML___exception_45_70___9 NULL) (javaSubType (javaTypeOf _JML___exception_45_70___9) T_java_lang_RuntimeException))))
;OUT: (((and (distinct _JML___exception_45_70___9 NULL) (javaSubType (javaTypeOf _JML___exception_45_70___9) T_java_lang_RuntimeException)) false))

(get-value ( (select java.lang.Object_privateState_1345 THIS)))
;OUT: (((select java.lang.Object_privateState_1345 THIS) REF!val!12))

(get-value ( (select java.lang.Object_theHashCode_2129 THIS)))
;OUT: (((select java.lang.Object_theHashCode_2129 THIS) (- 2147481852)))

(get-value ( (< b_60 0)))
;OUT: (((< b_60 0) false))

(get-value ( __JML_AssumeCheck_))
;OUT: ((__JML_AssumeCheck_ 0))

(get-value ( _JML__tmp4))
;OUT: ((_JML__tmp4 2147483648))

(get-value ( __JML_AssumeCheck_))
;OUT: ((__JML_AssumeCheck_ 0))

(get-value ( 1))
;OUT: ((1 1))

(get-value ( (select java.lang.Object_objectState_1211 THIS)))
;OUT: (((select java.lang.Object_objectState_1211 THIS) REF!val!13))

(get-value ( (distinct __JML_AssumeCheck_ 1)))
;OUT: (((distinct __JML_AssumeCheck_ 1) true))

(get-value ( NULL))
;OUT: ((NULL REF!val!18))

(get-value ( (< a_53 0)))
;OUT: (((< a_53 0) false))

(get-value ( b_60))
;OUT: ((b_60 2147483647))

(get-value ( a_53))
;OUT: ((a_53 1))

(get-value ( (< 0 b_60)))
;OUT: (((< 0 b_60) true))

(get-value ( (select java.lang.Object_owner_1585 THIS)))
;OUT: (((select java.lang.Object_owner_1585 THIS) REF!val!18))

(get-value ( 2))
;OUT: ((2 2))

(get-value ( a_53))
;OUT: ((a_53 1))

(get-value ( (- 2147483647 b_60)))
;OUT: (((- 2147483647 b_60) 0))

(get-value ( (<= (- (- 2147483648) b_60) a_53)))
;OUT: (((<= (- (- 2147483648) b_60) a_53) true))

(get-value ( 0))
;OUT: ((0 0))

(get-value ( (< 0 a_53)))
;OUT: (((< 0 a_53) true))

(get-value ( (or (not (and (< a_53 0) (< b_60 0))) (<= (- (- 2147483648) b_60) a_53))))
;OUT: (((or (not (and (< a_53 0) (< b_60 0))) (<= (- (- 2147483648) b_60) a_53)) true))

(get-value ( (- 2147483648)))
;OUT: (((- 2147483648) (- 2147483648)))

(get-value ( (select java.lang.Object_theString_6988 THIS)))
;OUT: (((select java.lang.Object_theString_6988 THIS) REF!val!11))

(get-value ( (not (and (< a_53 0) (< b_60 0)))))
;OUT: (((not (and (< a_53 0) (< b_60 0))) true))

(get-value ( a_53))
;OUT: ((a_53 1))

(get-value ( (<= a_53 (- 2147483647 b_60))))
;OUT: (((<= a_53 (- 2147483647 b_60)) false))

(get-value ( b_60))
;OUT: ((b_60 2147483647))

(get-value ( 2147483647))
;OUT: ((2147483647 2147483647))

(get-value ( (and (< a_53 0) (< b_60 0))))
;OUT: (((and (< a_53 0) (< b_60 0)) false))

(get-value ( NULL))
;OUT: ((NULL REF!val!18))

(get-value ( THIS))
;OUT: ((THIS REF!val!0))

(get-value ( BL_45Start_1))
;OUT: ((BL_45Start_1 false))

(get-value ( BL_62bodyBegin_2))
;OUT: ((BL_62bodyBegin_2 false))

(get-value ( BL_45_AfterLabel_3))
;OUT: ((BL_45_AfterLabel_3 false))

(get-value ( ASSERT_37_45_45___4))
;OUT: ((ASSERT_37_45_45___4 true))

(get-value ( ASSERT_38_78_78___5))
;OUT: ((ASSERT_38_78_78___5 false))

(pop 1)
;OUT: success

(assert ASSERT_38_78_78___5)
;OUT: success

(push 1)
;OUT: success

(check-sat)
;OUT: unsat

(exit)
;OUT: success

;;Exiting solver
