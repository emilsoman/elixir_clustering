use Mix.Config

config :libcluster,
  topologies: [
    gossip: [
      strategy: Cluster.Strategy.Gossip
    ]
  ]
