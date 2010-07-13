.class Lcom/lge/sns/profile/ui/FriendsList$5;
.super Ljava/lang/Object;
.source "FriendsList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/FriendsList;->setBtnListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/FriendsList;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendsList;)V
    .registers 2
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsList$5;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList$5;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/FriendsList;->access$600(Lcom/lge/sns/profile/ui/FriendsList;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 696
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList$5;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/FriendsList;->access$900(Lcom/lge/sns/profile/ui/FriendsList;)V

    .line 697
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList$5;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/sns/profile/ui/FriendsList;->access$002(Lcom/lge/sns/profile/ui/FriendsList;Z)Z

    .line 704
    :cond_13
    :goto_13
    return-void

    .line 698
    :cond_14
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList$5;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/FriendsList;->access$800(Lcom/lge/sns/profile/ui/FriendsList;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 701
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList$5;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/FriendsList;->access$900(Lcom/lge/sns/profile/ui/FriendsList;)V

    .line 702
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList$5;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/FriendsList;->access$100(Lcom/lge/sns/profile/ui/FriendsList;)V

    goto :goto_13
.end method
