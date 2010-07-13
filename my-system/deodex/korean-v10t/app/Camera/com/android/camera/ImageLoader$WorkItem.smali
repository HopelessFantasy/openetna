.class Lcom/android/camera/ImageLoader$WorkItem;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WorkItem"
.end annotation


# instance fields
.field mImage:Lcom/android/camera/ImageManager$IImage;

.field mOnLoadedRunnable:Lcom/android/camera/ImageLoader$LoadedCallback;

.field mPostBack:Z

.field mTag:I

.field mTargetX:I

.field mTargetY:I

.field final synthetic this$0:Lcom/android/camera/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageLoader;Lcom/android/camera/ImageManager$IImage;ILcom/android/camera/ImageLoader$LoadedCallback;Z)V
    .registers 6
    .parameter
    .parameter "image"
    .parameter "tag"
    .parameter "onLoadedRunnable"
    .parameter "postBack"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/camera/ImageLoader$WorkItem;->this$0:Lcom/android/camera/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/android/camera/ImageLoader$WorkItem;->mImage:Lcom/android/camera/ImageManager$IImage;

    .line 149
    iput p3, p0, Lcom/android/camera/ImageLoader$WorkItem;->mTag:I

    .line 150
    iput-object p4, p0, Lcom/android/camera/ImageLoader$WorkItem;->mOnLoadedRunnable:Lcom/android/camera/ImageLoader$LoadedCallback;

    .line 151
    iput-boolean p5, p0, Lcom/android/camera/ImageLoader$WorkItem;->mPostBack:Z

    .line 152
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "other"

    .prologue
    .line 155
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ImageLoader$WorkItem;

    move-object v1, v0

    .line 156
    .local v1, otherWorkItem:Lcom/android/camera/ImageLoader$WorkItem;
    iget-object v2, v1, Lcom/android/camera/ImageLoader$WorkItem;->mImage:Lcom/android/camera/ImageManager$IImage;

    iget-object v3, p0, Lcom/android/camera/ImageLoader$WorkItem;->mImage:Lcom/android/camera/ImageManager$IImage;

    if-eq v2, v3, :cond_c

    .line 157
    const/4 v2, 0x0

    .line 159
    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/ImageLoader$WorkItem;->mImage:Lcom/android/camera/ImageManager$IImage;

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method
