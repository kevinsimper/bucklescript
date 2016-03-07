(* BuckleScript compiler
 * Copyright (C) 2015-2016 Bloomberg Finance L.P.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, with linking exception;
 * either version 2.1 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 *)

(* Author: Hongbo Zhang  *)


type env = 
  | Browser
  | NodeJS


let default_env = ref NodeJS 

let get_env () = !default_env

let set_env env = default_env := env 

let stdlib_set = String_set.of_list [
    "arg";
    "gc";
    "printexc";
    "array";
    "genlex";
    "printf";
    "arrayLabels";
    "hashtbl";
    "queue";
    "buffer";			
    "int32";
    "random";
    "bytes";			
    "int64";
    "scanf";
    "bytesLabels";
    "lazy";
    "set";
    "callback";
    "lexing";
    "sort";
    "camlinternalFormat";
    "list";
    "stack";
    "camlinternalFormatBasics";
    "listLabels";
    "stdLabels";
    "camlinternalLazy";
    "map";

    (* "std_exit"; *)
    (* https://developer.mozilla.org/de/docs/Web/Events/beforeunload *)
    "camlinternalMod";
    "marshal";
    "stream";
    "camlinternalOO";
    "moreLabels";
    "string";
    "char";
    "nativeint";
    "stringLabels";
    "complex";
    "obj";
    "sys";
    "digest";
    "oo";
    "weak";
    "filename";
    "parsing";
    "format";
    "pervasives"
]

let runtime_set = String_set.of_list [
    "caml_array";
    "caml_float";
    "caml_obj";
    "caml_bigarray";
    "caml_format";		
    "caml_oo";		
    "caml_int64";
    "caml_primitive";
    "caml_utils";
    "caml_builtin_exceptions";
    "caml_exceptions";
    "caml_curry";
    "caml_lexer";
    "caml_parser";
    "caml_string"
    (* "caml_sys"; *)
    (* "caml_unix"; *)
    (* "caml_io"; *)
]


let prim = "Caml_primitive" 

let builtin_exceptions = "Caml_builtin_exceptions"


let io = "Caml_io"

let sys = "Caml_sys"

let lexer = "Caml_lexer"
let parser = "Caml_parser"
let obj_runtime = "Caml_obj"

let array = "Caml_array"

let format = "Caml_format"

let string = "Caml_string"

let float = "Caml_float"

let oo = "Caml_oo"
let curry = "Caml_curry"
let internalMod = "Caml_internalMod"
let bigarray = "Caml_bigarray"
let unix = "Caml_unix"
let int64 = "Caml_int64"