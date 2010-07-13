.class Lcom/android/soundrecorder/SRListActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SRListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SRListActivity;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SRListActivity;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SRListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/soundrecorder/SRListActivity$3;->this$0:Lcom/android/soundrecorder/SRListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 379
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, action:Ljava/lang/String;
    const-string v1, "SRListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerExternalStorageListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 382
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity$3;->this$0:Lcom/android/soundrecorder/SRListActivity;

    iget-object v2, p0, Lcom/android/soundrecorder/SRListActivity$3;->this$0:Lcom/android/soundrecorder/SRListActivity;

    iget-object v2, v2, Lcom/android/soundrecorder/SRListActivity;->path:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/android/soundrecorder/SRListActivity;->access$000(Lcom/android/soundrecorder/SRListActivity;Ljava/io/File;)V

    .line 386
    :cond_2d
    :goto_2d
    return-void

    .line 383
    :cond_2e
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 384
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity$3;->this$0:Lcom/android/soundrecorder/SRListActivity;

    iget-object v2, p0, Lcom/android/soundrecorder/SRListActivity$3;->this$0:Lcom/android/soundrecorder/SRListActivity;

    iget-object v2, v2, Lcom/android/soundrecorder/SRListActivity;->path:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/android/soundrecorder/SRListActivity;->access$000(Lcom/android/soundrecorder/SRListActivity;Ljava/io/File;)V

    goto :goto_2d
.end method
