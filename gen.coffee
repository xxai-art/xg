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
  await $"rm -rf #{i}"
  await $"cp -R xg #{i}"
  return

do =>
  for i from TO
    await gen i
  await $"git add . && git commit -m. && git push"
  return
