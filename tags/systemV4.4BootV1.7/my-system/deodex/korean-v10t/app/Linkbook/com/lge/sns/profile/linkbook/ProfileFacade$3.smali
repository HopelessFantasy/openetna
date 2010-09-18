.class Lcom/lge/sns/profile/linkbook/ProfileFacade$3;
.super Ljava/lang/Object;
.source "ProfileFacade.java"

# interfaces
.implements Lcom/lge/feed/Feed$FeedEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/linkbook/ProfileFacade;->updateFriendList(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

.field final synthetic val$snsId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iput-object p2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->val$snsId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntry(Lcom/lge/feed/atom/Entry;)V
    .registers 14
    .parameter "entry"

    .prologue
    .line 1461
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/newbay/client/Uris;->getProfileParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$SnsBasicParam;

    move-result-object v2

    .line 1462
    .local v2, param:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    invoke-virtual {v2}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 1463
    .local v1, friendUid:Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iget-object v8, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->val$snsId:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    .line 1464
    .local v5, rowId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_74

    .line 1466
    :try_start_1a
    iget-object v7, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iget-object v8, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->val$snsId:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileFromServer(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v3

    .line 1467
    .local v3, profile:Lcom/lge/sns/profile/Profile;
    if-eqz v3, :cond_4c

    .line 1468
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getUpdated()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/lge/sns/profile/Profile;->setProfileUpdated(Ljava/util/Date;)V

    .line 1469
    iget-object v7, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    invoke-virtual {v7, v3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->addProfile(Lcom/lge/sns/profile/Profile;)Landroid/net/Uri;

    .line 1470
    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getAvatarLink()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4c

    .line 1471
    iget-object v7, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->val$snsId:Ljava/lang/String;

    invoke-static {v7}, Lcom/lge/sns/BackgroundJobManager;->getInstance(Ljava/lang/String;)Lcom/lge/sns/BackgroundJobManager;

    move-result-object v7

    new-instance v8, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;

    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iget-object v10, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->val$snsId:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getAvatarLink()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v1, v11}, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;-><init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/lge/sns/BackgroundJobManager;->addJob(Ljava/lang/Runnable;)V
    :try_end_4c
    .catch Lcom/lge/sns/SnsException; {:try_start_1a .. :try_end_4c} :catch_4d

    .line 1489
    .end local v3           #profile:Lcom/lge/sns/profile/Profile;
    :cond_4c
    :goto_4c
    return-void

    .line 1475
    :catch_4d
    move-exception v7

    move-object v0, v7

    .line 1476
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v7, "ProfileFacade"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get friend profile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->val$snsId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 1479
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :cond_74
    iget-object v7, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iget-object v8, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->val$snsId:Ljava/lang/String;

    invoke-static {v7, v8, v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$500(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 1480
    .local v4, profileUpdated:Ljava/util/Date;
    if-eqz v4, :cond_4c

    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getUpdated()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v7

    if-gez v7, :cond_4c

    .line 1483
    :try_start_88
    iget-object v7, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iget-object v8, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->val$snsId:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->refreshProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Lcom/lge/sns/SnsException; {:try_start_88 .. :try_end_8f} :catch_90

    goto :goto_4c

    .line 1484
    :catch_90
    move-exception v7

    move-object v0, v7

    .line 1485
    .restart local v0       #e:Lcom/lge/sns/SnsException;
    const-string v7, "ProfileFacade"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get friend profile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;->val$snsId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method
