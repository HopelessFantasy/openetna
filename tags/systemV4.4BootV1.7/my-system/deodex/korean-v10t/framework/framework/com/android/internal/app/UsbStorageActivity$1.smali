.class Lcom/android/internal/app/UsbStorageActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbStorageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/UsbStorageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/UsbStorageActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/UsbStorageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/app/UsbStorageActivity$1;->this$0:Lcom/android/internal/app/UsbStorageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.UMS_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 50
    iget-object v1, p0, Lcom/android/internal/app/UsbStorageActivity$1;->this$0:Lcom/android/internal/app/UsbStorageActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/UsbStorageActivity;->finish()V

    .line 52
    :cond_11
    return-void
.end method
