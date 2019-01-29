defmodule TutorialTomlTest do
  use ExUnit.Case
  doctest TutorialToml

  test "greets the world" do
    assert TutorialToml.hello() == :world
  end
end
