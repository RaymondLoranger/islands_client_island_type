use Mix.Config

config :islands_client_island_type,
  course_ref:
    """
    Inspired by the course [Elixir for Programmers](https://codestool.
    coding-gnome.com/courses/elixir-for-programmers) by Dave Thomas.
    """
    |> String.replace("\n", "")
