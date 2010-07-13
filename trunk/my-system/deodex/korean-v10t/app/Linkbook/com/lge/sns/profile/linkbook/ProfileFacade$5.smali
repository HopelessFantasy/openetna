.class Lcom/lge/sns/profile/linkbook/ProfileFacade$5;
.super Ljava/lang/Thread;
.source "ProfileFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFollower(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

.field final synthetic val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$pageSize:I

.field final synthetic val$snsId:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iput-object p2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$snsId:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$userId:Ljava/lang/String;

    iput p4, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$pageSize:I

    iput-object p5, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    iput-object p6, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$keyword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 1785
    :try_start_0
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$900()Lcom/lge/newbay/client/IFriend;
    :try_end_3
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_0 .. :try_end_3} :catch_145
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_3} :catch_176
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_3} :catch_1b5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1ce

    move-result-object v11

    .line 1787
    .local v11, friend:Lcom/lge/newbay/client/IFriend;
    const/4 v5, 0x0

    .line 1789
    .local v5, count:I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$snsId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$userId:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$pageSize:I

    move/from16 v21, v0

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/newbay/client/IFriend;->getFollowers(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    :try_end_25
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_5 .. :try_end_25} :catch_d8
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_5 .. :try_end_25} :catch_145
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_5 .. :try_end_25} :catch_176
    .catch Lcom/lge/sns/SnsException; {:try_start_5 .. :try_end_25} :catch_1b5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_1ce

    move-result-object v10

    .line 1794
    .local v10, feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_26
    :try_start_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3b

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFirendEntryLoadStarted(ZZ)V
    :try_end_3b
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_26 .. :try_end_3b} :catch_145
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_26 .. :try_end_3b} :catch_176
    .catch Lcom/lge/sns/SnsException; {:try_start_26 .. :try_end_3b} :catch_1b5
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3b} :catch_1ce

    .line 1798
    :cond_3b
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$keyword:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 1799
    .local v14, lowerKeyword:Ljava/lang/String;
    :cond_45
    :goto_45
    if-eqz v10, :cond_133

    .line 1800
    invoke-virtual {v10}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v7

    .line 1801
    .local v7, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    if-eqz v7, :cond_45

    .line 1802
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    .line 1803
    .local v13, l:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_52
    if-ge v12, v13, :cond_117

    .line 1804
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/feed/atom/Entry;

    .line 1805
    .local v8, entry:Lcom/lge/feed/atom/Entry;
    invoke-virtual {v8}, Lcom/lge/feed/atom/Entry;->getTitleValue()Ljava/lang/String;

    move-result-object v15

    .line 1806
    .local v15, name:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/lge/feed/atom/Entry;->getSummary()Lcom/lge/feed/atom/Content;

    move-result-object v18

    if-eqz v18, :cond_10d

    invoke-virtual {v8}, Lcom/lge/feed/atom/Entry;->getSummary()Lcom/lge/feed/atom/Content;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/lge/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v17, v18

    .line 1807
    .local v17, summary:Ljava/lang/String;
    :goto_6e
    if-eqz v15, :cond_83

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_98

    :cond_83
    if-eqz v17, :cond_113

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_113

    .line 1809
    :cond_98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$1100(Lcom/lge/sns/profile/linkbook/ProfileFacade;Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/profile/FriendEntry;

    move-result-object v9

    .line 1810
    .local v9, fe:Lcom/lge/sns/profile/FriendEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b9

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-interface {v0, v1}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFirendEntryLoaded(Lcom/lge/sns/profile/FriendEntry;)V

    .line 1813
    :cond_b9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$pageSize:I

    move/from16 v18, v0
    :try_end_c1
    .catchall {:try_start_3b .. :try_end_c1} :catchall_163

    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_113

    .line 1827
    :try_start_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d7

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFirendEntryLoadFinished()V

    .line 1852
    .end local v5           #count:I
    .end local v7           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .end local v8           #entry:Lcom/lge/feed/atom/Entry;
    .end local v9           #fe:Lcom/lge/sns/profile/FriendEntry;
    .end local v10           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v11           #friend:Lcom/lge/newbay/client/IFriend;
    .end local v12           #i:I
    .end local v13           #l:I
    .end local v14           #lowerKeyword:Ljava/lang/String;
    .end local v15           #name:Ljava/lang/String;
    .end local v17           #summary:Ljava/lang/String;
    :cond_d7
    :goto_d7
    return-void

    .line 1790
    .restart local v5       #count:I
    .restart local v11       #friend:Lcom/lge/newbay/client/IFriend;
    :catch_d8
    move-exception v18

    move-object/from16 v6, v18

    .line 1791
    .local v6, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$snsId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$1000(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;)Ljava/lang/String;

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$snsId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$userId:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$pageSize:I

    move/from16 v21, v0

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/newbay/client/IFriend;->getFollowers(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    :try_end_10a
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_c6 .. :try_end_10a} :catch_145
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_c6 .. :try_end_10a} :catch_176
    .catch Lcom/lge/sns/SnsException; {:try_start_c6 .. :try_end_10a} :catch_1b5
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_10a} :catch_1ce

    move-result-object v10

    .restart local v10       #feed:Lcom/lge/feed/atom/AtomFeed;
    goto/16 :goto_26

    .line 1806
    .end local v6           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .restart local v7       #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .restart local v8       #entry:Lcom/lge/feed/atom/Entry;
    .restart local v12       #i:I
    .restart local v13       #l:I
    .restart local v14       #lowerKeyword:Ljava/lang/String;
    .restart local v15       #name:Ljava/lang/String;
    :cond_10d
    :try_start_10d
    const-string v18, ""

    move-object/from16 v17, v18

    goto/16 :goto_6e

    .line 1803
    .restart local v17       #summary:Ljava/lang/String;
    :cond_113
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_52

    .line 1818
    .end local v8           #entry:Lcom/lge/feed/atom/Entry;
    .end local v15           #name:Ljava/lang/String;
    .end local v17           #summary:Ljava/lang/String;
    :cond_117
    invoke-virtual {v10}, Lcom/lge/feed/atom/AtomFeed;->getOtherLinks()Ljava/util/List;

    move-result-object v18

    const-string v19, "next"

    invoke-static/range {v18 .. v19}, Lcom/lge/feed/atom/AtomFeed;->findLink(Ljava/util/List;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v16

    .line 1819
    .local v16, next:Lcom/lge/feed/atom/Link;
    if-eqz v16, :cond_130

    .line 1820
    invoke-virtual/range {v16 .. v16}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v18

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/lge/newbay/client/IFriend;->getFollowers(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;
    :try_end_12d
    .catchall {:try_start_10d .. :try_end_12d} :catchall_163

    move-result-object v10

    goto/16 :goto_45

    .line 1822
    :cond_130
    const/4 v10, 0x0

    goto/16 :goto_45

    .line 1827
    .end local v7           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .end local v12           #i:I
    .end local v13           #l:I
    .end local v16           #next:Lcom/lge/feed/atom/Link;
    :cond_133
    :try_start_133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d7

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFirendEntryLoadFinished()V
    :try_end_144
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_133 .. :try_end_144} :catch_145
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_133 .. :try_end_144} :catch_176
    .catch Lcom/lge/sns/SnsException; {:try_start_133 .. :try_end_144} :catch_1b5
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_144} :catch_1ce

    goto :goto_d7

    .line 1831
    .end local v5           #count:I
    .end local v10           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v11           #friend:Lcom/lge/newbay/client/IFriend;
    .end local v14           #lowerKeyword:Ljava/lang/String;
    :catch_145
    move-exception v18

    move-object/from16 v6, v18

    .line 1832
    .local v6, e:Lcom/lge/newbay/client/NewbayConnectException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d7

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lge/sns/ServerConnectFail;

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    invoke-interface/range {v18 .. v19}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFriendEntryLoadError(Ljava/lang/Exception;)V

    goto/16 :goto_d7

    .line 1827
    .end local v6           #e:Lcom/lge/newbay/client/NewbayConnectException;
    .restart local v5       #count:I
    .restart local v10       #feed:Lcom/lge/feed/atom/AtomFeed;
    .restart local v11       #friend:Lcom/lge/newbay/client/IFriend;
    :catchall_163
    move-exception v18

    :try_start_164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v19, v0

    if-eqz v19, :cond_175

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFirendEntryLoadFinished()V

    :cond_175
    throw v18
    :try_end_176
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_164 .. :try_end_176} :catch_145
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_164 .. :try_end_176} :catch_176
    .catch Lcom/lge/sns/SnsException; {:try_start_164 .. :try_end_176} :catch_1b5
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_176} :catch_1ce

    .line 1835
    .end local v5           #count:I
    .end local v10           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v11           #friend:Lcom/lge/newbay/client/IFriend;
    :catch_176
    move-exception v18

    move-object/from16 v6, v18

    .line 1836
    .local v6, e:Lorg/apache/http/client/HttpResponseException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d7

    .line 1837
    invoke-virtual {v6}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v18

    const/16 v19, 0x191

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_19d

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct/range {v19 .. v19}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    invoke-interface/range {v18 .. v19}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFriendEntryLoadError(Ljava/lang/Exception;)V

    goto/16 :goto_d7

    .line 1840
    :cond_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v6}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v20

    invoke-virtual {v6}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    invoke-interface/range {v18 .. v19}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFriendEntryLoadError(Ljava/lang/Exception;)V

    goto/16 :goto_d7

    .line 1843
    .end local v6           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_1b5
    move-exception v18

    move-object/from16 v6, v18

    .line 1844
    .local v6, e:Lcom/lge/sns/SnsException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d7

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-interface {v0, v1}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFriendEntryLoadError(Ljava/lang/Exception;)V

    goto/16 :goto_d7

    .line 1847
    .end local v6           #e:Lcom/lge/sns/SnsException;
    :catch_1ce
    move-exception v18

    move-object/from16 v6, v18

    .line 1848
    .local v6, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d7

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lge/sns/InvalidResponseException;

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface/range {v18 .. v19}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFriendEntryLoadError(Ljava/lang/Exception;)V

    goto/16 :goto_d7
.end method
