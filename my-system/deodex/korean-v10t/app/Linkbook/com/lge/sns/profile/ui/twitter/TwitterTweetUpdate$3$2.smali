.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$2;
.super Ljava/lang/Object;
.source "TwitterTweetUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$2;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$2;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->dismissDialog(I)V

    .line 157
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$2;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    const v1, 0x7f05000d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    return-void
.end method
