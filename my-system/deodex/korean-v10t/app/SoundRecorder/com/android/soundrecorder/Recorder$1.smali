.class Lcom/android/soundrecorder/Recorder$1;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/Recorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/Recorder;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/soundrecorder/Recorder$1;->this$0:Lcom/android/soundrecorder/Recorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .registers 9
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 178
    const-string v0, "Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v0, "SUDHIR_RECORDER"

    const-string v1, " 3.5 Recorder. startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder$1;->this$0:Lcom/android/soundrecorder/Recorder;

    iget-object v0, v0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 184
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder$1;->this$0:Lcom/android/soundrecorder/Recorder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 186
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder$1;->this$0:Lcom/android/soundrecorder/Recorder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/soundrecorder/Recorder$1;->this$0:Lcom/android/soundrecorder/Recorder;

    iget-wide v3, v3, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 187
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder$1;->this$0:Lcom/android/soundrecorder/Recorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/soundrecorder/Recorder;->access$000(Lcom/android/soundrecorder/Recorder;I)V

    .line 189
    return-void
.end method
