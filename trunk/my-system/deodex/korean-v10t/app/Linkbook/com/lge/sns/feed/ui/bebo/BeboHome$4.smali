.class Lcom/lge/sns/feed/ui/bebo/BeboHome$4;
.super Ljava/lang/Object;
.source "BeboHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/bebo/BeboHome;->onFeedUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$4;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    iput p2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$4;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 492
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$4;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->dismissDialog(I)V

    .line 493
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$4;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    const v2, 0x7f05002b

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$4;->val$count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$4;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 495
    return-void
.end method
