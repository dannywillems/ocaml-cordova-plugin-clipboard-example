let on_device_ready _ =
  let c = Cordova_clipboard.clipboard () in
  Cordova_clipboard.copy c "Hello world" ();
  Cordova_clipboard.paste c (fun str -> Jsoo_lib.alert str) ()

let _ =
  Cordova.Event.device_ready on_device_ready
