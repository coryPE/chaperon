defmodule Chaperon.Session.Test do
  use ExUnit.Case
  doctest Chaperon
  alias Chaperon.Session

  setup do
    {:ok, %{session: %Session{}}}
  end

  test "assign", %{session: s} do
    assert Session.assign(s, foo: 1, bar: 2).assigns == %{
      foo: 1,
      bar: 2
    }
    assert Session.assign(s, foo: 1).assigns == %{foo: 1}
  end
end
