#!/usr/bin/env coffee

> zx/globals:
  @w5/uridir

###
gt GreptimeDB
apg Analytical Postgresql
xg xxai.art Postgresql
###

TO = "gt apg".split ' '
ROOT = uridir(import.meta)
cd ROOT

gen = (i)=>
  await $"./clone.sh #{i}"
  return

do =>
  ing = []
  for i from TO
    ing.push gen i
  await Promise.all ing
  # await $"git add . && git commit -m. && git push"
  return
