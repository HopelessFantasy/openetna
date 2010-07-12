.class Lcom/android/internal/app/UsbStorageStopActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbStorageStopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/UsbStorageStopActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/UsbStorageStopActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/UsbStorageStopActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/app/UsbStorageStopActivity$1;->this$0:Lcom/android/internal/app/UsbStorageStopActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.UMS_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 47
    iget-object v1, p0, Lcom/android/internal/app/UsbStorageStopActivity$1;->this$0:Lcom/android/internal/app/UsbStorageStopActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/UsbStorageStopActivity;->finish()V

    .line 49
    :cond_11
    return-void
.end method
