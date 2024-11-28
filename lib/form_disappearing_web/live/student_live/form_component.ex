defmodule FormDisappearingWeb.StudentLive.Form do
  use FormDisappearingWeb, :live_component
  alias FormDisappearing.Students

  def update(assigns, socket) do
    {:ok, socket |> assign(assigns) |> assign_form()}
  end

  defp assign_form(socket) do
    changeset = Students.change_student(socket.assigns.student)
    socket |> assign(:form, to_form(changeset))
  end
end
