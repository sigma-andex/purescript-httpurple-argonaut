# purescript-httpurple-argonaut

[argonaut](https://github.com/purescript-contrib/purescript-argonaut) decoder for [HTTPurple 🪁](https://github.com/sigma-andex/purescript-httpurple).

## Installation

```bash
spago install httpurple-argonaut
```

## Usage

```purescript
import HTTPurple.Json.Argonaut as Argonaut

...
myRequest <- fromJson Argonaut.jsonDecoder body
...
ok $ toJson Argonaut.jsonEncoder myResponse
...
```
