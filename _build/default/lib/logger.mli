module Logger : sig
    val log : ('a, out_channel, unit) format -> 'a
end
