(* Filters for terms and eterms *)

open Constr
open Environ
open Evd

type 'a filter_strategy = env -> evar_map -> 'a list -> 'a list

(* Filter a list of terms to those that have the goal type *)
val filter_by_type : types -> types filter_strategy

(* Find the singleton list with the first term that has the goal type *)
val find_by_type : types -> types filter_strategy

(* Filter a list of terms to those not exactly the same as the supplied term *)
val filter_not_same : types -> types filter_strategy

(* Filter a list of reduced candidates to those that do not reference the IH *)
val filter_ihs : types filter_strategy

