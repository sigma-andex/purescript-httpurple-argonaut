{ name = "httpurple-argonaut"
, dependencies =
  [ "argonaut"
  , "console"
  , "effect"
  , "either"
  , "httpurple"
  , "prelude"
  ]
, packages = ./packages.dhall
, license = "MIT-0"
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
, repository = "https://github.com/sigma-andex/purescript-httpurple-argonaut.git"
}
