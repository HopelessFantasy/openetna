.class public Lcom/android/mms/ui/AttachmentEditor;
.super Ljava/lang/Object;
.source "AttachmentEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;,
        Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;
    }
.end annotation


# static fields
.field public static final AUDIO_ATTACHMENT:I = 0x3

.field public static final EMPTY:I = -0x1

.field public static final IMAGE_ATTACHMENT:I = 0x1

.field static final MSG_EDIT_SLIDESHOW:I = 0x1

.field static final MSG_PLAY_AUDIO:I = 0x8

.field static final MSG_PLAY_SLIDESHOW:I = 0x3

.field static final MSG_PLAY_VIDEO:I = 0x7

.field static final MSG_REPLACE_AUDIO:I = 0x6

.field static final MSG_REPLACE_IMAGE:I = 0x4

.field static final MSG_REPLACE_VIDEO:I = 0x5

.field static final MSG_SEND_SLIDESHOW:I = 0x2

.field static final MSG_VIEW_IMAGE:I = 0x9

.field public static final SLIDESHOW_ATTACHMENT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AttachmentEditor"

.field public static final TEXT_ONLY:I = 0x0

.field public static final VIDEO_ATTACHMENT:I = 0x2


# instance fields
.field private mAttachmentChangedListener:Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;

.field private mAttachmentType:I

.field private mCanSend:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPresenter:Lcom/android/mms/ui/Presenter;

.field private final mRoot:Landroid/view/View;

.field private mSendButton:Landroid/widget/Button;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mView:Lcom/android/mms/ui/SlideViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;)V
    .registers 4
    .parameter "context"
    .parameter "handler"
    .parameter "vRoot"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/mms/ui/AttachmentEditor;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p3, p0, Lcom/android/mms/ui/AttachmentEditor;->mRoot:Landroid/view/View;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AttachmentEditor;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/AttachmentEditor;)Lcom/android/mms/ui/SlideViewInterface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/AttachmentEditor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mAttachmentType:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/AttachmentEditor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mAttachmentType:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/AttachmentEditor;)Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mAttachmentChangedListener:Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;

    return-object v0
.end method

.method private createMediaView(IIIIIII)Lcom/android/mms/ui/SlideViewInterface;
    .registers 13
    .parameter "stub_view_id"
    .parameter "real_view_id"
    .parameter "view_button_id"
    .parameter "replace_button_id"
    .parameter "remove_button_id"
    .parameter "view_message"
    .parameter "replace_message"

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/AttachmentEditor;->getStubView(II)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 202
    .local v2, view:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 205
    .local v3, viewButton:Landroid/widget/Button;
    invoke-virtual {v2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 206
    .local v1, replaceButton:Landroid/widget/Button;
    invoke-virtual {v2, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 208
    .local v0, removeButton:Landroid/widget/Button;
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    invoke-direct {v4, p0, p6}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    invoke-direct {v4, p0, p7}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/AttachmentEditor$1;-><init>(Lcom/android/mms/ui/AttachmentEditor;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    check-cast v2, Lcom/android/mms/ui/SlideViewInterface;

    .end local v2           #view:Landroid/widget/LinearLayout;
    return-object v2
.end method

.method private createSlideshowView()Lcom/android/mms/ui/SlideViewInterface;
    .registers 7

    .prologue
    .line 229
    const v3, 0x7f09001b

    const v4, 0x7f090066

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/AttachmentEditor;->getStubView(II)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 231
    .local v2, view:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    const v3, 0x7f09006b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 234
    .local v0, editBtn:Landroid/widget/Button;
    const v3, 0x7f09006c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    .line 235
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->updateSendButton()V

    .line 236
    const v3, 0x7f090056

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 239
    .local v1, playBtn:Landroid/widget/ImageButton;
    new-instance v3, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    new-instance v3, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    check-cast v2, Lcom/android/mms/ui/SlideViewInterface;

    .end local v2           #view:Landroid/widget/LinearLayout;
    return-object v2
.end method

.method private createView()Lcom/android/mms/ui/SlideViewInterface;
    .registers 9

    .prologue
    .line 170
    iget v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mAttachmentType:I

    packed-switch v0, :pswitch_data_58

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 172
    :pswitch_b
    const v1, 0x7f090018

    const v2, 0x7f090042

    const v3, 0x7f090046

    const v4, 0x7f09003b

    const v5, 0x7f090047

    const/16 v6, 0x9

    const/4 v7, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    .line 190
    :goto_22
    return-object v0

    .line 178
    :pswitch_23
    const v1, 0x7f090019

    const v2, 0x7f090076

    const v3, 0x7f090079

    const v4, 0x7f09007a

    const v5, 0x7f09007b

    const/4 v6, 0x7

    const/4 v7, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto :goto_22

    .line 184
    :pswitch_3a
    const v1, 0x7f09001a

    const v2, 0x7f090003

    const v3, 0x7f09000a

    const v4, 0x7f09000b

    const v5, 0x7f09000c

    const/16 v6, 0x8

    const/4 v7, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto :goto_22

    .line 190
    :pswitch_52
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->createSlideshowView()Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto :goto_22

    .line 170
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_b
        :pswitch_23
        :pswitch_3a
        :pswitch_52
    .end packed-switch
.end method

.method private getStubView(II)Landroid/view/View;
    .registers 6
    .parameter "stubId"
    .parameter "viewId"

    .prologue
    .line 147
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mRoot:Landroid/view/View;

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 148
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_14

    .line 149
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mRoot:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 150
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 153
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_14
    return-object v1
.end method

.method private updateSendButton()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    if-eqz v0, :cond_12

    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 93
    :cond_12
    return-void
.end method


# virtual methods
.method public changeAudio(Landroid/net/Uri;)V
    .registers 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/android/mms/model/AudioModel;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, p1, v3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 288
    .local v0, audio:Lcom/android/mms/model/AudioModel;
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 289
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 290
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 291
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 292
    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 293
    return-void
.end method

.method public changeAudioInsertAnyway(Landroid/net/Uri;)V
    .registers 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 297
    new-instance v0, Lcom/android/mms/model/AudioModel;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1, v3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 298
    .local v0, audio:Lcom/android/mms/model/AudioModel;
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 299
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 300
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 301
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 302
    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 303
    return-void
.end method

.method public changeImage(Landroid/net/Uri;)V
    .registers 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/android/mms/model/ImageModel;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    .line 249
    .local v0, image:Lcom/android/mms/model/ImageModel;
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 250
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 251
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 252
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 253
    return-void
.end method

.method public changeImageInsertAnyway(Landroid/net/Uri;)V
    .registers 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 257
    new-instance v0, Lcom/android/mms/model/ImageModel;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    .line 259
    .local v0, image:Lcom/android/mms/model/ImageModel;
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 260
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 261
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 262
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 263
    return-void
.end method

.method public changeVideo(Landroid/net/Uri;)V
    .registers 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Lcom/android/mms/model/VideoModel;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    .line 268
    .local v1, video:Lcom/android/mms/model/VideoModel;
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 269
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 270
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 271
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 272
    invoke-virtual {v1}, Lcom/android/mms/model/VideoModel;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 273
    return-void
.end method

.method public changeVideoInsertAnyway(Landroid/net/Uri;)V
    .registers 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 277
    new-instance v1, Lcom/android/mms/model/VideoModel;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    .line 279
    .local v1, video:Lcom/android/mms/model/VideoModel;
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 280
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 281
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 282
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 283
    invoke-virtual {v1}, Lcom/android/mms/model/VideoModel;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 284
    return-void
.end method

.method public getAttachmentType()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mAttachmentType:I

    return v0
.end method

.method public hideView()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    if-eqz v0, :cond_d

    .line 142
    iget-object p0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    .end local p0
    check-cast p0, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_d
    return-void
.end method

.method public removeAttachment()V
    .registers 4

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 135
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 136
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 137
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 138
    return-void
.end method

.method public setAttachment(Lcom/android/mms/model/SlideshowModel;I)V
    .registers 8
    .parameter "slideshow"
    .parameter "attachmentType"

    .prologue
    .line 100
    const/4 v1, -0x1

    if-ne p2, v1, :cond_b

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Type of the attachment may not be EMPTY."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_b
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 107
    iget v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mAttachmentType:I

    .line 108
    .local v0, oldAttachmentType:I
    iput p2, p0, Lcom/android/mms/ui/AttachmentEditor;->mAttachmentType:I

    .line 110
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    if-eqz v1, :cond_21

    .line 111
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    .line 115
    :cond_21
    if-eqz p2, :cond_4e

    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->createView()Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    .line 118
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/Presenter;->getModel()Lcom/android/mms/model/Model;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 119
    :cond_3b
    const-string v1, "MmsThumbnailPresenter"

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    .line 125
    :goto_49
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/Presenter;->present()V

    .line 128
    :cond_4e
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mAttachmentChangedListener:Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;

    if-eqz v1, :cond_5d

    iget v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mAttachmentType:I

    if-eq v1, v0, :cond_5d

    .line 129
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mAttachmentChangedListener:Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;

    iget v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mAttachmentType:I

    invoke-interface {v1, v2, v0}, Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;->onAttachmentChanged(II)V

    .line 131
    :cond_5d
    return-void

    .line 122
    :cond_5e
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/Presenter;->setView(Lcom/android/mms/ui/ViewInterface;)V

    goto :goto_49
.end method

.method public setCanSend(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    if-eq v0, p1, :cond_9

    .line 83
    iput-boolean p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->updateSendButton()V

    .line 86
    :cond_9
    return-void
.end method

.method public setOnAttachmentChangedListener(Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mAttachmentChangedListener:Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;

    .line 307
    return-void
.end method
