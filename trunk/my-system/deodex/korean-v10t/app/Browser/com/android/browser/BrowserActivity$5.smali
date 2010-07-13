.class Lcom/android/browser/BrowserActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 802
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$5;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 803
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 805
    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 807
    .local v0, down:Z
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$5;->this$0:Lcom/android/browser/BrowserActivity;

    if-nez v0, :cond_1c

    const/4 v2, 0x1

    :goto_18
    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->onNetworkToggle(Z)V

    .line 809
    .end local v0           #down:Z
    :cond_1b
    return-void

    .restart local v0       #down:Z
    :cond_1c
    move v2, v3

    .line 807
    goto :goto_18
.end method
