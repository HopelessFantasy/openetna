.class Lcom/android/mms/model/ImageModel$ScheduledJob;
.super Ljava/util/TimerTask;
.source "ImageModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/model/ImageModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScheduledJob"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/model/ImageModel;


# direct methods
.method constructor <init>(Lcom/android/mms/model/ImageModel;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/mms/model/ImageModel$ScheduledJob;->this$0:Lcom/android/mms/model/ImageModel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const-string v8, "ImageModel"

    .line 67
    iget-object v3, p0, Lcom/android/mms/model/ImageModel$ScheduledJob;->this$0:Lcom/android/mms/model/ImageModel;

    iget-object v3, v3, Lcom/android/mms/model/ImageModel;->mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

    invoke-virtual {v3}, Landroid/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v0

    .line 68
    .local v0, currentTime:J
    iget-object v3, p0, Lcom/android/mms/model/ImageModel$ScheduledJob;->this$0:Lcom/android/mms/model/ImageModel;

    iget-object v3, v3, Lcom/android/mms/model/ImageModel;->mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/android/mms/model/ImageModel$ScheduledJob;->this$0:Lcom/android/mms/model/ImageModel;

    invoke-static {v6}, Lcom/android/mms/model/ImageModel;->access$000(Lcom/android/mms/model/ImageModel;)J

    move-result-wide v6

    sub-long v6, v0, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I

    move-result v2

    .line 69
    .local v2, result:I
    if-lez v2, :cond_53

    .line 71
    const-string v3, "ImageModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumeRight result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v3, p0, Lcom/android/mms/model/ImageModel$ScheduledJob;->this$0:Lcom/android/mms/model/ImageModel;

    invoke-static {v3, v0, v1}, Lcom/android/mms/model/ImageModel;->access$002(Lcom/android/mms/model/ImageModel;J)J

    .line 73
    iget-object v3, p0, Lcom/android/mms/model/ImageModel$ScheduledJob;->this$0:Lcom/android/mms/model/ImageModel;

    invoke-static {v3}, Lcom/android/mms/model/ImageModel;->access$100(Lcom/android/mms/model/ImageModel;)Ljava/util/Timer;

    move-result-object v3

    new-instance v4, Lcom/android/mms/model/ImageModel$ScheduledJob;

    iget-object v5, p0, Lcom/android/mms/model/ImageModel$ScheduledJob;->this$0:Lcom/android/mms/model/ImageModel;

    invoke-direct {v4, v5}, Lcom/android/mms/model/ImageModel$ScheduledJob;-><init>(Lcom/android/mms/model/ImageModel;)V

    mul-int/lit16 v5, v2, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 81
    :goto_52
    return-void

    .line 77
    :cond_53
    iget-object v3, p0, Lcom/android/mms/model/ImageModel$ScheduledJob;->this$0:Lcom/android/mms/model/ImageModel;

    invoke-static {v3}, Lcom/android/mms/model/ImageModel;->access$100(Lcom/android/mms/model/ImageModel;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 78
    iget-object v3, p0, Lcom/android/mms/model/ImageModel$ScheduledJob;->this$0:Lcom/android/mms/model/ImageModel;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/mms/model/ImageModel;->mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 79
    const-string v3, "ImageModel"

    const-string v3, "In ScheduledJob!! consume finished!!"

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method
