open Lib.Logger
open Lib.Dir

let () = 
    Logger.log "Running...\n";
    Dir.map "." 0
