.class Lcom/lge/sns/profile/ui/FriendView$1;
.super Ljava/lang/Object;
.source "FriendView.java"

# interfaces
.implements Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/FriendView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/FriendView;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendView;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendView$1;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishRunnable(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView$1;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/FriendView;->access$000(Lcom/lge/sns/profile/ui/FriendView;)V

    .line 168
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView$1;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/FriendView;->access$100(Lcom/lge/sns/profile/ui/FriendView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView$1;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/FriendView;->access$100(Lcom/lge/sns/profile/ui/FriendView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 170
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView$1;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/FriendView;->access$100(Lcom/lge/sns/profile/ui/FriendView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 172
    :cond_22
    return-void
.end method
