module Transitions.For_List_2D (
    transition_world -- :: List_2D Cell -> List_2D Cell 
) where 

import Data.Cell (Cell (Head, Tail, Conductor, Empty)) 
import Data.Coordinates 
import Data.List_2D 

transition_world :: List_2D Cell -> List_2D Cell 
transition_world world = case world of 
    (Head,(x,y)):rest-> (Tail,(x,y)): transition_world rest 
    (Tail,(x,y)):rest -> (Conductor, (x, y)): transition_world rest 
    (Empty, (x, y)):rest ->(Empty, (x, y)): transition_world rest 
    (Conductor, (x, y)):rest 
     | element_occurrence==1 || element_occurrence==2 -> (Head, (x, y)): transitio 
     n_world rest 
     | otherwise -> (Conductor, (x, y)): transition_world rest 
    [] -> [] 