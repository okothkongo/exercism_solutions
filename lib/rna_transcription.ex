defmodule RnaTranscription do
  @conv %{?G => ?C, ?C => ?G, ?T => ?A, ?A => ?U}
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> Enum.map(fn char -> @conv[char] end)  
  end
end
