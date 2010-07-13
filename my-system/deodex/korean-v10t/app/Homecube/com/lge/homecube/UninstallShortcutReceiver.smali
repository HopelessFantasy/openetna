.class public Lcom/lge/homecube/UninstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallShortcutReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 23
    .parameter "context"
    .parameter "data"

    .prologue
    .line 30
    const-string v5, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/content/Intent;

    .line 31
    .local v16, intent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 32
    .local v18, name:Ljava/lang/String;
    const-string v5, "duplicate"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 34
    .local v12, duplicate:Z
    if-eqz v16, :cond_8b

    if-eqz v18, :cond_8b

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 36
    .local v4, cr:Landroid/content/ContentResolver;
    sget-object v5, Lcom/lge/homecube/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "intent"

    aput-object v8, v6, v7

    const-string v7, "title=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v18, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 40
    .local v10, c:Landroid/database/Cursor;
    const-string v5, "intent"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 41
    .local v17, intentIndex:I
    const-string v5, "_id"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 43
    .local v15, idIndex:I
    const/4 v11, 0x0

    .line 46
    .local v11, changed:Z
    :cond_50
    :goto_50
    :try_start_50
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_8c

    move-result v5

    if-eqz v5, :cond_80

    .line 48
    :try_start_56
    move-object v0, v10

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 49
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 50
    .local v13, id:J
    const/4 v5, 0x0

    invoke-static {v13, v14, v5}, Lcom/lge/homecube/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v19

    .line 51
    .local v19, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move-object/from16 v1, v19

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_56 .. :try_end_7d} :catchall_8c
    .catch Ljava/net/URISyntaxException; {:try_start_56 .. :try_end_7d} :catch_91

    .line 52
    const/4 v11, 0x1

    .line 53
    if-nez v12, :cond_50

    .line 62
    .end local v13           #id:J
    .end local v19           #uri:Landroid/net/Uri;
    :cond_80
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 65
    if-eqz v11, :cond_8b

    sget-object v5, Lcom/lge/homecube/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 67
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #changed:Z
    .end local v15           #idIndex:I
    .end local v17           #intentIndex:I
    :cond_8b
    return-void

    .line 62
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v11       #changed:Z
    .restart local v15       #idIndex:I
    .restart local v17       #intentIndex:I
    :catchall_8c
    move-exception v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v5

    .line 57
    :catch_91
    move-exception v5

    goto :goto_50
.end method
