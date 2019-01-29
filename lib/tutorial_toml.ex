defmodule TutorialToml do
  @moduledoc """
  0. Initial TOML configuration is in rel->config->config_prod.toml.
  You can override config variables from prod.exs using this file.
  1. Make a prod release from console:
  $> MIX_ENV=prod mix release --env=prod
  2. Launch app in a console mode:
  $> sh _build/prod/rel/tutorial_toml/bin/tutorial_toml console
  3. Read the current value:
  iex> TutorialToml.read_demo_value
  > Hello, I'm old prod value from TOML
  4. Open TOML configuration at _build->config->config_prod.toml
  5. Change demo_value to a new value
  6. Without stopping the app in the second console run:
  $> sh _build/prod/rel/tutorial_toml/bin/tutorial_toml reload_config
  7. Check the value again in the first terminal:
  iex> TutorialToml.read_demo_vaxlue
  > Hello, I'm new prod value from TOML
  """

  @doc "Read demo value from iex: TutorialToml.read_demo_value"
  def read_demo_value, do: Application.get_env(:tutorial_toml, :demo_value)
end
