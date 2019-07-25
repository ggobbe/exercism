defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna([]), do: ''
  def to_rna('G' ++ rest), do: 'C' ++ to_rna(rest)
  def to_rna('C' ++ rest), do: 'G' ++ to_rna(rest)
  def to_rna('T' ++ rest), do: 'A' ++ to_rna(rest)
  def to_rna('A' ++ rest), do: 'U' ++ to_rna(rest)
  def to_rna(_), do: raise "Invalid DNA"
end
