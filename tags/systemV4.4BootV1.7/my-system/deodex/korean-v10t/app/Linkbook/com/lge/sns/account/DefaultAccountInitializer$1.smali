.class Lcom/lge/sns/account/DefaultAccountInitializer$1;
.super Ljava/lang/Object;
.source "DefaultAccountInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/DefaultAccountInitializer;->getInitializeJob()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

.field final synthetic val$mediaFacade:Lcom/lge/sns/media/IMediaFacade;

.field final synthetic val$messageFacade:Lcom/lge/sns/message/IMessageFacade;

.field final synthetic val$profileFacade:Lcom/lge/sns/profile/IProfileFacade;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/DefaultAccountInitializer;Lcom/lge/sns/profile/IProfileFacade;Lcom/lge/sns/message/IMessageFacade;Lcom/lge/sns/media/IMediaFacade;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    iput-object p2, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->val$profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    iput-object p3, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->val$messageFacade:Lcom/lge/sns/message/IMessageFacade;

    iput-object p4, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->val$mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const-string v1, "AccountInitializer"

    .line 41
    :try_start_2
    const-string v1, "AccountInitializer"

    const-string v2, "Initilizing new feeds"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_88

    .line 44
    :try_start_9
    iget-object v1, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    iget-object v1, v1, Lcom/lge/sns/account/DefaultAccountInitializer;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v2, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    invoke-virtual {v2}, Lcom/lge/sns/account/DefaultAccountInitializer;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    invoke-virtual {v3}, Lcom/lge/sns/account/DefaultAccountInitializer;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedList(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_88
    .catch Lcom/lge/sns/SnsException; {:try_start_9 .. :try_end_1c} :catch_7c

    .line 50
    :goto_1c
    :try_start_1c
    const-string v1, "AccountInitializer"

    const-string v2, "Initilizing friend list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_88

    .line 53
    :try_start_23
    iget-object v1, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->val$profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v2, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    invoke-virtual {v2}, Lcom/lge/sns/account/DefaultAccountInitializer;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    invoke-virtual {v3}, Lcom/lge/sns/account/DefaultAccountInitializer;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->updateFriendList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_88
    .catch Lcom/lge/sns/SnsException; {:try_start_23 .. :try_end_34} :catch_8f

    .line 58
    :goto_34
    :try_start_34
    const-string v1, "AccountInitializer"

    const-string v2, "Initilizing message threads"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_88

    .line 61
    :try_start_3b
    iget-object v1, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->val$messageFacade:Lcom/lge/sns/message/IMessageFacade;

    iget-object v2, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    invoke-virtual {v2}, Lcom/lge/sns/account/DefaultAccountInitializer;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    invoke-virtual {v3}, Lcom/lge/sns/account/DefaultAccountInitializer;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/message/IMessageFacade;->updateThreads(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4c} :catch_9b

    .line 66
    :goto_4c
    :try_start_4c
    const-string v1, "AccountInitializer"

    const-string v2, "Initilizing profile comments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_88

    .line 69
    :try_start_53
    iget-object v1, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->val$profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v2, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    invoke-virtual {v2}, Lcom/lge/sns/account/DefaultAccountInitializer;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    invoke-virtual {v3}, Lcom/lge/sns/account/DefaultAccountInitializer;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->updateProfileCommentList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_88
    .catch Lcom/lge/sns/SnsException; {:try_start_53 .. :try_end_64} :catch_a7

    .line 74
    :goto_64
    :try_start_64
    iget-object v1, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->val$mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-object v2, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    invoke-virtual {v2}, Lcom/lge/sns/account/DefaultAccountInitializer;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    invoke-virtual {v3}, Lcom/lge/sns/account/DefaultAccountInitializer;->getUid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/sns/media/IMediaFacade;->updateAllMediaFiles(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;)V
    :try_end_76
    .catchall {:try_start_64 .. :try_end_76} :catchall_88
    .catch Lcom/lge/sns/SnsException; {:try_start_64 .. :try_end_76} :catch_b3

    .line 79
    :goto_76
    iget-object v1, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    invoke-virtual {v1}, Lcom/lge/sns/account/DefaultAccountInitializer;->notifyInitializeCompleted()V

    .line 81
    return-void

    .line 45
    :catch_7c
    move-exception v1

    move-object v0, v1

    .line 46
    .local v0, e:Lcom/lge/sns/SnsException;
    :try_start_7e
    const-string v1, "AccountInitializer"

    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_88

    goto :goto_1c

    .line 79
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catchall_88
    move-exception v1

    iget-object v2, p0, Lcom/lge/sns/account/DefaultAccountInitializer$1;->this$0:Lcom/lge/sns/account/DefaultAccountInitializer;

    invoke-virtual {v2}, Lcom/lge/sns/account/DefaultAccountInitializer;->notifyInitializeCompleted()V

    throw v1

    .line 54
    :catch_8f
    move-exception v1

    move-object v0, v1

    .line 55
    .restart local v0       #e:Lcom/lge/sns/SnsException;
    :try_start_91
    const-string v1, "AccountInitializer"

    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 62
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_9b
    move-exception v1

    move-object v0, v1

    .line 63
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AccountInitializer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 70
    .end local v0           #e:Ljava/lang/Exception;
    :catch_a7
    move-exception v1

    move-object v0, v1

    .line 71
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v1, "AccountInitializer"

    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 75
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_b3
    move-exception v1

    move-object v0, v1

    .line 76
    .restart local v0       #e:Lcom/lge/sns/SnsException;
    const-string v1, "AccountInitializer"

    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_be
    .catchall {:try_start_91 .. :try_end_be} :catchall_88

    goto :goto_76
.end method
