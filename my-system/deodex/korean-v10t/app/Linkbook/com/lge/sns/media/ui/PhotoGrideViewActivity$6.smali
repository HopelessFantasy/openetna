.class Lcom/lge/sns/media/ui/PhotoGrideViewActivity$6;
.super Ljava/lang/Object;
.source "PhotoGrideViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->mediaFileRemoved(Lcom/lge/sns/media/MediaFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

.field final synthetic val$mf:Lcom/lge/sns/media/MediaFile;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;Lcom/lge/sns/media/MediaFile;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$6;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    iput-object p2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$6;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$6;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$700(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 334
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$6;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$700(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$6;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->remove(Lcom/lge/sns/media/MediaFile;)V

    .line 336
    :cond_13
    return-void
.end method
