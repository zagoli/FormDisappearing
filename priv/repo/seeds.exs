# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     FormDisappearing.Repo.insert!(%FormDisappearing.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias FormDisappearing.Students

student_attrs = %{name: "John Doe"}

Students.create_student(student_attrs)
