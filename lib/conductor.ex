defmodule Conductor do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # Define workers and child supervisors to be supervised
      # worker(Conductor.Worker, [arg1, arg2, arg3])
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Conductor.Supervisor]
    Supervisor.start_link(children, opts)
  end


  @frame_length 100

  def run do
    for x <- Stream.interval(@frame_length) do
      IO.puts(x)
    end
  end
end
