open Logger

module Dir = struct
    let rec map dir depth =
        Array.iter
        (fun x ->
          let full_path = Filename.concat dir x in
          let is_dir = Sys.is_directory full_path in
          Logger.log "%d%s%s\n" (depth) (if is_dir then "d " else "f ") x;
        if is_dir then
            try
                map full_path (depth + 1)
            with _ -> ())
        (Sys.readdir dir)
end
