erlang_cookie = :sha256
|> :crypto.hash(System.get_env("ERLANG_COOKIE") || "/hdNA305fOYse3Rhak3qXn7CFJ/2zugbChgrnVm/M4HKRXGp0PDi7BFJpUaEaqaN")
|> Base.encode16
|> String.to_atom

use Mix.Releases.Config,
  default_release: :tutorial_toml,
  default_environment: Mix.env()

release :tutorial_toml do
  set version: "1.0.0"
  set applications: [
    tutorial_toml: :permanent
  ]
end

environment :tutorial_prod do
  set dev_mode: false
  set include_erts: true
  set include_system_libs: true
  set include_src: false
  set cookie: erlang_cookie
  set overlays: [
    {:copy, "rel/config/config_prod.toml", "etc/config_prod.toml"}
  ]
  set overlay_vars: [
    release_name: "tutorial_toml"
  ]
  set config_providers: [
    {Toml.Provider, path: "${RELEASE_ROOT_DIR}/etc/config_prod.toml", transforms: []}
  ]
end