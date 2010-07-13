.class Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$1;
.super Ljava/lang/Object;
.source "TwitterAt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;

.field final synthetic val$adapter:Lcom/lge/sns/profile/ui/twitter/TwitterAt$TweetAdapter;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;Lcom/lge/sns/profile/ui/twitter/TwitterAt$TweetAdapter;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$1;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$1;->val$adapter:Lcom/lge/sns/profile/ui/twitter/TwitterAt$TweetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$1;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterAt;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->dismissDialog(I)V

    .line 83
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$1;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterAt;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$1;->val$adapter:Lcom/lge/sns/profile/ui/twitter/TwitterAt$TweetAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    return-void
.end method
