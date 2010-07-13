.class Lcom/lge/sns/profile/linkbook/ProfileFacade$2;
.super Ljava/lang/Thread;
.source "ProfileFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

.field final synthetic val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$pageSize:I

.field final synthetic val$snsId:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iput-object p2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$keyword:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$snsId:Ljava/lang/String;

    iput-object p4, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$userId:Ljava/lang/String;

    iput p5, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$pageSize:I

    iput-object p6, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1295
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1296
    .local v8, profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileListItem;>;"
    const-string v3, "sns_id = ? AND NOT user_id = ?"

    .line 1298
    .local v3, whereString:Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$keyword:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND display_name LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1301
    :cond_30
    monitor-enter p0

    .line 1302
    :try_start_31
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    invoke-static {v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$300(Lcom/lge/sns/profile/linkbook/ProfileFacade;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/IProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$ProfileColumns;->LIST_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$snsId:Ljava/lang/String;

    aput-object v9, v4, v5

    const/4 v5, 0x1

    iget-object v9, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$userId:Ljava/lang/String;

    aput-object v9, v4, v5

    const-string v5, "display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1309
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_a0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_86

    move-result v0

    if-lez v0, :cond_a0

    .line 1311
    :cond_56
    :goto_56
    :try_start_56
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1312
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    invoke-static {v0, v6}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$400(Lcom/lge/sns/profile/linkbook/ProfileFacade;Landroid/database/Cursor;)Lcom/lge/sns/profile/ProfileListItem;

    move-result-object v7

    .line 1313
    .local v7, profile:Lcom/lge/sns/profile/ProfileListItem;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1314
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$pageSize:I

    if-lt v0, v1, :cond_56

    .line 1315
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    if-eqz v0, :cond_7d

    .line 1316
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_89

    move v1, v11

    :goto_7a
    invoke-interface {v0, v8, v1}, Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;->onLoadFriends(Ljava/util/List;Z)V

    .line 1318
    :cond_7d
    invoke-interface {v8}, Ljava/util/List;->clear()V
    :try_end_80
    .catchall {:try_start_56 .. :try_end_80} :catchall_81

    goto :goto_56

    .line 1322
    .end local v7           #profile:Lcom/lge/sns/profile/ProfileListItem;
    :catchall_81
    move-exception v0

    :try_start_82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1330
    .end local v6           #cursor:Landroid/database/Cursor;
    :catchall_86
    move-exception v0

    monitor-exit p0
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_86

    throw v0

    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #profile:Lcom/lge/sns/profile/ProfileListItem;
    :cond_89
    move v1, v10

    .line 1316
    goto :goto_7a

    .line 1322
    .end local v7           #profile:Lcom/lge/sns/profile/ProfileListItem;
    :cond_8b
    :try_start_8b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1324
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    if-eqz v0, :cond_9e

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9e

    .line 1325
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v8, v1}, Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;->onLoadFriends(Ljava/util/List;Z)V

    .line 1330
    :cond_9e
    :goto_9e
    monitor-exit p0

    .line 1331
    return-void

    .line 1327
    :cond_a0
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    if-eqz v0, :cond_9e

    .line 1328
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;->val$callback:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v8, v1}, Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;->onLoadFriends(Ljava/util/List;Z)V
    :try_end_aa
    .catchall {:try_start_8b .. :try_end_aa} :catchall_86

    goto :goto_9e
.end method
