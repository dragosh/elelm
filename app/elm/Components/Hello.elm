module Components.Hello exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


-- hello component


hello : String -> Html a
hello model =
    div
        [ class "h1" ]
        [ text ("Hello, " ++ model ++ "!") ]
