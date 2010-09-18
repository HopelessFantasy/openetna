.class public Lcom/android/launcher/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# static fields
.field private static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"


# instance fields
.field private final mCoordinates:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher/InstallShortcutReceiver;->mCoordinates:[I

    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .registers 15
    .parameter "context"
    .parameter "xy"
    .parameter "screen"

    .prologue
    .line 84
    const/4 v0, 0x4

    .line 85
    .local v0, xCount:I
    const/4 v0, 0x4

    .line 87
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

    .line 89
    .local v6, occupied:[[Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

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

    .line 96
    .local p0, c:Landroid/database/Cursor;
    const-string p2, "cellX"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, cellXIndex:I
    const-string p2, "cellY"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 98
    .local v2, cellYIndex:I
    const-string p2, "spanX"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 99
    .local v4, spanXIndex:I
    const-string p2, "spanY"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 102
    .local v7, spanYIndex:I
    :cond_56
    :try_start_56
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_87

    .line 103
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 104
    .local p2, cellX:I
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 105
    .local v1, cellY:I
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 106
    .local v3, spanX:I
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 108
    .local v5, spanY:I
    move v8, p2

    .local v8, x:I
    :goto_6d
    add-int v9, p2, v3

    if-ge v8, v9, :cond_56

    const/4 v9, 0x4

    if-ge v8, v9, :cond_56

    .line 109
    move v9, v1

    .local v9, y:I
    :goto_75
    add-int v10, v1, v5

    if-ge v9, v10, :cond_84

    const/4 v10, 0x4

    if-ge v9, v10, :cond_84

    .line 110
    aget-object v10, v6, v8

    const/4 v11, 0x1

    aput-boolean v11, v10, v9
    :try_end_81
    .catchall {:try_start_56 .. :try_end_81} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_81} :catch_94

    .line 109
    add-int/lit8 v9, v9, 0x1

    goto :goto_75

    .line 108
    :cond_84
    add-int/lit8 v8, v8, 0x1

    goto :goto_6d

    .line 117
    .end local v1           #cellY:I
    .end local v3           #spanX:I
    .end local v5           #spanY:I
    .end local v8           #x:I
    .end local v9           #y:I
    .end local p2           #cellX:I
    :cond_87
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 120
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/CellLayout;->findVacantCell([IIIII[[Z)Z

    .end local v2           #cellYIndex:I
    .end local v4           #spanXIndex:I
    move-result p0

    .end local p0           #c:Landroid/database/Cursor;
    .end local p1
    :goto_93
    return p0

    .line 114
    .restart local v2       #cellYIndex:I
    .restart local v4       #spanXIndex:I
    .restart local p0       #c:Landroid/database/Cursor;
    .restart local p1
    :catch_94
    move-exception p1

    .line 115
    .local p1, e:Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 117
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
    .registers 12
    .parameter "context"
    .parameter "data"
    .parameter "screen"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 48
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher/InstallShortcutReceiver;->mCoordinates:[I

    invoke-static {p1, v4, p3}, Lcom/android/launcher/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 51
    new-instance v0, Lcom/android/launcher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/android/launcher/CellLayout$CellInfo;-><init>()V

    .line 52
    .local v0, cell:Lcom/android/launcher/CellLayout$CellInfo;
    iget-object v4, p0, Lcom/android/launcher/InstallShortcutReceiver;->mCoordinates:[I

    aget v4, v4, v6

    iput v4, v0, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    .line 53
    iget-object v4, p0, Lcom/android/launcher/InstallShortcutReceiver;->mCoordinates:[I

    aget v4, v4, v7

    iput v4, v0, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    .line 54
    iput p3, v0, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    .line 56
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 58
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_36

    .line 59
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    :cond_36
    const-string v4, "duplicate"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 65
    .local v1, duplicate:Z
    if-nez v1, :cond_44

    invoke-static {p1, v3, v2}, Lcom/android/launcher/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 66
    :cond_44
    invoke-static {p1, p2, v0, v7}, Lcom/android/launcher/Launcher;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher/CellLayout$CellInfo;Z)Lcom/android/launcher/ApplicationInfo;

    .line 67
    const v4, 0x7f0a0018

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_59
    move v4, v7

    .line 80
    .end local v0           #cell:Lcom/android/launcher/CellLayout$CellInfo;
    .end local v1           #duplicate:Z
    .end local v2           #intent:Landroid/content/Intent;
    :goto_5a
    return v4

    .line 70
    .restart local v0       #cell:Lcom/android/launcher/CellLayout$CellInfo;
    .restart local v1       #duplicate:Z
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_5b
    const v4, 0x7f0a001a

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_59

    .line 76
    .end local v0           #cell:Lcom/android/launcher/CellLayout$CellInfo;
    .end local v1           #duplicate:Z
    .end local v2           #intent:Landroid/content/Intent;
    :cond_6e
    const v4, 0x7f0a0017

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v6

    .line 80
    goto :goto_5a
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "data"

    .prologue
    .line 33
    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 45
    :cond_c
    return-void

    .line 37
    :cond_d
    invoke-static {}, Lcom/android/launcher/Launcher;->getScreen()I

    move-result v1

    .line 39
    .local v1, screen:I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 41
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    const/4 v2, 0x3

    if-ge v0, v2, :cond_c

    .line 42
    if-eq v0, v1, :cond_23

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 41
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method
