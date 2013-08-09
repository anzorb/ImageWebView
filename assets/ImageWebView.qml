import bb.cascades 1.0
WebView {
    id: imageWebView
    property variant imageURL: ""
    url: "local:///assets/web/index.html"            
    onMessageReceived: {
        if(message.data === "ready"){
            postMessage(imageURL);
        }
        else if(JSON.parse(message.data).action === "save"){
            console.log("saving image url: " + JSON.parse(message.data).url);
        }
    }
}