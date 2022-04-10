
type request
type response
type httpFunction = (request, response) => ()
@module("@google-cloud/functions-framework") external http: (string, httpFunction) => () = "http"
@send external send: (response, string) => () = "send"

http("foo2", (_req, res) => {
  res->send("Hi!")
})

