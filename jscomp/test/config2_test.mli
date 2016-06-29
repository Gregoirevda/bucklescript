[@@@bs.config {obj_type_auto_uncurry = true ; (* non_export = true *) } ]


class type v = object [@uncurry]
  method hey : int -> int -> int 
end 

class type v2 = object
  method hey : int -> int -> int 
end 

type vv = 
  [%bs.obj: < 
    hey : int -> int -> int 
  >  [@uncurry]]

type vv2 = 
  [%bs.obj: < 
    hey : int -> int -> int 
  > ]


val test_v : v Js.t -> int
val test_vv : vv -> int 
