defmodule FormDisappearing.Repo.Migrations.CreateStudents do
  use Ecto.Migration

  def change do
    create table(:students) do
      add :name, :string

      timestamps(type: :utc_datetime)
    end
  end
end
