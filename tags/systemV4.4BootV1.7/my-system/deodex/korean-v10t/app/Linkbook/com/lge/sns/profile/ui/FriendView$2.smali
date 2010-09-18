.class Lcom/lge/sns/profile/ui/FriendView$2;
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
.field final synthetic this$0:Lcom/lge/sns/profile/ui/FriendView;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendView;Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendView$2;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-direct {p0, p2}, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;-><init>(Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendView$2;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendView;->access$400(Lcom/lge/sns/profile/ui/FriendView;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendView$2;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/FriendView;->access$200(Lcom/lge/sns/profile/ui/FriendView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendView$2;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendView;->access$300(Lcom/lge/sns/profile/ui/FriendView;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->updateProfileCommentList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_15} :catch_1c

    .line 186
    :goto_15
    return-void

    .line 181
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 182
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    invoke-virtual {v0}, Lcom/lge/sns/UnauthorizatedException;->printStackTrace()V

    goto :goto_15

    .line 183
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_1c
    move-exception v1

    move-object v0, v1

    .line 184
    .local v0, e:Lcom/lge/sns/SnsException;
    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->printStackTrace()V

    goto :goto_15
.end method
