.class Lcom/lge/sns/profile/linkbook/ProfileFacade$6;
.super Ljava/lang/Thread;
.source "ProfileFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFollower(Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

.field final synthetic val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

.field final synthetic val$pageNum:I

.field final synthetic val$pageSize:I

.field final synthetic val$snsId:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iput-object p2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$snsId:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$userId:Ljava/lang/String;

    iput p4, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$pageNum:I

    iput p5, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$pageSize:I

    iput-object p6, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 1861
    :try_start_2
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$1200()Lcom/lge/newbay/client/IFriend;
    :try_end_5
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_2 .. :try_end_5} :catch_83
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_2 .. :try_end_5} :catch_94
    .catch Lcom/lge/sns/SnsException; {:try_start_2 .. :try_end_5} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_cc

    move-result-object v5

    .line 1864
    .local v5, friend:Lcom/lge/newbay/client/IFriend;
    :try_start_6
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$snsId:Ljava/lang/String;

    iget-object v10, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$userId:Ljava/lang/String;

    iget v11, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$pageNum:I

    iget v12, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$pageSize:I

    invoke-interface {v5, v9, v10, v11, v12}, Lcom/lge/newbay/client/IFriend;->getFollowers(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    :try_end_11
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_6 .. :try_end_11} :catch_54
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_6 .. :try_end_11} :catch_83
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_6 .. :try_end_11} :catch_94
    .catch Lcom/lge/sns/SnsException; {:try_start_6 .. :try_end_11} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_cc

    move-result-object v4

    .line 1869
    .local v4, feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_12
    if-eqz v4, :cond_77

    .line 1870
    :try_start_14
    invoke-virtual {v4}, Lcom/lge/feed/atom/AtomFeed;->getOtherLinks()Ljava/util/List;

    move-result-object v9

    const-string v10, "next"

    invoke-static {v9, v10}, Lcom/lge/feed/atom/AtomFeed;->findLink(Ljava/util/List;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v9

    if-eqz v9, :cond_6a

    move v6, v13

    .line 1871
    .local v6, hasNext:Z
    :goto_21
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    if-eqz v9, :cond_2f

    .line 1872
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    iget v10, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$pageNum:I

    if-eq v10, v13, :cond_6c

    move v10, v13

    :goto_2c
    invoke-interface {v9, v10, v6}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFirendEntryLoadStarted(ZZ)V
    :try_end_2f
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_14 .. :try_end_2f} :catch_83
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_14 .. :try_end_2f} :catch_94
    .catch Lcom/lge/sns/SnsException; {:try_start_14 .. :try_end_2f} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2f} :catch_cc

    .line 1875
    :cond_2f
    :try_start_2f
    invoke-virtual {v4}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 1876
    .local v1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    if-eqz v1, :cond_6e

    .line 1877
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 1878
    .local v8, l:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3a
    if-ge v7, v8, :cond_6e

    .line 1879
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/feed/atom/Entry;

    .line 1880
    .local v2, entry:Lcom/lge/feed/atom/Entry;
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    invoke-static {v9, v2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$1100(Lcom/lge/sns/profile/linkbook/ProfileFacade;Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/profile/FriendEntry;

    move-result-object v3

    .line 1881
    .local v3, fe:Lcom/lge/sns/profile/FriendEntry;
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    if-eqz v9, :cond_51

    .line 1882
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    invoke-interface {v9, v3}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFirendEntryLoaded(Lcom/lge/sns/profile/FriendEntry;)V
    :try_end_51
    .catchall {:try_start_2f .. :try_end_51} :catchall_78

    .line 1878
    :cond_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 1865
    .end local v1           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .end local v2           #entry:Lcom/lge/feed/atom/Entry;
    .end local v3           #fe:Lcom/lge/sns/profile/FriendEntry;
    .end local v4           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v6           #hasNext:Z
    .end local v7           #i:I
    .end local v8           #l:I
    :catch_54
    move-exception v9

    move-object v0, v9

    .line 1866
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_56
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iget-object v10, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$snsId:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$1300(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;)Ljava/lang/String;

    .line 1867
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$snsId:Ljava/lang/String;

    iget-object v10, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$userId:Ljava/lang/String;

    iget v11, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$pageNum:I

    iget v12, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$pageSize:I

    invoke-interface {v5, v9, v10, v11, v12}, Lcom/lge/newbay/client/IFriend;->getFollowers(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v4

    .restart local v4       #feed:Lcom/lge/feed/atom/AtomFeed;
    goto :goto_12

    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :cond_6a
    move v6, v14

    .line 1870
    goto :goto_21

    .restart local v6       #hasNext:Z
    :cond_6c
    move v10, v14

    .line 1872
    goto :goto_2c

    .line 1887
    .restart local v1       #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    :cond_6e
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    if-eqz v9, :cond_77

    .line 1888
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    invoke-interface {v9}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFirendEntryLoadFinished()V

    .line 1913
    .end local v1           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .end local v4           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v5           #friend:Lcom/lge/newbay/client/IFriend;
    .end local v6           #hasNext:Z
    :cond_77
    :goto_77
    return-void

    .line 1887
    .restart local v4       #feed:Lcom/lge/feed/atom/AtomFeed;
    .restart local v5       #friend:Lcom/lge/newbay/client/IFriend;
    .restart local v6       #hasNext:Z
    :catchall_78
    move-exception v9

    iget-object v10, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    if-eqz v10, :cond_82

    .line 1888
    iget-object v10, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    invoke-interface {v10}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFirendEntryLoadFinished()V

    :cond_82
    throw v9
    :try_end_83
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_56 .. :try_end_83} :catch_83
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_56 .. :try_end_83} :catch_94
    .catch Lcom/lge/sns/SnsException; {:try_start_56 .. :try_end_83} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_83} :catch_cc

    .line 1892
    .end local v4           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v5           #friend:Lcom/lge/newbay/client/IFriend;
    .end local v6           #hasNext:Z
    :catch_83
    move-exception v9

    move-object v0, v9

    .line 1893
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    if-eqz v9, :cond_77

    .line 1894
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    new-instance v10, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v10, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v9, v10}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFriendEntryLoadError(Ljava/lang/Exception;)V

    goto :goto_77

    .line 1896
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_94
    move-exception v9

    move-object v0, v9

    .line 1897
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    if-eqz v9, :cond_77

    .line 1898
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v9

    const/16 v10, 0x191

    if-ne v9, v10, :cond_ad

    .line 1899
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    new-instance v10, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v10}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    invoke-interface {v9, v10}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFriendEntryLoadError(Ljava/lang/Exception;)V

    goto :goto_77

    .line 1901
    :cond_ad
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    new-instance v10, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v11

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v10}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFriendEntryLoadError(Ljava/lang/Exception;)V

    goto :goto_77

    .line 1904
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_c0
    move-exception v9

    move-object v0, v9

    .line 1905
    .local v0, e:Lcom/lge/sns/SnsException;
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    if-eqz v9, :cond_77

    .line 1906
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    invoke-interface {v9, v0}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFriendEntryLoadError(Ljava/lang/Exception;)V

    goto :goto_77

    .line 1908
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_cc
    move-exception v9

    move-object v0, v9

    .line 1909
    .local v0, e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    if-eqz v9, :cond_77

    .line 1910
    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    new-instance v10, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v10, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v9, v10}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFriendEntryLoadError(Ljava/lang/Exception;)V

    goto :goto_77
.end method
