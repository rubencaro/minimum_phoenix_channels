import { Socket } from './phoenix.js'

console.log(Socket)

let socket = new Socket("/socket", {})
socket.connect()

let channel = socket.channel("main:123", {})
channel.on("new_msg", msg => console.log("Got message", msg))

channel.join()
  .receive("ok", resp => { console.log("Joined successfully", resp) })
  .receive("error", resp => { console.log("Unable to join", resp) })

channel.push("new_msg", {body: "hi"})