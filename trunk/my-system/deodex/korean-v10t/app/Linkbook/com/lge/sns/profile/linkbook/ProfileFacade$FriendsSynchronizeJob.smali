.class Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;
.super Ljava/lang/Object;
.source "ProfileFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/linkbook/ProfileFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsSynchronizeJob"
.end annotation


# instance fields
.field private snsId:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;->snsId:Ljava/lang/String;

    .line 222
    iput-object p3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;->userId:Ljava/lang/String;

    .line 223
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 212
    instance-of v2, p1, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;

    if-eqz v2, :cond_20

    .line 213
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;

    move-object v1, v0

    .line 214
    .local v1, job:Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;
    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;->snsId:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;->snsId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;->userId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    .line 216
    .end local v1           #job:Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;
    :goto_1d
    return v2

    .line 214
    .restart local v1       #job:Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d

    .line 216
    .end local v1           #job:Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;
    :cond_20
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1d
.end method

.method public run()V
    .registers 6

    .prologue
    const-string v4, "ProfileFacade"

    .line 193
    const-string v1, "ProfileFacade"

    const-string v1, "FriendsSynchronizeJob =============== <Start>"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :try_start_9
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;->snsId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;->userId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$200(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_9 .. :try_end_12} :catch_1a
    .catch Lcom/lge/sns/SnsException; {:try_start_9 .. :try_end_12} :catch_20

    .line 207
    :goto_12
    const-string v1, "ProfileFacade"

    const-string v1, "FriendsSynchronizeJob =============== <End>"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 198
    :catch_1a
    move-exception v1

    move-object v0, v1

    .line 200
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    invoke-virtual {v0}, Lcom/lge/sns/UnauthorizatedException;->printStackTrace()V

    goto :goto_12

    .line 201
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_20
    move-exception v1

    move-object v0, v1

    .line 203
    .local v0, e:Lcom/lge/sns/SnsException;
    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->printStackTrace()V

    goto :goto_12
.end method
