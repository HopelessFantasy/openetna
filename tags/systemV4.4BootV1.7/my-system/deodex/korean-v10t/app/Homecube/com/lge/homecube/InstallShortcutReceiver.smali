.class public Lcom/lge/homecube/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# instance fields
.field private final mCoordinates:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/homecube/InstallShortcutReceiver;->mCoordinates:[I

    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .registers 15
    .parameter "context"
    .parameter "xy"
    .parameter "screen"

    .prologue
    .line 67
    const/4 v0, 0x4

    .line 68
    .local v0, xCount:I
    const/4 v0, 0x4

    .line 70
    .local v0, yCount:I
    const/4 v0, 0x4

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    .end local v0           #yCount:I
    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    .line 72
    .local v6, occupied:[[Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/lge/homecube/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x4

    new-array v2, p0, [Ljava/lang/String;

    .end local p0
    const/4 p0, 0x0

    const-string v3, "cellX"

    aput-object v3, v2, p0

    const/4 p0, 0x1

    const-string v3, "cellY"

    aput-object v3, v2, p0

    const/4 p0, 0x2

    const-string v3, "spanX"

    aput-object v3, v2, p0

    const/4 p0, 0x3

    const-string v3, "spanY"

    aput-object v3, v2, p0

    const-string v3, "screen=?"

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .end local p2
    aput-object p2, v4, p0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 79
    .local p0, c:Landroid/database/Cursor;
    const-string p2, "cellX"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, cellXIndex:I
    const-string p2, "cellY"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 81
    .local v2, cellYIndex:I
    const-string p2, "spanX"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 82
    .local v4, spanXIndex:I
    const-string p2, "spanY"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 85
    .local v7, spanYIndex:I
    :cond_56
    :try_start_56
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_87

    .line 86
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 87
    .local p2, cellX:I
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 88
    .local v1, cellY:I
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 89
    .local v3, spanX:I
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 91
    .local v5, spanY:I
    move v8, p2

    .local v8, x:I
    :goto_6d
    add-int v9, p2, v3

    if-ge v8, v9, :cond_56

    const/4 v9, 0x4

    if-ge v8, v9, :cond_56

    .line 92
    move v9, v1

    .local v9, y:I
    :goto_75
    add-int v10, v1, v5

    if-ge v9, v10, :cond_84

    const/4 v10, 0x4

    if-ge v9, v10, :cond_84

    .line 93
    aget-object v10, v6, v8

    const/4 v11, 0x1

    aput-boolean v11, v10, v9
    :try_end_81
    .catchall {:try_start_56 .. :try_end_81} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_81} :catch_94

    .line 92
    add-int/lit8 v9, v9, 0x1

    goto :goto_75

    .line 91
    :cond_84
    add-int/lit8 v8, v8, 0x1

    goto :goto_6d

    .line 100
    .end local v1           #cellY:I
    .end local v3           #spanX:I
    .end local v5           #spanY:I
    .end local v8           #x:I
    .end local v9           #y:I
    .end local p2           #cellX:I
    :cond_87
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 103
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/lge/homecube/CellLayout;->findVacantCell([IIIII[[Z)Z

    .end local v2           #cellYIndex:I
    .end local v4           #spanXIndex:I
    move-result p0

    .end local p0           #c:Landroid/database/Cursor;
    .end local p1
    :goto_93
    return p0

    .line 97
    .restart local v2       #cellYIndex:I
    .restart local v4       #spanXIndex:I
    .restart local p0       #c:Landroid/database/Cursor;
    .restart local p1
    :catch_94
    move-exception p1

    .line 98
    .local p1, e:Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 100
    .end local p1           #e:Ljava/lang/Exception;
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move p0, p1

    goto :goto_93

    .local p1, xy:[I
    :catchall_9b
    move-exception p1

    .end local p1           #xy:[I
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 11
    .parameter "context"
    .parameter "data"
    .parameter "screen"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 40
    iget-object v4, p0, Lcom/lge/homecube/InstallShortcutReceiver;->mCoordinates:[I

    invoke-static {p1, v4, p3}, Lcom/lge/homecube/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 41
    new-instance v0, Lcom/lge/homecube/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/lge/homecube/CellLayout$CellInfo;-><init>()V

    .line 42
    .local v0, cell:Lcom/lge/homecube/CellLayout$CellInfo;
    iget-object v4, p0, Lcom/lge/homecube/InstallShortcutReceiver;->mCoordinates:[I

    aget v4, v4, v6

    iput v4, v0, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    .line 43
    iget-object v4, p0, Lcom/lge/homecube/InstallShortcutReceiver;->mCoordinates:[I

    aget v4, v4, v5

    iput v4, v0, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    .line 44
    iput p3, v0, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    .line 46
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 47
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_36

    .line 50
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :cond_36
    const-string v4, "duplicate"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 56
    .local v1, duplicate:Z
    if-nez v1, :cond_44

    invoke-static {p1, v3, v2}, Lcom/lge/homecube/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 57
    :cond_44
    invoke-static {p1, p2, v0, v5}, Lcom/lge/homecube/Launcher;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/lge/homecube/CellLayout$CellInfo;Z)Lcom/lge/homecube/ApplicationInfo;

    :cond_47
    move v4, v5

    .line 63
    .end local v0           #cell:Lcom/lge/homecube/CellLayout$CellInfo;
    .end local v1           #duplicate:Z
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #name:Ljava/lang/String;
    :goto_48
    return v4

    :cond_49
    move v4, v6

    goto :goto_48
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "data"

    .prologue
    .line 29
    invoke-static {}, Lcom/lge/homecube/Launcher;->getScreen()I

    move-result v1

    .line 31
    .local v1, screen:I
    invoke-direct {p0, p1, p2, v1}, Lcom/lge/homecube/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_16

    .line 33
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    const/4 v2, 0x3

    if-ge v0, v2, :cond_16

    .line 34
    if-eq v0, v1, :cond_17

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/homecube/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 37
    .end local v0           #i:I
    :cond_16
    return-void

    .line 33
    .restart local v0       #i:I
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method
