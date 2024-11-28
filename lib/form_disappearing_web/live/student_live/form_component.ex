defmodule FormDisappearingWeb.StudentLive.Form do
  use FormDisappearingWeb, :live_component
  alias FormDisappearing.Students

  def update(assigns, socket) do
    {:ok, socket |> assign(assigns) |> assign_form()}
  end

  defp assign_form(socket) do
    changeset = Students.change_student(socket.assigns.student)
    socket |> assign(:form, to_form(changeset))
    # The following line solves the issue (https://elixirforum.com/t/form-in-live-components-disappear-after-socket-update/67642/6)
    # socket |> assign(:form, to_form(changeset, id: "student_#{socket.assigns.student.id}"))
  end
end
