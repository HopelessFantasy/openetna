.class Lcom/lge/sns/profile/ui/ImportFriends$5;
.super Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;
.source "ImportFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ImportFriends;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ImportFriends;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ImportFriends;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ImportFriends$5;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends$5;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ImportFriends;->access$700(Lcom/lge/sns/profile/ui/ImportFriends;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends$5;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ImportFriends;->access$600(Lcom/lge/sns/profile/ui/ImportFriends;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends$5;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/ImportFriends;->access$900(Lcom/lge/sns/profile/ui/ImportFriends;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->updateFriendList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_0 .. :try_end_15} :catch_22
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_15} :catch_28

    .line 227
    :goto_15
    invoke-static {}, Lcom/lge/sns/profile/ui/ImportFriends;->access$400()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/lge/sns/profile/ui/ImportFriends$5$1;

    invoke-direct {v2, p0}, Lcom/lge/sns/profile/ui/ImportFriends$5$1;-><init>(Lcom/lge/sns/profile/ui/ImportFriends$5;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void

    .line 221
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 222
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    invoke-virtual {v0}, Lcom/lge/sns/UnauthorizatedException;->printStackTrace()V

    goto :goto_15

    .line 223
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_28
    move-exception v1

    move-object v0, v1

    .line 224
    .local v0, e:Lcom/lge/sns/SnsException;
    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->printStackTrace()V

    goto :goto_15
.end method
