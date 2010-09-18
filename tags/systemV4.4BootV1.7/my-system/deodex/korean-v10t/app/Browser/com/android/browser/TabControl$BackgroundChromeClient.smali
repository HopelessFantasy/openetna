.class Lcom/android/browser/TabControl$BackgroundChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "TabControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/TabControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/TabControl;


# direct methods
.method private constructor <init>(Lcom/android/browser/TabControl;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/browser/TabControl$BackgroundChromeClient;->this$0:Lcom/android/browser/TabControl;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/TabControl;Lcom/android/browser/TabControl$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/browser/TabControl$BackgroundChromeClient;-><init>(Lcom/android/browser/TabControl;)V

    return-void
.end method


# virtual methods
.method public onRequestFocus(Landroid/webkit/WebView;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/browser/TabControl$BackgroundChromeClient;->this$0:Lcom/android/browser/TabControl;

    invoke-virtual {v1, p1}, Lcom/android/browser/TabControl;->getTabFromView(Landroid/webkit/WebView;)Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 140
    .local v0, t:Lcom/android/browser/TabControl$Tab;
    iget-object v1, p0, Lcom/android/browser/TabControl$BackgroundChromeClient;->this$0:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v1

    if-eq v0, v1, :cond_17

    .line 141
    iget-object v1, p0, Lcom/android/browser/TabControl$BackgroundChromeClient;->this$0:Lcom/android/browser/TabControl;

    invoke-static {v1}, Lcom/android/browser/TabControl;->access$100(Lcom/android/browser/TabControl;)Lcom/android/browser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserActivity;->showTab(Lcom/android/browser/TabControl$Tab;)V

    .line 143
    :cond_17
    return-void
.end method
