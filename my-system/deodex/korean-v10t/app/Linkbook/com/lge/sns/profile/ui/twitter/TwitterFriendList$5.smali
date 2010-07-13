.class Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$5;
.super Ljava/lang/Object;
.source "TwitterFriendList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$5;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    invoke-virtual {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->getPageNum()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->setPageNum(I)V

    .line 168
    return-void
.end method
