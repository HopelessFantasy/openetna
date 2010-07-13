.class Lcom/lge/sns/profile/linkbook/ProfileFacade$4;
.super Ljava/lang/Thread;
.source "ProfileFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFollowing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

.field final synthetic val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$pageNum:I

.field final synthetic val$pageSize:I

.field final synthetic val$snsId:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;II)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    iput-object p2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$keyword:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$snsId:Ljava/lang/String;

    iput-object p4, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$userId:Ljava/lang/String;

    iput-object p5, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    iput p6, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$pageNum:I

    iput p7, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$pageSize:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v2, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v5, "%"

    .line 1728
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$keyword:Ljava/lang/String;

    if-eqz v0, :cond_af

    .line 1729
    const-string v3, "sns_id = ? AND NOT user_id = ?  and user_name like ? "

    .line 1730
    .local v3, whereString:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$snsId:Ljava/lang/String;

    aput-object v0, v4, v11

    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$userId:Ljava/lang/String;

    aput-object v0, v4, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 1736
    .local v4, whereArgs:[Ljava/lang/String;
    :goto_33
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    invoke-static {v0, v3, v4}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$600(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1737
    .local v6, count:I
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    if-eqz v0, :cond_53

    .line 1738
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    iget v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$pageNum:I

    if-eq v1, v10, :cond_bd

    move v1, v10

    :goto_44
    iget v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$pageSize:I

    add-int/2addr v2, v6

    sub-int/2addr v2, v10

    iget v5, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$pageSize:I

    div-int/2addr v2, v5

    iget v5, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$pageNum:I

    if-le v2, v5, :cond_bf

    move v2, v10

    :goto_50
    invoke-interface {v0, v1, v2}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFirendEntryLoadStarted(ZZ)V

    .line 1741
    :cond_53
    :try_start_53
    iget v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$pageNum:I

    sub-int/2addr v0, v10

    iget v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$pageSize:I

    mul-int v9, v0, v1

    .line 1742
    .local v9, startIndex:I
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    invoke-static {v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$700(Lcom/lge/sns/profile/linkbook/ProfileFacade;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/IProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$ProfileColumns;->COLUMNS:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "display_name limit "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$pageSize:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_86
    .catchall {:try_start_53 .. :try_end_86} :catchall_a4

    move-result-object v7

    .line 1749
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_c4

    .line 1751
    :cond_89
    :goto_89
    :try_start_89
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 1752
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->this$0:Lcom/lge/sns/profile/linkbook/ProfileFacade;

    invoke-static {v0, v7}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->access$800(Lcom/lge/sns/profile/linkbook/ProfileFacade;Landroid/database/Cursor;)Lcom/lge/sns/profile/Profile;

    move-result-object v8

    .line 1753
    .local v8, profile:Lcom/lge/sns/profile/Profile;
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    if-eqz v0, :cond_89

    .line 1754
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    invoke-interface {v0, v8}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFirendEntryLoaded(Lcom/lge/sns/profile/FriendEntry;)V
    :try_end_9e
    .catchall {:try_start_89 .. :try_end_9e} :catchall_9f

    goto :goto_89

    .line 1758
    .end local v8           #profile:Lcom/lge/sns/profile/Profile;
    :catchall_9f
    move-exception v0

    :try_start_a0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_a4
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_a4

    .line 1762
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #startIndex:I
    :catchall_a4
    move-exception v0

    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    if-eqz v1, :cond_ae

    .line 1763
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    invoke-interface {v1}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFirendEntryLoadFinished()V

    :cond_ae
    throw v0

    .line 1732
    .end local v3           #whereString:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #count:I
    :cond_af
    const-string v3, "sns_id = ? AND NOT user_id = ? "

    .line 1733
    .restart local v3       #whereString:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$snsId:Ljava/lang/String;

    aput-object v0, v4, v11

    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$userId:Ljava/lang/String;

    aput-object v0, v4, v10

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_33

    .restart local v6       #count:I
    :cond_bd
    move v1, v11

    .line 1738
    goto :goto_44

    :cond_bf
    move v2, v11

    goto :goto_50

    .line 1758
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #startIndex:I
    :cond_c1
    :try_start_c1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_a4

    .line 1762
    :cond_c4
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    if-eqz v0, :cond_cd

    .line 1763
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->val$callback:Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;

    invoke-interface {v0}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;->onFirendEntryLoadFinished()V

    .line 1766
    :cond_cd
    return-void
.end method
