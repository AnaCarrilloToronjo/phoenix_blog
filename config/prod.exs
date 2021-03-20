use Mix.Config

# For production, don't forget to configure the url host
# to something meaningful, Phoenix uses this information
# when generating URLs.
#
# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix phx.digest` task,
# which you should run after static files are built and
# before starting your production server.
config :phoenix_blog, PhoenixBlogWeb.Endpoint,
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json"

# Do not print debug messages in production
config :logger, level: :info

config :phoenix_blog, PhoenixBlogWeb.Endpoint,
  http: [
    port: {:system, :integer, "PORT", 4000},
    transport_options: [socket_opts: [:inet6]]
  ],
  secret_key_base: "UF2mY/FssOeWGtS9zpWUHbA4Tdt9M/7QtFf3V+pBKl+fG2uF//k2qupvw0LFkgnq"

config :phoenix_blog, PhoenixBlogWeb.Endpoint, server: true
