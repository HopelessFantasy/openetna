.class Lcom/android/mms/ui/MessageListItem$7;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->setOnClickListener(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$7;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 753
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$7;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a6

    .line 754
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$7;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 755
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    const/4 v2, 0x0

    .line 756
    .local v2, mm:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 757
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    .line 764
    :cond_20
    :goto_20
    if-eqz v2, :cond_94

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v5

    if-eqz v5, :cond_94

    .line 766
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/drm/DrmUtils;->getPermission(Landroid/lge/lgdrm/DrmContent;)I

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v3

    .line 767
    .local v3, retVal:I
    if-nez v3, :cond_62

    .line 769
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$7;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$7;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;)V

    .line 790
    .end local v2           #mm:Lcom/android/mms/model/MediaModel;
    .end local v3           #retVal:I
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_4b
    :goto_4b
    return-void

    .line 758
    .restart local v2       #mm:Lcom/android/mms/model/MediaModel;
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    :cond_4c
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 759
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    goto :goto_20

    .line 760
    :cond_57
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 761
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v2

    goto :goto_20

    .line 774
    .restart local v3       #retVal:I
    :cond_62
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, fn:Ljava/lang/String;
    invoke-static {v1}, Landroid/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    .line 776
    .local v0, drmType:I
    const/16 v5, 0x51

    if-le v0, v5, :cond_4b

    const/16 v5, 0x5000

    if-gt v0, v5, :cond_4b

    .line 778
    const-string v5, "MessageListItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "obtainNewRight :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/mms/drm/DrmUtils;->obtainNewRight(Landroid/content/Context;Lcom/android/mms/model/MediaModel;)V

    goto :goto_4b

    .line 784
    .end local v0           #drmType:I
    .end local v1           #fn:Ljava/lang/String;
    .end local v3           #retVal:I
    :cond_94
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$1800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$7;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$7;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;)V

    goto :goto_4b

    .line 788
    .end local v2           #mm:Lcom/android/mms/model/MediaModel;
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_a6
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$1900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$7;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$7;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;)V

    goto :goto_4b
.end method
