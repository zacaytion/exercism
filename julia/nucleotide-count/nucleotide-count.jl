"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    nucleotide_count = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0);
    for c in strand
        if c ∉ ['A', 'C', 'G', 'T'] throw(DomainError(c)) end
        nucleotide_count[c] = get(nucleotide_count, c, 0) + 1
    end
    return nucleotide_count
end
