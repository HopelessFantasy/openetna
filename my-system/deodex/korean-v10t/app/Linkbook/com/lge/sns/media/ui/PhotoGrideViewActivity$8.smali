.class Lcom/lge/sns/media/ui/PhotoGrideViewActivity$8;
.super Ljava/lang/Object;
.source "PhotoGrideViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->mediaThumbnailUpdated(Lcom/lge/sns/media/MediaFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$8;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$8;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$700(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 362
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$8;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$700(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->notifyDataSetChanged()V

    .line 364
    :cond_11
    return-void
.end method
