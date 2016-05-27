let on_device_ready _ =
  let c = Cordova_clipboard.t () in
  c#copy "Hello world" ();
  c#paste (fun str -> Jsoo_lib.alert str) ()

let _ =
  Cordova.Event.device_ready on_device_ready
