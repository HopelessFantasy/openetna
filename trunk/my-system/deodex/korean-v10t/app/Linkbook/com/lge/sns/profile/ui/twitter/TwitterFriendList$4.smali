.class Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$4;
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
    .line 155
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$4;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$4;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->isModeFollower()Z

    move-result v0

    if-nez v0, :cond_e

    .line 157
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$4;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->setModeFollower(Z)V

    .line 159
    :cond_e
    return-void
.end method
