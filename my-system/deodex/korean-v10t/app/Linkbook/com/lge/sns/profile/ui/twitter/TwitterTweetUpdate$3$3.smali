.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$3;
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
    .line 162
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$3;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3$3;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->dismissDialog(I)V

    .line 164
    return-void
.end method
