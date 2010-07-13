.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$1;
.super Ljava/lang/Object;
.source "TwitterTweetList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->setNewTweetButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)V

    .line 98
    return-void
.end method
