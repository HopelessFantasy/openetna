.class Lcom/android/htmlviewer/HTMLViewerActivity$WebChrome;
.super Landroid/webkit/WebChromeClient;
.source "HTMLViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htmlviewer/HTMLViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebChrome"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htmlviewer/HTMLViewerActivity;


# direct methods
.method constructor <init>(Lcom/android/htmlviewer/HTMLViewerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/htmlviewer/HTMLViewerActivity$WebChrome;->this$0:Lcom/android/htmlviewer/HTMLViewerActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 6
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity$WebChrome;->this$0:Lcom/android/htmlviewer/HTMLViewerActivity;

    invoke-virtual {v0}, Lcom/android/htmlviewer/HTMLViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    mul-int/lit8 v2, p2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 158
    const/16 v0, 0x64

    if-ne p2, v0, :cond_17

    .line 159
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 161
    :cond_17
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .parameter "view"
    .parameter "title"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity$WebChrome;->this$0:Lcom/android/htmlviewer/HTMLViewerActivity;

    invoke-virtual {v0, p2}, Lcom/android/htmlviewer/HTMLViewerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method
