.class Lcom/lge/sns/profile/ui/FriendView$3;
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
.field et:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/lge/sns/profile/ui/FriendView;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendView;)V
    .registers 4
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendView$3;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView$3;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendView$3;->et:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onFinishRunnable(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendView$3;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendView;->access$100(Lcom/lge/sns/profile/ui/FriendView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendView$3;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendView;->access$100(Lcom/lge/sns/profile/ui/FriendView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 197
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendView$3;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendView;->access$100(Lcom/lge/sns/profile/ui/FriendView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 199
    :cond_1d
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendView$3;->et:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendView$3;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    const v2, 0x7f08003e

    invoke-virtual {v1, v2}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 202
    .local v0, ll:Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendView$3;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    const v2, 0x7f08003c

    invoke-virtual {v1, v2}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #ll:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 204
    .restart local v0       #ll:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    return-void
.end method
