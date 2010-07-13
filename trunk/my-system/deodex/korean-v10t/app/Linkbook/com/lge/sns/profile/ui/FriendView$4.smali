.class Lcom/lge/sns/profile/ui/FriendView$4;
.super Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;
.source "FriendView.java"


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
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendView;Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;)V
    .registers 5
    .parameter
    .parameter "x0"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendView$4;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-direct {p0, p2}, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;-><init>(Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;)V

    .line 210
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView$4;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendView$4;->et:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendView$4;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendView;->access$400(Lcom/lge/sns/profile/ui/FriendView;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendView$4;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/FriendView;->access$200(Lcom/lge/sns/profile/ui/FriendView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendView$4;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendView;->access$300(Lcom/lge/sns/profile/ui/FriendView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/profile/ui/FriendView$4;->et:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/sns/profile/IProfileFacade;->sendProfileComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_0 .. :try_end_1f} :catch_20
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_1f} :catch_26

    .line 220
    :goto_1f
    return-void

    .line 215
    :catch_20
    move-exception v1

    move-object v0, v1

    .line 216
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    invoke-virtual {v0}, Lcom/lge/sns/UnauthorizatedException;->printStackTrace()V

    goto :goto_1f

    .line 217
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_26
    move-exception v1

    move-object v0, v1

    .line 218
    .local v0, e:Lcom/lge/sns/SnsException;
    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->printStackTrace()V

    goto :goto_1f
.end method
