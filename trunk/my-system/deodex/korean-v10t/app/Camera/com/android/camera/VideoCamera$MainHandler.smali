.class Lcom/android/camera/VideoCamera$MainHandler;
.super Landroid/os/Handler;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$MainHandler;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 28
    .parameter "msg"

    .prologue
    .line 176
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1b2

    .line 246
    const-string v22, "videocamera"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unhandled message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_27
    :goto_27
    return-void

    .line 179
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/camera/VideoCamera;->access$100(Lcom/android/camera/VideoCamera;)V

    goto :goto_27

    .line 184
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/camera/VideoCamera;->access$200(Lcom/android/camera/VideoCamera;)Z

    move-result v22

    if-eqz v22, :cond_27

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 186
    .local v12, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/camera/VideoCamera;->access$300(Lcom/android/camera/VideoCamera;)J

    move-result-wide v22

    sub-long v4, v12, v22

    .line 190
    .local v4, delta:J
    const-wide/32 v22, 0x83d60

    cmp-long v22, v4, v22

    if-ltz v22, :cond_1a8

    const/16 v22, 0x1

    move/from16 v3, v22

    .line 193
    .local v3, countdown_remaining_time:Z
    :goto_59
    if-eqz v3, :cond_66

    .line 194
    const-wide/16 v22, 0x0

    const-wide/32 v24, 0x927c0

    sub-long v24, v24, v4

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 197
    :cond_66
    const-wide/16 v22, 0x1f4

    add-long v22, v22, v4

    const-wide/16 v24, 0x3e8

    div-long v18, v22, v24

    .line 198
    .local v18, seconds:J
    const-wide/16 v22, 0x3c

    div-long v9, v18, v22

    .line 199
    .local v9, minutes:J
    const-wide/16 v22, 0x3c

    div-long v6, v9, v22

    .line 200
    .local v6, hours:J
    const-wide/16 v22, 0x3c

    mul-long v22, v22, v6

    sub-long v14, v9, v22

    .line 201
    .local v14, remainderMinutes:J
    const-wide/16 v22, 0x3c

    mul-long v22, v22, v9

    sub-long v16, v18, v22

    .line 203
    .local v16, remainderSeconds:J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    .line 204
    .local v20, secondsString:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_a9

    .line 205
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 207
    :cond_a9
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 208
    .local v11, minutesString:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_cf

    .line 209
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 211
    :cond_cf
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 212
    .local v21, text:Ljava/lang/String;
    const-wide/16 v22, 0x0

    cmp-long v22, v6, v22

    if-lez v22, :cond_137

    .line 213
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, hoursString:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_119

    .line 215
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 217
    :cond_119
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 219
    .end local v8           #hoursString:Ljava/lang/String;
    :cond_137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/camera/VideoCamera;->access$400(Lcom/android/camera/VideoCamera;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/camera/VideoCamera;->access$500(Lcom/android/camera/VideoCamera;)Z

    move-result v22

    move/from16 v0, v22

    move v1, v3

    if-eq v0, v1, :cond_186

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v3

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$502(Lcom/android/camera/VideoCamera;Z)Z

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    if-eqz v3, :cond_1ae

    const v23, 0x7f070002

    :goto_172
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 231
    .local v2, color:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/camera/VideoCamera;->access$400(Lcom/android/camera/VideoCamera;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    .end local v2           #color:I
    :cond_186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mVideoPreview:Lcom/android/camera/VideoPreview;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/VideoPreview;->invalidate()V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/camera/VideoCamera;->access$600(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x5

    const-wide/16 v24, 0x3e8

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_27

    .line 190
    .end local v3           #countdown_remaining_time:Z
    .end local v6           #hours:J
    .end local v9           #minutes:J
    .end local v11           #minutesString:Ljava/lang/String;
    .end local v14           #remainderMinutes:J
    .end local v16           #remainderSeconds:J
    .end local v18           #seconds:J
    .end local v20           #secondsString:Ljava/lang/String;
    .end local v21           #text:Ljava/lang/String;
    :cond_1a8
    const/16 v22, 0x0

    move/from16 v3, v22

    goto/16 :goto_59

    .line 227
    .restart local v3       #countdown_remaining_time:Z
    .restart local v6       #hours:J
    .restart local v9       #minutes:J
    .restart local v11       #minutesString:Ljava/lang/String;
    .restart local v14       #remainderMinutes:J
    .restart local v16       #remainderSeconds:J
    .restart local v18       #seconds:J
    .restart local v20       #secondsString:Ljava/lang/String;
    .restart local v21       #text:Ljava/lang/String;
    :cond_1ae
    const v23, 0x7f070001

    goto :goto_172

    .line 176
    :pswitch_data_1b2
    .packed-switch 0x4
        :pswitch_28
        :pswitch_32
    .end packed-switch
.end method
