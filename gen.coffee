#!/usr/bin/env coffee

> zx/globals:
  @w5/uridir

TO = "gt apg".split ' '
ROOT = uridir(import.meta)
cd ROOT

gen = (i)=>
  await $"rm -rf #{i}"
  await "cp -R xp #{i}"
  return

do =>
  for i from TO
    await gen i
  await $"git add . && git commit -m. && git push"
  return
