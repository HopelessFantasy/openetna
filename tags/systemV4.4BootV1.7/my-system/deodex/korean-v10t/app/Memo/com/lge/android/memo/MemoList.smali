.class public Lcom/lge/android/memo/MemoList;
.super Landroid/app/ListActivity;
.source "MemoList.java"


# static fields
.field public static final MENU_ITEM_DELETE:I = 0x1

.field public static final MENU_ITEM_INSERT:I = 0x2

.field protected static final PROJECTION:[Ljava/lang/String;

.field private static pngFilePath:Ljava/lang/String;

.field public static screenHeight:I

.field public static screenWidth:I


# instance fields
.field private AppWidgetId:I

.field private cursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/lge/android/memo/MemoList;->pngFilePath:Ljava/lang/String;

    .line 26
    sput v2, Lcom/lge/android/memo/MemoList;->screenWidth:I

    .line 27
    sput v2, Lcom/lge/android/memo/MemoList;->screenHeight:I

    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "memo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "style"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "textcolor"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "xmlfilename"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "modified"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imageurl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imagecoordinates"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/android/memo/MemoList;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/android/memo/MemoList;->cursor:Landroid/database/Cursor;

    return-void
.end method

.method public static getPNGFilePath()Ljava/lang/String;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/lge/android/memo/MemoList;->pngFilePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/lge/android/memo/MemoList;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/android/memo/MemoList;->pngFilePath:Ljava/lang/String;

    .line 56
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/android/memo/MemoList;->setDefaultKeyMode(I)V

    .line 57
    invoke-virtual {p0}, Lcom/lge/android/memo/MemoList;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 58
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, id:Ljava/lang/String;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lge/android/memo/MemoList;->AppWidgetId:I

    .line 63
    invoke-virtual {p0}, Lcom/lge/android/memo/MemoList;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/lge/android/memo/MemoList;->screenWidth:I

    .line 64
    invoke-virtual {p0}, Lcom/lge/android/memo/MemoList;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/lge/android/memo/MemoList;->screenHeight:I

    .line 66
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_66

    .line 67
    sget-object v0, Lcom/lge/android/memo/Memo$Memos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 73
    :cond_66
    invoke-virtual {p0}, Lcom/lge/android/memo/MemoList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/lge/android/memo/MemoList;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "memoId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "modified DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/android/memo/MemoList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/memo/MemoList;->cursor:Landroid/database/Cursor;

    .line 78
    iget-object v0, p0, Lcom/lge/android/memo/MemoList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_c1

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    .line 82
    invoke-virtual {p0}, Lcom/lge/android/memo/MemoList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/memo/DialogTextEditor;->setPageStyleUri(Landroid/net/Uri;)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.memo.action.INSERT_MEMO"

    invoke-virtual {p0}, Lcom/lge/android/memo/MemoList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "AppWidgetId"

    iget v2, p0, Lcom/lge/android/memo/MemoList;->AppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/android/memo/MemoList;->startActivity(Landroid/content/Intent;)V

    .line 114
    :cond_bd
    :goto_bd
    invoke-virtual {p0}, Lcom/lge/android/memo/MemoList;->finish()V

    .line 116
    return-void

    .line 86
    :cond_c1
    iget-object v0, p0, Lcom/lge/android/memo/MemoList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 87
    iget-object v0, p0, Lcom/lge/android/memo/MemoList;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/android/memo/MemoList;->cursor:Landroid/database/Cursor;

    const-string v2, "memo"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 88
    .local v11, text:Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/android/memo/MemoList;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/android/memo/MemoList;->cursor:Landroid/database/Cursor;

    const-string v2, "style"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 89
    .local v10, styleID:I
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEMOLIST SYS ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/lge/android/memo/MemoList;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/android/memo/MemoList;->cursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 91
    .local v8, memo_id:I
    invoke-virtual {p0}, Lcom/lge/android/memo/MemoList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    int-to-long v1, v8

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 92
    .local v12, uri:Landroid/net/Uri;
    if-eqz v11, :cond_122

    const-string v0, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_148

    .line 93
    :cond_122
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    .line 96
    invoke-virtual {p0}, Lcom/lge/android/memo/MemoList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/memo/DialogTextEditor;->setPageStyleUri(Landroid/net/Uri;)V

    .line 97
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.lge.android.memo.action.EDIT_MEMO"

    invoke-direct {v9, v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    .local v9, newIntent:Landroid/content/Intent;
    const-string v0, "AppWidgetId"

    iget v1, p0, Lcom/lge/android/memo/MemoList;->AppWidgetId:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string v0, "styleID"

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v9}, Lcom/lge/android/memo/MemoList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_bd

    .line 102
    .end local v9           #newIntent:Landroid/content/Intent;
    :cond_148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    .line 105
    iget v0, p0, Lcom/lge/android/memo/MemoList;->AppWidgetId:I

    invoke-static {v0}, Lcom/lge/android/memo/DialogLauncher;->setAppWidgetId(I)V

    .line 106
    invoke-static {v12}, Lcom/lge/android/memo/DialogLauncher;->setMUri(Landroid/net/Uri;)V

    .line 107
    invoke-virtual {p0}, Lcom/lge/android/memo/MemoList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/memo/DialogLauncher;->setPageStyleUri(Landroid/net/Uri;)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/android/memo/DialogLauncher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "AppWidgetId"

    iget v2, p0, Lcom/lge/android/memo/MemoList;->AppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/android/memo/MemoList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_bd
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/lge/android/memo/MemoList;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 122
    iget-object v0, p0, Lcom/lge/android/memo/MemoList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_c
    return-void
.end method
