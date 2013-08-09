// Default empty project template
import bb.cascades 1.0

// creates one page with a label
Page {
    Container {
        layout: DockLayout {}
        WebView {
            id: imageWebView
            url: "local:///assets/web/index.html"            
            onMessageReceived: {
                if(message.data === "ready"){
                    postMessage("https://www.google.ca/images/srpr/logo4w.png");
                }
                else if(JSON.parse(message.data).action === "save"){
                    console.log("saving image url: " + JSON.parse(message.data).url);
                }
            }
            settings.webInspectorEnabled: true 
        }
    }
}