.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$1;
.super Ljava/lang/Object;
.source "TwitterTweetAtList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->setNewTweetButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)V

    .line 85
    return-void
.end method
