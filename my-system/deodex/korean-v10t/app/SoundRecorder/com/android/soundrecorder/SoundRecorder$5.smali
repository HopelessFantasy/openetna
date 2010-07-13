.class Lcom/android/soundrecorder/SoundRecorder$5;
.super Landroid/content/BroadcastReceiver;
.source "SoundRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .registers 2
    .parameter

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$5;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1091
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1095
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$5;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v1, v1, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 1096
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder$5;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    const v3, 0x7f040008

    invoke-virtual {v2, v3}, Lcom/android/soundrecorder/SoundRecorder;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/soundrecorder/SoundRecorder$5$1;

    invoke-direct {v3, p0}, Lcom/android/soundrecorder/SoundRecorder$5$1;-><init>(Lcom/android/soundrecorder/SoundRecorder$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1113
    :cond_34
    :goto_34
    return-void

    .line 1107
    :cond_35
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1108
    const-string v1, "SoundRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerExternalStorageListener   mSampleInterrupted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$5;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-boolean v3, v3, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$5;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 1110
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$5;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 1111
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$5;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-static {v1}, Lcom/android/soundrecorder/SoundRecorder;->access$300(Lcom/android/soundrecorder/SoundRecorder;)V

    goto :goto_34
.end method
