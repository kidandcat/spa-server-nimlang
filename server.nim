# example.nim
import htmlgen
import jester
import os

discard execShellCmd("karun --css src/index.nim")

settings:
    staticDir = "nimcache"

routes:
  get "/":
    redirect(uri("index.html"))