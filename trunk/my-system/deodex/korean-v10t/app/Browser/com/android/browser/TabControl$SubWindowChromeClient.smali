.class Lcom/android/browser/TabControl$SubWindowChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "TabControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/TabControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubWindowChromeClient"
.end annotation


# instance fields
.field private final mClient:Landroid/webkit/WebChromeClient;

.field private final mTab:Lcom/android/browser/TabControl$Tab;

.field final synthetic this$0:Lcom/android/browser/TabControl;


# direct methods
.method constructor <init>(Lcom/android/browser/TabControl;Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebChromeClient;)V
    .registers 4
    .parameter
    .parameter "t"
    .parameter "client"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/browser/TabControl$SubWindowChromeClient;->this$0:Lcom/android/browser/TabControl;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/android/browser/TabControl$SubWindowChromeClient;->mTab:Lcom/android/browser/TabControl$Tab;

    .line 116
    iput-object p3, p0, Lcom/android/browser/TabControl$SubWindowChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    .line 117
    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 4
    .parameter "window"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/browser/TabControl$SubWindowChromeClient;->this$0:Lcom/android/browser/TabControl;

    invoke-static {v0}, Lcom/android/browser/TabControl;->access$100(Lcom/android/browser/TabControl;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/TabControl$SubWindowChromeClient;->mTab:Lcom/android/browser/TabControl$Tab;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    .line 133
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 6
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/browser/TabControl$SubWindowChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/browser/TabControl$SubWindowChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 121
    return-void
.end method
