By [Dmytro Nasyrov, Founder, CTO at Pharos Production Inc.](https://www.linkedin.com/in/dmytronasyrov/)
And [Pharos Production Inc. - Web3, blockchain, fintech, defi software development services](https://pharosproduction.com)

# Tutorial on TOML configuration in Elixir project.

## You can find it in our Medium publication
[Pharos Production Medium Article](https://medium.com/pharos-production/elixir-toml-configuration-d6b42a88fd65).

Also you're warmely welcome to say hello to us
[Pharos Production - Blockchain and FinTech Software Development](https://pharosproduction.com)

## Short step-by-step instruction
```
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
iex> TutorialToml.read_demo_value
> Hello, I'm new prod value from TOML
```
