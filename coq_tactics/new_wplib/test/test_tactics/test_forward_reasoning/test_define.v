(** * test_defined.v
Authors: 
    - Cosmin Manea (1298542)
Creation date: 06 June 2021

Test cases for the [We show/prove both directions] tactic.
Tests pass if they can be run without unhandled errors.
--------------------------------------------------------------------------------

This file is part of Waterproof-lib.

Waterproof-lib is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Waterproof-lib is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Waterproof-lib.  If not, see <https://www.gnu.org/licenses/>.
*)

From Ltac2 Require Import Ltac2.

Add LoadPath "C:/Users/cosmi/Desktop/SEP - CM forward reasoning/waterproof/coq_tactics/new_wplib" as wplib2.
Load define.

(** Test 0: This should work just fine *)
Goal forall n : nat, ((n = n) /\ (n + 1 = n + 1)).
    intro n.
    Define m := n.
Abort.


(** Test 1: This should also work *)
Goal forall n : nat, ((n = n) \/ (n + 1 = n + 1)).
    intro n.
    Define m := n.
Abort.
