(** * by_we_know.v
Authors: 
    - Cosmin Manea (1298542)
Creation date: 23 May 2021

Version of [By ... we know ...] tactic.
[By ... we know ...] can be used to prove a result using an already existing result.

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
Add LoadPath "C:/Users/cosmi/Desktop/SEP_my_branch_of_forward_reasoning/waterproof/coq_tactics/new_wplib/" as wplib.
Load auxiliary.

Ltac2 Notation "By" t(constr) "we" "know" s(ident) :=
    Aux.ltac2_assert s t.