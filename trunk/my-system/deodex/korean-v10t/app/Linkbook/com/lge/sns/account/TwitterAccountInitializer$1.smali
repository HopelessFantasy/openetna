.class Lcom/lge/sns/account/TwitterAccountInitializer$1;
.super Ljava/lang/Object;
.source "TwitterAccountInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/TwitterAccountInitializer;->getInitializeJob()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/TwitterAccountInitializer;

.field final synthetic val$messageFacade:Lcom/lge/sns/message/IMessageFacade;

.field final synthetic val$profileFacade:Lcom/lge/sns/profile/IProfileFacade;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/TwitterAccountInitializer;Lcom/lge/sns/profile/IProfileFacade;Lcom/lge/sns/message/IMessageFacade;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->this$0:Lcom/lge/sns/account/TwitterAccountInitializer;

    iput-object p2, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->val$profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    iput-object p3, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->val$messageFacade:Lcom/lge/sns/message/IMessageFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const-string v1, "AccountInitializer"

    .line 40
    :try_start_2
    const-string v1, "AccountInitializer"

    const-string v2, "Initilizing new feeds"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_7a

    .line 43
    :try_start_9
    iget-object v1, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->this$0:Lcom/lge/sns/account/TwitterAccountInitializer;

    iget-object v1, v1, Lcom/lge/sns/account/TwitterAccountInitializer;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v2, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->this$0:Lcom/lge/sns/account/TwitterAccountInitializer;

    invoke-virtual {v2}, Lcom/lge/sns/account/TwitterAccountInitializer;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->this$0:Lcom/lge/sns/account/TwitterAccountInitializer;

    invoke-virtual {v3}, Lcom/lge/sns/account/TwitterAccountInitializer;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedList(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_7a
    .catch Lcom/lge/sns/SnsException; {:try_start_9 .. :try_end_1c} :catch_6e

    .line 48
    :goto_1c
    :try_start_1c
    const-string v1, "AccountInitializer"

    const-string v2, "Initilizing friend list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_7a

    .line 51
    :try_start_23
    iget-object v1, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->val$profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v2, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->this$0:Lcom/lge/sns/account/TwitterAccountInitializer;

    invoke-virtual {v2}, Lcom/lge/sns/account/TwitterAccountInitializer;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->this$0:Lcom/lge/sns/account/TwitterAccountInitializer;

    invoke-virtual {v3}, Lcom/lge/sns/account/TwitterAccountInitializer;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->updateFriendList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_7a
    .catch Lcom/lge/sns/SnsException; {:try_start_23 .. :try_end_34} :catch_81

    .line 56
    :goto_34
    :try_start_34
    const-string v1, "AccountInitializer"

    const-string v2, "Initilizing inbox"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_7a

    .line 59
    :try_start_3b
    iget-object v1, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->val$messageFacade:Lcom/lge/sns/message/IMessageFacade;

    iget-object v2, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->this$0:Lcom/lge/sns/account/TwitterAccountInitializer;

    invoke-virtual {v2}, Lcom/lge/sns/account/TwitterAccountInitializer;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->this$0:Lcom/lge/sns/account/TwitterAccountInitializer;

    invoke-virtual {v3}, Lcom/lge/sns/account/TwitterAccountInitializer;->getUid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Inbox"

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/sns/message/IMessageFacade;->updateMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4e} :catch_8d

    .line 64
    :goto_4e
    :try_start_4e
    const-string v1, "AccountInitializer"

    const-string v2, "Initilizing outbox"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_7a

    .line 67
    :try_start_55
    iget-object v1, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->val$messageFacade:Lcom/lge/sns/message/IMessageFacade;

    iget-object v2, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->this$0:Lcom/lge/sns/account/TwitterAccountInitializer;

    invoke-virtual {v2}, Lcom/lge/sns/account/TwitterAccountInitializer;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->this$0:Lcom/lge/sns/account/TwitterAccountInitializer;

    invoke-virtual {v3}, Lcom/lge/sns/account/TwitterAccountInitializer;->getUid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Outbox"

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/sns/message/IMessageFacade;->updateMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_55 .. :try_end_68} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_68} :catch_99

    .line 72
    :goto_68
    iget-object v1, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->this$0:Lcom/lge/sns/account/TwitterAccountInitializer;

    invoke-virtual {v1}, Lcom/lge/sns/account/TwitterAccountInitializer;->notifyInitializeCompleted()V

    .line 74
    return-void

    .line 44
    :catch_6e
    move-exception v1

    move-object v0, v1

    .line 45
    .local v0, e:Lcom/lge/sns/SnsException;
    :try_start_70
    const-string v1, "AccountInitializer"

    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_7a

    goto :goto_1c

    .line 72
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catchall_7a
    move-exception v1

    iget-object v2, p0, Lcom/lge/sns/account/TwitterAccountInitializer$1;->this$0:Lcom/lge/sns/account/TwitterAccountInitializer;

    invoke-virtual {v2}, Lcom/lge/sns/account/TwitterAccountInitializer;->notifyInitializeCompleted()V

    throw v1

    .line 52
    :catch_81
    move-exception v1

    move-object v0, v1

    .line 53
    .restart local v0       #e:Lcom/lge/sns/SnsException;
    :try_start_83
    const-string v1, "AccountInitializer"

    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 60
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_8d
    move-exception v1

    move-object v0, v1

    .line 61
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AccountInitializer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 68
    .end local v0           #e:Ljava/lang/Exception;
    :catch_99
    move-exception v1

    move-object v0, v1

    .line 69
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "AccountInitializer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catchall {:try_start_83 .. :try_end_a4} :catchall_7a

    goto :goto_68
.end method
