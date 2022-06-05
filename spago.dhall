{ name = "purescript-httpurple-argonaut"
, dependencies =
  [ "argonaut"
  , "console"
  , "effect"
  , "either"
  , "httpurple"
  , "prelude"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
