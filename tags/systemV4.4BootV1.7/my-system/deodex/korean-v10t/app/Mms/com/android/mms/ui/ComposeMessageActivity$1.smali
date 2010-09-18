.class Lcom/android/mms/ui/ComposeMessageActivity$1;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 391
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_e2

    .line 455
    :cond_7
    :goto_7
    return-void

    .line 393
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-class v6, Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v6, 0x4

    invoke-static {v5, v6, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$000(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V

    .line 397
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 398
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v6, 0x10

    invoke-virtual {v5, v1, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    .line 402
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_28
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 403
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_7

    .line 412
    :pswitch_36
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ne v5, v8, :cond_88

    .line 413
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 414
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    const/4 v2, 0x0

    .line 415
    .local v2, mm:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 416
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    .line 423
    :cond_57
    :goto_57
    if-eqz v2, :cond_88

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v5

    if-eqz v5, :cond_88

    .line 425
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/drm/DrmUtils;->getPermission(Landroid/lge/lgdrm/DrmContent;)I

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v3

    .line 426
    .local v3, retVal:I
    if-nez v3, :cond_b7

    .line 428
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;)V

    .line 442
    .end local v2           #mm:Lcom/android/mms/model/MediaModel;
    .end local v3           #retVal:I
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_88
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;)V

    goto/16 :goto_7

    .line 417
    .restart local v2       #mm:Lcom/android/mms/model/MediaModel;
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    :cond_a1
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 418
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    goto :goto_57

    .line 419
    :cond_ac
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 420
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v2

    goto :goto_57

    .line 433
    .restart local v3       #retVal:I
    :cond_b7
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, fn:Ljava/lang/String;
    const-string v5, "ComposeMessageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "obtainNewRight :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5, v2}, Lcom/android/mms/drm/DrmUtils;->obtainNewRight(Landroid/content/Context;Lcom/android/mms/model/MediaModel;)V

    goto/16 :goto_7

    .line 449
    .end local v0           #fn:Ljava/lang/String;
    .end local v2           #mm:Lcom/android/mms/model/MediaModel;
    .end local v3           #retVal:I
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :pswitch_da
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$600(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_7

    .line 391
    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_28
        :pswitch_36
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_36
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method
