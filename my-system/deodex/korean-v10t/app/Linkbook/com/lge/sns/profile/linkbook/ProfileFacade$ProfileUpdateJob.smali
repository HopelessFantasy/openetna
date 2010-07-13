.class Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;
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
    name = "ProfileUpdateJob"
.end annotation


# instance fields
.field private avatarUri:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private snsId:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter "snsId"
    .parameter "userId"
    .parameter "avatarUri"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->snsId:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->userId:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->avatarUri:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->key:Ljava/lang/String;

    .line 147
    iget-object v0, p1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->avatarLoading:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 151
    instance-of v2, p1, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;

    if-eqz v2, :cond_2a

    .line 152
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;

    move-object v1, v0

    .line 153
    .local v1, job:Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;
    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->snsId:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->snsId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->userId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->avatarUri:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->avatarUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    .line 155
    .end local v1           #job:Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;
    :goto_27
    return v2

    .line 153
    .restart local v1       #job:Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;
    :cond_28
    const/4 v2, 0x0

    goto :goto_27

    .line 155
    .end local v1           #job:Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;
    :cond_2a
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_27
.end method

.method public run()V
    .registers 5

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->updateAvatar()[B

    move-result-object v0

    .line 160
    .local v0, avatarImage:[B
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->snsId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->userId:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$000(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 161
    return-void
.end method

.method protected updateAvatar()[B
    .registers 7

    .prologue
    const-string v5, ", "

    const-string v4, " from "

    const-string v3, "ProfileFacade"

    .line 165
    const-string v1, "ProfileFacade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Avatar Image for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->avatarUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, avatarImage:[B
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->avatarUri:Ljava/lang/String;

    if-eqz v1, :cond_77

    .line 171
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->avatarUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/newbay/client/impl/HttpUtil;->getHttpBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 173
    if-nez v0, :cond_8a

    .line 174
    const-string v1, "ProfileFacade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load avatar image for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->avatarUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_77
    :goto_77
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->snsId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->userId:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$100(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 181
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iget-object v1, v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->avatarLoading:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 183
    return-object v0

    .line 176
    :cond_8a
    const-string v1, "ProfileFacade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done. Image Size ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77
.end method
