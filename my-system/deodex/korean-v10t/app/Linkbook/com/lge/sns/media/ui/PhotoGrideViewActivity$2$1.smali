.class Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2$1;
.super Ljava/lang/Object;
.source "PhotoGrideViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2$1;->this$1:Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2$1;->this$1:Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;

    iget-object v0, v0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$600(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2$1;->this$1:Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;

    iget-object v0, v0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$600(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 197
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2$1;->this$1:Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;

    iget-object v0, v0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$600(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 199
    :cond_23
    return-void
.end method
