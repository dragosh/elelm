module Main exposing (..)

import Html exposing (Html, Attribute, text, div, input)
import Html.Attributes exposing (..)
import Html exposing (beginnerProgram)
import Html.Events exposing (onInput)
import Components.Hello exposing (hello)


main =
    beginnerProgram { model = "Elm", view = view, update = update }



-- UPDATE


type Msg
    = NewContent String


update (NewContent content) oldContent =
    content



-- VIEW


view content =
    div []
        [ input [ placeholder "who are you?", onInput NewContent, myStyle ] []
        , div [ myStyle ] [ hello content ]
        ]


myStyle =
    style
        [ ( "width", "100%" )
        , ( "height", "40px" )
        , ( "padding", "10px 0" )
        , ( "font-size", "2em" )
        , ( "text-align", "center" )
        ]
