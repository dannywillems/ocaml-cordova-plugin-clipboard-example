let on_device_ready _ =
  let c = Cordova_clipboard.t () in
  c#copy "Hello world" ();
  c#paste (fun str -> Dom_html.window##(alert (Js.string str))) ();
  Js._false

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
