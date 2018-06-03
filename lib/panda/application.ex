defmodule Panda.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(Panda.Cache, [])
    ]

    opts = [strategy: :one_for_one, name: Panda.Supervisor]
    Supervisor.start_link(children, opts)
  end
end