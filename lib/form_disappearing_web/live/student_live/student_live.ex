defmodule FormDisappearingWeb.StudentLive do
  use FormDisappearingWeb, :live_view
  alias FormDisappearing.Students

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :students, Students.list_students())}
  end

  def handle_event("new", _params, socket) do
    new_name = "John Doe #{System.unique_integer([:positive, :monotonic])}"
    Students.create_student(%{name: new_name})
    {:noreply, assign(socket, :students, Students.list_students())}
  end
end
