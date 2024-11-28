defmodule FormDisappearing.Repo do
  use Ecto.Repo,
    otp_app: :form_disappearing,
    adapter: Ecto.Adapters.Postgres
end
