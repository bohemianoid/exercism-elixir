defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error

      legacy? == true -> :unknown

      level == 0 -> :trace
      level == 5 -> :fatal

      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    cond do
      to_label(level, legacy?) == :error -> :ops
      to_label(level, legacy?) == :fatal -> :ops

      to_label(level, legacy?) == :unknown -> cond do
        legacy? == true -> :dev1
        true -> :dev2
      end

      true -> false
    end
  end
end
