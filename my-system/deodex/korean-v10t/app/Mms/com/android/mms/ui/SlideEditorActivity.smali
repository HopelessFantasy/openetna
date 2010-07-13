.class public Lcom/android/mms/ui/SlideEditorActivity;
.super Landroid/app/Activity;
.source "SlideEditorActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MENU_ADD_AUDIO:I = 0x4

.field private static final MENU_ADD_PICTURE:I = 0x1

.field private static final MENU_ADD_SLIDE:I = 0x7

.field private static final MENU_ADD_VIDEO:I = 0x6

.field private static final MENU_DEL_AUDIO:I = 0x5

.field private static final MENU_DEL_PICTURE:I = 0x3

.field private static final MENU_DEL_VIDEO:I = 0x8

.field private static final MENU_DURATION:I = 0xa

.field private static final MENU_LAYOUT:I = 0x9

.field private static final MENU_PREVIEW_SLIDESHOW:I = 0xb

.field private static final MENU_RECORD_SOUND:I = 0xc

.field private static final MENU_REMOVE_TEXT:I = 0x0

.field private static final MENU_SUB_AUDIO:I = 0xd

.field private static final MENU_TAKE_PICTURE:I = 0x2

.field private static final MENU_TAKE_VIDEO:I = 0xe

.field private static final MESSAGE_URI:Ljava/lang/String; = "message_uri"

.field private static final NUM_DIRECT_DURATIONS:I = 0xa

.field private static final REQUEST_CODE_CHANGE_DURATION:I = 0x6

.field private static final REQUEST_CODE_CHANGE_MUSIC:I = 0x3

.field private static final REQUEST_CODE_CHANGE_PICTURE:I = 0x1

.field private static final REQUEST_CODE_CHANGE_VIDEO:I = 0x5

.field private static final REQUEST_CODE_EDIT_TEXT:I = 0x0

.field private static final REQUEST_CODE_RECORD_SOUND:I = 0x4

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0x2

.field private static final REQUEST_CODE_TAKE_VIDEO:I = 0x7

.field public static final SLIDE_INDEX:Ljava/lang/String; = "slide_index"

.field private static final TAG:Ljava/lang/String; = "SlideEditorActivity"


# instance fields
.field private mBakcup_Uri:Landroid/net/Uri;

.field private mDirty:Z

.field private mDone:Landroid/widget/Button;

.field private final mDoneClickListener:Landroid/view/View$OnClickListener;

.field private final mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

.field private mNextSlide:Landroid/widget/ImageButton;

.field private final mOnNavigateBackward:Landroid/view/View$OnClickListener;

.field private final mOnNavigateForward:Landroid/view/View$OnClickListener;

.field private final mOnPreview:Landroid/view/View$OnClickListener;

.field private final mOnRemoveSlide:Landroid/view/View$OnClickListener;

.field private final mOnReplaceImage:Landroid/view/View$OnClickListener;

.field private final mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

.field private mPosition:I

.field private mPreSlide:Landroid/widget/ImageButton;

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mPreview:Landroid/widget/Button;

.field private mRemoveSlide:Landroid/widget/Button;

.field private mReplaceImage:Landroid/widget/Button;

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

.field private mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 223
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$1;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    .line 234
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$2;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnRemoveSlide:Landroid/view/View$OnClickListener;

    .line 259
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$3;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    .line 265
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$4;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnPreview:Landroid/view/View$OnClickListener;

    .line 271
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$5;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnReplaceImage:Landroid/view/View$OnClickListener;

    .line 279
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$6;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    .line 288
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$7;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    .line 297
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$8;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    .line 896
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$15;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideEditorActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideEditorActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$108(Lcom/android/mms/ui/SlideEditorActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$110(Lcom/android/mms/ui/SlideEditorActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SlideEditorActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideEditorActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideEditorActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideEditorActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->imageInsertAnyway()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideEditorActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->imageInsertResize()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideEditorActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->audioInsertAnyway()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideEditorActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->videoInsertAnyway()V

    return-void
.end method

.method private audioInsertAnyway()V
    .registers 6

    .prologue
    const v4, 0x7f07004f

    .line 865
    :try_start_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mBakcup_Uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/SlideshowEditor;->changeAudioInsertAnyway(ILandroid/net/Uri;)V
    :try_end_c
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_c} :catch_d
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_c} :catch_2c

    .line 877
    :goto_c
    return-void

    .line 866
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 867
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "SlideEditorActivity"

    const-string v2, "add audio failed"

    invoke-static {v1, v2, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 868
    const-string v1, "add music failed"

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 869
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 872
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_2c
    move-exception v1

    move-object v0, v1

    .line 873
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const v1, 0x7f07004e

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private creationAttachYN(Landroid/content/Context;Ljava/lang/Runnable;I)V
    .registers 8
    .parameter "context"
    .parameter "callback"
    .parameter "stringId"

    .prologue
    .line 978
    new-instance v2, Lcom/android/mms/ui/SlideEditorActivity$16;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/SlideEditorActivity$16;-><init>(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/Runnable;)V

    .line 984
    .local v2, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/mms/ui/SlideEditorActivity$17;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideEditorActivity$17;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 989
    .local v1, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$18;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 995
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2, v1, v0}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 999
    return-void
.end method

.method private getAudioString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 945
    const v0, 0x7f0700e8

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPictureString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 949
    const v0, 0x7f0700e9

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .registers 4
    .parameter "id"

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 941
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "id"
    .parameter "mediaName"

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 936
    .local v0, r:Landroid/content/res/Resources;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVideoString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 953
    const v0, 0x7f0700ea

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private imageInsertAnyway()V
    .registers 5

    .prologue
    .line 846
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mBakcup_Uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/SlideshowEditor;->changeImageInsertAnyway(ILandroid/net/Uri;)V

    .line 847
    const v1, 0x7f070065

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_f
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_f} :catch_1f
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_f} :catch_37

    .line 857
    :goto_f
    return-void

    .line 848
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 849
    .local v0, e:Lcom/android/mms/ResolutionException;
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mBakcup_Uri:Landroid/net/Uri;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;)V

    goto :goto_f

    .line 850
    .end local v0           #e:Lcom/android/mms/ResolutionException;
    :catch_1f
    move-exception v1

    move-object v0, v1

    .line 851
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const v1, 0x7f07004e

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07004f

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 854
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_37
    move-exception v1

    move-object v0, v1

    .line 855
    .local v0, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_f
.end method

.method private imageInsertResize()V
    .registers 4

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mBakcup_Uri:Landroid/net/Uri;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;)V

    .line 861
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .registers 6
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    const-string v2, "slide_index"

    .line 179
    if-eqz p1, :cond_18

    .line 180
    const-string v0, "message_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 181
    const-string v0, "slide_index"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 186
    :goto_17
    return-void

    .line 183
    :cond_18
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 184
    const-string v0, "slide_index"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    goto :goto_17
.end method

.method private notifyUser(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 957
    const-string v0, "SlideEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUser: message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method private previewSlideshow()V
    .registers 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;)V

    .line 310
    return-void
.end method

.method private setReplaceButtonText(I)V
    .registers 4
    .parameter "text"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 503
    return-void
.end method

.method private showCurrentSlide()V
    .registers 4

    .prologue
    const v2, 0x7f070036

    .line 961
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->setLocation(I)V

    .line 962
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->present()V

    .line 963
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->updateTitle()V

    .line 965
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 966
    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    .line 967
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 973
    :goto_29
    return-void

    .line 968
    :cond_2a
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 969
    const v0, 0x7f070065

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_29

    .line 971
    :cond_3f
    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_29
.end method

.method private showDurationDialog()V
    .registers 5

    .prologue
    .line 506
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 507
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f02002a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 508
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 511
    const v2, 0x7f05000c

    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$9;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$9;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 530
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 531
    return-void
.end method

.method private showLayoutSelectorDialog()V
    .registers 6

    .prologue
    .line 534
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 535
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f02002b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 537
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, title:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 540
    new-instance v0, Lcom/android/mms/ui/LayoutSelectorAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LayoutSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 541
    .local v0, adapter:Lcom/android/mms/ui/LayoutSelectorAdapter;
    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$10;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$10;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 554
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 555
    return-void
.end method

.method private videoInsertAnyway()V
    .registers 8

    .prologue
    const v5, 0x7f07004f

    const/4 v4, 0x0

    const-string v6, "add video failed"

    .line 881
    :try_start_6
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mBakcup_Uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/SlideshowEditor;->changeVideoInsertAnyway(ILandroid/net/Uri;)V

    .line 882
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_15
    .catch Lcom/google/android/mms/MmsException; {:try_start_6 .. :try_end_15} :catch_16
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_6 .. :try_end_15} :catch_34

    .line 894
    :goto_15
    return-void

    .line 883
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 884
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "SlideEditorActivity"

    const-string v2, "add video failed"

    invoke-static {v1, v6, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 885
    const-string v1, "add video failed"

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 886
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_15

    .line 889
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 890
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const v1, 0x7f07004e

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v10, 0x7f07004c

    const v7, 0x7f07004e

    const v6, 0x7f07004f

    const-string v9, "MMSSETTINGDB_CREATIONMODE_I"

    const-string v8, "0"

    .line 559
    const/4 v3, -0x1

    if-eq p2, v3, :cond_11

    .line 842
    :cond_10
    :goto_10
    return-void

    .line 563
    :cond_11
    packed-switch p1, :pswitch_data_352

    goto :goto_10

    .line 567
    :pswitch_15
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V

    goto :goto_10

    .line 606
    :pswitch_21
    :try_start_21
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mBakcup_Uri:Landroid/net/Uri;

    .line 607
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 608
    const v3, 0x7f070065

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_38
    .catch Lcom/google/android/mms/MmsException; {:try_start_21 .. :try_end_38} :catch_39
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_21 .. :try_end_38} :catch_58
    .catch Lcom/android/mms/ResolutionException; {:try_start_21 .. :try_end_38} :catch_bf
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_21 .. :try_end_38} :catch_112

    goto :goto_10

    .line 609
    :catch_39
    move-exception v3

    move-object v1, v3

    .line 610
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v3, "SlideEditorActivity"

    const-string v4, "add image failed"

    invoke-static {v3, v4, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 611
    const-string v3, "add picture failed"

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 612
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 615
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_58
    move-exception v3

    move-object v1, v3

    .line 616
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v3, v9}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_a7

    .line 619
    const-string v3, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 621
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v10, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07004d

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 625
    :cond_85
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 627
    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$11;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$11;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    const v4, 0x7f07010e

    invoke-direct {p0, p0, v3, v4}, Lcom/android/mms/ui/SlideEditorActivity;->creationAttachYN(Landroid/content/Context;Ljava/lang/Runnable;I)V

    goto/16 :goto_10

    .line 633
    :cond_9a
    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 635
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->imageInsertAnyway()V

    goto/16 :goto_10

    .line 639
    :cond_a7
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v10, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07004d

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 642
    .end local v0           #creationMode_flexValues:Ljava/lang/String;
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_bf
    move-exception v3

    move-object v1, v3

    .line 643
    .local v1, e:Lcom/android/mms/ResolutionException;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v3, v9}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    .restart local v0       #creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_102

    .line 646
    const-string v3, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dd

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 648
    :cond_dd
    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$12;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$12;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    const v4, 0x7f07004a

    invoke-direct {p0, p0, v3, v4}, Lcom/android/mms/ui/SlideEditorActivity;->creationAttachYN(Landroid/content/Context;Ljava/lang/Runnable;I)V

    goto/16 :goto_10

    .line 654
    :cond_ea
    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 656
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;)V

    goto/16 :goto_10

    .line 660
    :cond_102
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;)V

    goto/16 :goto_10

    .line 661
    .end local v0           #creationMode_flexValues:Ljava/lang/String;
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_112
    move-exception v3

    move-object v1, v3

    .line 662
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v3, v9}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    .restart local v0       #creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_14a

    .line 665
    const-string v3, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_139

    .line 671
    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 677
    :cond_139
    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 683
    :cond_14a
    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 692
    .end local v0           #creationMode_flexValues:Ljava/lang/String;
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :pswitch_15b
    const/4 v3, 0x3

    if-ne p1, v3, :cond_19b

    .line 693
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 694
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 701
    :goto_16e
    iput-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mBakcup_Uri:Landroid/net/Uri;

    .line 703
    if-eqz v2, :cond_10

    .line 707
    :try_start_172
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v3, v4, v2}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V
    :try_end_179
    .catch Lcom/google/android/mms/MmsException; {:try_start_172 .. :try_end_179} :catch_17b
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_172 .. :try_end_179} :catch_1a0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_172 .. :try_end_179} :catch_208

    goto/16 :goto_10

    .line 708
    :catch_17b
    move-exception v3

    move-object v1, v3

    .line 709
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v3, "SlideEditorActivity"

    const-string v4, "add audio failed"

    invoke-static {v3, v4, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 710
    const-string v3, "add music failed"

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 711
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    .line 698
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_19b
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_16e

    .line 714
    :catch_1a0
    move-exception v3

    move-object v1, v3

    .line 715
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v3, v9}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .restart local v0       #creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_1f0

    .line 718
    const-string v3, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ce

    .line 720
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v10, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07004d

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 724
    :cond_1ce
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e3

    .line 726
    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$13;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$13;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    const v4, 0x7f07010e

    invoke-direct {p0, p0, v3, v4}, Lcom/android/mms/ui/SlideEditorActivity;->creationAttachYN(Landroid/content/Context;Ljava/lang/Runnable;I)V

    goto/16 :goto_10

    .line 732
    :cond_1e3
    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 734
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->audioInsertAnyway()V

    goto/16 :goto_10

    .line 738
    :cond_1f0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v10, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07004d

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 741
    .end local v0           #creationMode_flexValues:Ljava/lang/String;
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_208
    move-exception v3

    move-object v1, v3

    .line 742
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v3, v9}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 743
    .restart local v0       #creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_240

    .line 745
    const-string v3, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22f

    .line 751
    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 757
    :cond_22f
    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 763
    :cond_240
    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 772
    .end local v0           #creationMode_flexValues:Ljava/lang/String;
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_251
    :try_start_251
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mBakcup_Uri:Landroid/net/Uri;

    .line 773
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V

    .line 774
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_268
    .catch Lcom/google/android/mms/MmsException; {:try_start_251 .. :try_end_268} :catch_26a
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_251 .. :try_end_268} :catch_28a
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_251 .. :try_end_268} :catch_2f2

    goto/16 :goto_10

    .line 775
    :catch_26a
    move-exception v3

    move-object v1, v3

    .line 776
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v3, "SlideEditorActivity"

    const-string v4, "add video failed"

    invoke-static {v3, v4, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 777
    const-string v3, "add video failed"

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 778
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    .line 781
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_28a
    move-exception v3

    move-object v1, v3

    .line 782
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v3, v9}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    .restart local v0       #creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_2da

    .line 785
    const-string v3, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b8

    .line 787
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v10, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07004d

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 791
    :cond_2b8
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cd

    .line 793
    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$14;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$14;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    const v4, 0x7f07010e

    invoke-direct {p0, p0, v3, v4}, Lcom/android/mms/ui/SlideEditorActivity;->creationAttachYN(Landroid/content/Context;Ljava/lang/Runnable;I)V

    goto/16 :goto_10

    .line 799
    :cond_2cd
    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 801
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->videoInsertAnyway()V

    goto/16 :goto_10

    .line 805
    :cond_2da
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v10, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07004d

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 808
    .end local v0           #creationMode_flexValues:Ljava/lang/String;
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_2f2
    move-exception v3

    move-object v1, v3

    .line 809
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v3, v9}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    .restart local v0       #creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_32a

    .line 812
    const-string v3, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_319

    .line 819
    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 825
    :cond_319
    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 831
    :cond_32a
    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 838
    .end local v0           #creationMode_flexValues:Ljava/lang/String;
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :pswitch_33b
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->changeDuration(II)V

    goto/16 :goto_10

    .line 563
    :pswitch_data_352
    .packed-switch 0x0
        :pswitch_15
        :pswitch_21
        :pswitch_21
        :pswitch_15b
        :pswitch_15b
        :pswitch_251
        :pswitch_33b
        :pswitch_251
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v1, 0x7f030013

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->setContentView(I)V

    .line 132
    const v1, 0x7f090034

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/BasicSlideEditorView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    .line 133
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BasicSlideEditorView;->setOnTextChangedListener(Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;)V

    .line 135
    const v1, 0x7f090038

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    .line 136
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v1, 0x7f090039

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    .line 139
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v1, 0x7f09003a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    .line 142
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnPreview:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v1, 0x7f09003b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    .line 145
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnReplaceImage:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v1, 0x7f09003c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveSlide:Landroid/widget/Button;

    .line 148
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveSlide:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnRemoveSlide:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    .line 151
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/SlideEditorActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 156
    :try_start_8e
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 158
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 159
    new-instance v1, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 160
    const-string v1, "SlideshowPresenter"

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v1, p0, v2, v3}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 164
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-lt v1, v2, :cond_d1

    .line 165
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 170
    :cond_cd
    :goto_cd
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    .line 176
    :goto_d0
    return-void

    .line 166
    :cond_d1
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    if-gez v1, :cond_cd

    .line 167
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    :try_end_d8
    .catch Lcom/google/android/mms/MmsException; {:try_start_8e .. :try_end_d8} :catch_d9

    goto :goto_cd

    .line 171
    :catch_d9
    move-exception v1

    move-object v0, v1

    .line 172
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "SlideEditorActivity"

    const-string v2, "Create SlideshowModel failed!"

    invoke-static {v1, v2, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->finish()V

    goto :goto_d0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 217
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_e

    .line 218
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 221
    :cond_e
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const v7, 0x7f07005d

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v8, "android.intent.action.GET_CONTENT"

    .line 411
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_da

    .line 497
    :goto_e
    :pswitch_e
    return v6

    .line 413
    :pswitch_f
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V

    goto :goto_e

    .line 417
    :pswitch_13
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 418
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeText()Z

    goto :goto_e

    .line 422
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :pswitch_1f
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    const/4 v4, 0x0

    invoke-direct {v2, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 423
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, v2, v6}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 428
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_30
    const-string v0, "EmailAttatch"

    .line 429
    .local v0, ExtraName:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 435
    .end local v0           #ExtraName:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_41
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->removeImage(I)Z

    .line 436
    const v4, 0x7f070036

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_e

    .line 440
    :pswitch_4f
    const/4 v4, 0x3

    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->selectAudio(Landroid/content/Context;I)V

    goto :goto_e

    .line 444
    :pswitch_54
    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/content/Context;I)V

    goto :goto_e

    .line 448
    :pswitch_59
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->removeAudio(I)Z

    goto :goto_e

    .line 452
    :pswitch_61
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "video/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const/4 v4, 0x5

    invoke-virtual {p0, v2, v4}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 458
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_72
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    const/4 v4, 0x7

    invoke-virtual {p0, v2, v4}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 464
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_83
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->removeVideo(I)Z

    .line 465
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_e

    .line 469
    :pswitch_91
    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 471
    :try_start_97
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 473
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V
    :try_end_a4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_97 .. :try_end_a4} :catch_a6

    goto/16 :goto_e

    .line 480
    :catch_a6
    move-exception v4

    move-object v1, v4

    .line 481
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    const v4, 0x7f07004e

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    goto/16 :goto_e

    .line 476
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :cond_bd
    :try_start_bd
    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 477
    const v4, 0x7f07005d

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_cd
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_bd .. :try_end_cd} :catch_a6

    goto/16 :goto_e

    .line 489
    :pswitch_cf
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showLayoutSelectorDialog()V

    goto/16 :goto_e

    .line 493
    :pswitch_d4
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showDurationDialog()V

    goto/16 :goto_e

    .line 411
    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_13
        :pswitch_1f
        :pswitch_30
        :pswitch_41
        :pswitch_4f
        :pswitch_59
        :pswitch_61
        :pswitch_91
        :pswitch_83
        :pswitch_cf
        :pswitch_d4
        :pswitch_f
        :pswitch_54
        :pswitch_e
        :pswitch_72
    .end packed-switch
.end method

.method protected onPause()V
    .registers 6

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 200
    monitor-enter p0

    .line 201
    :try_start_4
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_3b

    if-eqz v2, :cond_1c

    .line 203
    :try_start_8
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 204
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 205
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_3b
    .catch Lcom/google/android/mms/MmsException; {:try_start_8 .. :try_end_1c} :catch_1e

    .line 210
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_1c
    :goto_1c
    :try_start_1c
    monitor-exit p0

    .line 211
    return-void

    .line 206
    :catch_1e
    move-exception v2

    move-object v0, v2

    .line 207
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "SlideEditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update the message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 210
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catchall_3b
    move-exception v2

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 12
    .parameter "menu"

    .prologue
    const v6, 0x7f02001d

    const v9, 0x7f02001e

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 336
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 339
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-gtz v4, :cond_15

    move v4, v7

    .line 406
    :goto_14
    return v4

    .line 343
    :cond_15
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 346
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    const/16 v4, 0xb

    const v5, 0x7f070064

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x1080192

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 350
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 352
    const v4, 0x7f070035

    invoke-interface {p1, v7, v7, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020021

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 357
    :cond_4d
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_da

    .line 358
    const/4 v4, 0x3

    const v5, 0x7f070037

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02001f

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 368
    :cond_61
    :goto_61
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 369
    const/4 v4, 0x5

    const v5, 0x7f070039

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020020

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 379
    :cond_75
    :goto_75
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_11e

    .line 380
    const/16 v4, 0x8

    const v5, 0x7f07003b

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020022

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 388
    :cond_8a
    :goto_8a
    const/4 v4, 0x7

    const v5, 0x7f070030

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020015

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 392
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070066

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, duration:Ljava/lang/String;
    const/16 v4, 0xa

    const-string v5, "%s"

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02001a

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 399
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v4

    if-ne v4, v8, :cond_143

    .line 400
    const v1, 0x7f070069

    .line 405
    .local v1, resId:I
    :goto_ce
    const/16 v4, 0x9

    invoke-interface {p1, v7, v4, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v4, v8

    .line 406
    goto/16 :goto_14

    .line 360
    .end local v0           #duration:Ljava/lang/String;
    .end local v1           #resId:I
    :cond_da
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_61

    .line 361
    const v4, 0x7f070036

    invoke-interface {p1, v7, v8, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 363
    const/4 v4, 0x2

    const v5, 0x7f0700da

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_61

    .line 371
    :cond_f7
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_75

    .line 372
    const/16 v4, 0xd

    const v5, 0x7f070038

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v4

    const v5, 0x7f020016

    invoke-interface {v4, v5}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v3

    .line 374
    .local v3, subMenu:Landroid/view/SubMenu;
    const/4 v4, 0x4

    const v5, 0x7f0700dd

    invoke-interface {v3, v7, v4, v7, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 375
    const/16 v4, 0xc

    const v5, 0x7f0700de

    invoke-interface {v3, v7, v4, v7, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_75

    .line 382
    .end local v3           #subMenu:Landroid/view/SubMenu;
    :cond_11e
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-nez v4, :cond_8a

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-nez v4, :cond_8a

    .line 383
    const/4 v4, 0x6

    const v5, 0x7f07003a

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 384
    const/16 v4, 0xe

    const v5, 0x7f0700dc

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_8a

    .line 402
    .restart local v0       #duration:Ljava/lang/String;
    :cond_143
    const v1, 0x7f07006a

    .restart local v1       #resId:I
    goto :goto_ce
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    const-string v0, "slide_index"

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v0, "message_uri"

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 194
    return-void
.end method

.method public updateTitle()V
    .registers 11

    .prologue
    const v9, 0x7f070033

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, currentSize:I
    const/4 v2, 0x0

    .line 317
    .local v2, maxSize:I
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_6d

    .line 319
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v1

    .line 320
    .local v1, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v1, :cond_20

    .line 321
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v3

    div-int/lit16 v0, v3, 0x400

    .line 322
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v3

    div-int/lit16 v2, v3, 0x400

    .line 325
    :cond_20
    if-lez v0, :cond_6e

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070034

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/ui/SlideEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 332
    .end local v1           #ir:Lcom/android/mms/model/ContentRestriction;
    :cond_6d
    :goto_6d
    return-void

    .line 329
    .restart local v1       #ir:Lcom/android/mms/model/ContentRestriction;
    :cond_6e
    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v9, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_6d
.end method
