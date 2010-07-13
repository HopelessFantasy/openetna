.class Lcom/lge/sns/profile/linkbook/ProfileFacade$7;
.super Ljava/lang/Thread;
.source "ProfileFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContactsList(Landroid/content/Context;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

.field final synthetic val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pageSize:I

.field final synthetic val$snsid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Landroid/content/Context;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2617
    iput-object p1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iput-object p2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$snsid:Ljava/lang/String;

    iput p4, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$pageSize:I

    iput-object p5, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 2618
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2619
    .local v18, profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileListItem;>;"
    monitor-enter p0

    .line 2620
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    move-object v5, v0

    invoke-static {v5}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$1500(Lcom/lge/sns/profile/linkbook/ProfileFacade;)Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$1400()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "system_id IS NULL"

    const/4 v9, 0x0

    const-string v10, "name ASC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2627
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_da

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_b6

    move-result v5

    if-lez v5, :cond_da

    .line 2629
    :try_start_26
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$context:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v12

    .line 2630
    .local v12, am:Lcom/lge/sns/account/IAccountFacade;
    if-eqz v12, :cond_bb

    .line 2631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$snsid:Ljava/lang/String;

    move-object v5, v0

    invoke-interface {v12, v5}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v11

    .line 2632
    .local v11, account:Lcom/lge/sns/account/Account;
    invoke-virtual {v11}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v13

    .line 2633
    .local v13, credential:Lcom/lge/sns/account/Credential;
    invoke-virtual {v13}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v20

    .line 2635
    .local v20, userid:Ljava/lang/String;
    :cond_46
    :goto_46
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 2636
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2637
    .local v15, id:J
    sget-object v5, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 2638
    .local v19, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$snsid:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, v19

    move-object v2, v14

    move-object v3, v6

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$1600(Lcom/lge/sns/profile/linkbook/ProfileFacade;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v17

    .line 2639
    .local v17, profile:Lcom/lge/sns/profile/ProfileListItem;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2640
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$pageSize:I

    move v6, v0

    if-lt v5, v6, :cond_46

    .line 2641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    move-object v5, v0

    if-eqz v5, :cond_ad

    .line 2642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    move-object v5, v0

    invoke-interface {v14}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-nez v6, :cond_b9

    const/4 v6, 0x1

    :goto_a6
    move-object v0, v5

    move-object/from16 v1, v18

    move v2, v6

    invoke-interface {v0, v1, v2}, Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;->onLoadFriends(Ljava/util/List;Z)V

    .line 2644
    :cond_ad
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V
    :try_end_b0
    .catchall {:try_start_26 .. :try_end_b0} :catchall_b1

    goto :goto_46

    .line 2649
    .end local v11           #account:Lcom/lge/sns/account/Account;
    .end local v12           #am:Lcom/lge/sns/account/IAccountFacade;
    .end local v13           #credential:Lcom/lge/sns/account/Credential;
    .end local v15           #id:J
    .end local v17           #profile:Lcom/lge/sns/profile/ProfileListItem;
    .end local v19           #uri:Landroid/net/Uri;
    .end local v20           #userid:Ljava/lang/String;
    :catchall_b1
    move-exception v5

    :try_start_b2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v5

    .line 2657
    .end local v14           #cursor:Landroid/database/Cursor;
    :catchall_b6
    move-exception v5

    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_b6

    throw v5

    .line 2642
    .restart local v11       #account:Lcom/lge/sns/account/Account;
    .restart local v12       #am:Lcom/lge/sns/account/IAccountFacade;
    .restart local v13       #credential:Lcom/lge/sns/account/Credential;
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v15       #id:J
    .restart local v17       #profile:Lcom/lge/sns/profile/ProfileListItem;
    .restart local v19       #uri:Landroid/net/Uri;
    .restart local v20       #userid:Ljava/lang/String;
    :cond_b9
    const/4 v6, 0x0

    goto :goto_a6

    .line 2649
    .end local v11           #account:Lcom/lge/sns/account/Account;
    .end local v13           #credential:Lcom/lge/sns/account/Credential;
    .end local v15           #id:J
    .end local v17           #profile:Lcom/lge/sns/profile/ProfileListItem;
    .end local v19           #uri:Landroid/net/Uri;
    .end local v20           #userid:Ljava/lang/String;
    :cond_bb
    :try_start_bb
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    move-object v5, v0

    if-eqz v5, :cond_d8

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d8

    .line 2652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v18

    move v2, v6

    invoke-interface {v0, v1, v2}, Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;->onLoadFriends(Ljava/util/List;Z)V

    .line 2657
    .end local v12           #am:Lcom/lge/sns/account/IAccountFacade;
    :cond_d8
    :goto_d8
    monitor-exit p0

    .line 2658
    return-void

    .line 2654
    :cond_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    move-object v5, v0

    if-eqz v5, :cond_d8

    .line 2655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v18

    move v2, v6

    invoke-interface {v0, v1, v2}, Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;->onLoadFriends(Ljava/util/List;Z)V
    :try_end_ee
    .catchall {:try_start_bb .. :try_end_ee} :catchall_b6

    goto :goto_d8
.end method
