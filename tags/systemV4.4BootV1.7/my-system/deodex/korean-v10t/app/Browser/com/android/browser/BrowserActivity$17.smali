.class Lcom/android/browser/BrowserActivity$17;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->setupBrowserToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 4250
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$17;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 4252
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$17;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$000(Lcom/android/browser/BrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4253
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$17;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$2500(Lcom/android/browser/BrowserActivity;)V

    .line 4261
    :goto_d
    return-void

    .line 4256
    :cond_e
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$17;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_d
.end method
