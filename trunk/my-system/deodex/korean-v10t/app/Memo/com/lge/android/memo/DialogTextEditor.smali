.class public Lcom/lge/android/memo/DialogTextEditor;
.super Landroid/app/Activity;
.source "DialogTextEditor.java"


# static fields
.field private static final ORIGINAL_CONTENT:Ljava/lang/String; = "origContent"

.field private static final STATE_EDIT:I = 0x0

.field private static final STATE_INSERT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Memos"

.field private static appWidgetId:I

.field private static date_title:Ljava/lang/String;

.field protected static isInEditorMode:Z

.field private static mCounter_cursor:I

.field private static mUri:Landroid/net/Uri;

.field private static pageStyleUri:Landroid/net/Uri;

.field private static show_date:Landroid/widget/TextView;

.field private static show_time:Landroid/widget/TextView;

.field protected static styleID:I

.field protected static textColor:I

.field private static time_title:Ljava/lang/StringBuilder;


# instance fields
.field backKeyPressed:Z

.field private lastNonConfigureObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mNoteOnly:Z

.field protected mOriginalContent:Ljava/lang/String;

.field private mState:I

.field public mText:Lcom/lge/android/memo/NoteEditor;

.field private memoId:I

.field private note:Ljava/lang/String;

.field private view:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/high16 v0, -0x100

    sput v0, Lcom/lge/android/memo/DialogTextEditor;->textColor:I

    .line 62
    const/4 v0, 0x6

    sput v0, Lcom/lge/android/memo/DialogTextEditor;->styleID:I

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/android/memo/DialogTextEditor;->isInEditorMode:Z

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/lge/android/memo/DialogTextEditor;->mCounter_cursor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/lge/android/memo/DialogTextEditor;->mNoteOnly:Z

    .line 52
    iput-object v0, p0, Lcom/lge/android/memo/DialogTextEditor;->mOriginalContent:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/lge/android/memo/DialogTextEditor;->view:Landroid/widget/RemoteViews;

    .line 63
    iput v1, p0, Lcom/lge/android/memo/DialogTextEditor;->memoId:I

    .line 64
    iput-object v0, p0, Lcom/lge/android/memo/DialogTextEditor;->note:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/lge/android/memo/DialogTextEditor;->lastNonConfigureObjects:Ljava/util/HashMap;

    .line 68
    iput-boolean v1, p0, Lcom/lge/android/memo/DialogTextEditor;->backKeyPressed:Z

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/lge/android/memo/DialogTextEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/android/memo/DialogTextEditor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/android/memo/DialogTextEditor;->cancelNote()V

    return-void
.end method

.method static synthetic access$202(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    sput p0, Lcom/lge/android/memo/DialogTextEditor;->mCounter_cursor:I

    return p0
.end method

.method private final cancelNote()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 595
    iget-object v1, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_25

    .line 596
    iget v1, p0, Lcom/lge/android/memo/DialogTextEditor;->mState:I

    if-nez v1, :cond_2d

    .line 598
    iget-object v1, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 599
    iput-object v3, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    .line 600
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 601
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "memo"

    iget-object v2, p0, Lcom/lge/android/memo/DialogTextEditor;->note:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogTextEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/android/memo/DialogTextEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 608
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_25
    :goto_25
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/android/memo/DialogTextEditor;->setResult(I)V

    .line 609
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogTextEditor;->finish()V

    .line 610
    return-void

    .line 603
    :cond_2d
    iget v1, p0, Lcom/lge/android/memo/DialogTextEditor;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    .line 605
    invoke-direct {p0}, Lcom/lge/android/memo/DialogTextEditor;->deleteNote()V

    goto :goto_25
.end method

.method private final deleteNote()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1c

    .line 617
    iget-object v0, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 618
    iput-object v2, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    .line 619
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogTextEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/android/memo/DialogTextEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/NoteEditor;->setText(Ljava/lang/CharSequence;)V

    .line 622
    :cond_1c
    return-void
.end method

.method public static getMUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/lge/android/memo/DialogTextEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPageStyleUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/lge/android/memo/DialogTextEditor;->pageStyleUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static setMUri(Landroid/net/Uri;)V
    .registers 1
    .parameter "uri"

    .prologue
    .line 83
    sput-object p0, Lcom/lge/android/memo/DialogTextEditor;->mUri:Landroid/net/Uri;

    .line 84
    return-void
.end method

.method public static setPageStyleUri(Landroid/net/Uri;)V
    .registers 1
    .parameter "uri"

    .prologue
    .line 71
    sput-object p0, Lcom/lge/android/memo/DialogTextEditor;->pageStyleUri:Landroid/net/Uri;

    .line 72
    return-void
.end method


# virtual methods
.method public forSavingData()Z
    .registers 16

    .prologue
    .line 411
    new-instance v11, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/lge/android/memo/DialogTextEditor;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/high16 v13, 0x7f03

    invoke-direct {v11, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v11, p0, Lcom/lge/android/memo/DialogTextEditor;->view:Landroid/widget/RemoteViews;

    .line 412
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogTextEditor;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "AppWidgetId"

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/lge/android/memo/DialogTextEditor;->memoId:I

    .line 417
    iget-object v11, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_164

    .line 420
    iget-object v11, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v11}, Lcom/lge/android/memo/NoteEditor;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 421
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    .line 422
    .local v2, length:I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 423
    .local v10, values:Landroid/content/ContentValues;
    iget-object v11, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    const-string v13, "style"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 430
    .local v5, styleID:I
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogTextEditor;->isFinishing()Z

    move-result v11

    if-eqz v11, :cond_ca

    if-nez v2, :cond_ca

    iget-boolean v11, p0, Lcom/lge/android/memo/DialogTextEditor;->mNoteOnly:Z

    if-nez v11, :cond_ca

    .line 431
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/lge/android/memo/DialogTextEditor;->setResult(I)V

    .line 434
    iget-object v11, p0, Lcom/lge/android/memo/DialogTextEditor;->view:Landroid/widget/RemoteViews;

    const v12, 0x7f080002

    invoke-virtual {p0}, Lcom/lge/android/memo/DialogTextEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060006

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 436
    const-string v11, "memo"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v11, "title"

    invoke-virtual {p0}, Lcom/lge/android/memo/DialogTextEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060006

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 439
    .local v3, now:Ljava/lang/Long;
    const-string v11, "modified"

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    const-string v11, "style"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    const-string v11, "memoId"

    iget v12, p0, Lcom/lge/android/memo/DialogTextEditor;->memoId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogTextEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/lge/android/memo/DialogTextEditor;->mUri:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 505
    :goto_a9
    iget-object v11, p0, Lcom/lge/android/memo/DialogTextEditor;->view:Landroid/widget/RemoteViews;

    const v12, 0x7f080002

    sget v13, Lcom/lge/android/memo/DialogTextEditor;->textColor:I

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 506
    iget-object v11, p0, Lcom/lge/android/memo/DialogTextEditor;->view:Landroid/widget/RemoteViews;

    const v12, 0x7f080004

    sget v13, Lcom/lge/android/memo/DialogTextEditor;->textColor:I

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 508
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 509
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    iget v11, p0, Lcom/lge/android/memo/DialogTextEditor;->memoId:I

    iget-object v12, p0, Lcom/lge/android/memo/DialogTextEditor;->view:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v11, v12}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 519
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v2           #length:I
    .end local v3           #now:Ljava/lang/Long;
    .end local v5           #styleID:I
    .end local v6           #text:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_c8
    const/4 v11, 0x1

    return v11

    .line 447
    .restart local v2       #length:I
    .restart local v5       #styleID:I
    .restart local v6       #text:Ljava/lang/String;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_ca
    const-string v7, ""

    .line 448
    .local v7, text1:Ljava/lang/String;
    const-string v8, ""

    .line 451
    .local v8, text2:Ljava/lang/String;
    iget-boolean v11, p0, Lcom/lge/android/memo/DialogTextEditor;->mNoteOnly:Z

    if-nez v11, :cond_f8

    .line 456
    iget v11, p0, Lcom/lge/android/memo/DialogTextEditor;->mState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f8

    .line 457
    const/4 v11, 0x0

    const/16 v12, 0x1e

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 458
    .local v9, title:Ljava/lang/String;
    const/16 v11, 0x1e

    if-le v2, v11, :cond_f3

    .line 459
    const/16 v11, 0x20

    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 460
    .local v1, lastSpace:I
    if-lez v1, :cond_f3

    .line 461
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 465
    .end local v1           #lastSpace:I
    :cond_f3
    const-string v11, "title"

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .end local v9           #title:Ljava/lang/String;
    :cond_f8
    const-string v11, "memoId"

    iget v12, p0, Lcom/lge/android/memo/DialogTextEditor;->memoId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    const-string v11, "memo"

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    if-nez v2, :cond_149

    iget-boolean v11, p0, Lcom/lge/android/memo/DialogTextEditor;->mNoteOnly:Z

    if-nez v11, :cond_149

    .line 476
    iget-object v11, p0, Lcom/lge/android/memo/DialogTextEditor;->view:Landroid/widget/RemoteViews;

    const v12, 0x7f080002

    invoke-virtual {p0}, Lcom/lge/android/memo/DialogTextEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060006

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 496
    :goto_121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 497
    .restart local v3       #now:Ljava/lang/Long;
    const-string v11, "modified"

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 498
    const-string v11, "style"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v11, "title"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogTextEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/lge/android/memo/DialogTextEditor;->mUri:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 487
    .end local v3           #now:Ljava/lang/Long;
    :cond_149
    invoke-static {p0, v6}, Lcom/lge/android/memo/MemoAppWidgetProvider;->getStringsForWidget(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, strings:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v7, v4, v11

    .line 489
    const/4 v11, 0x1

    aget-object v8, v4, v11

    .line 492
    iget-object v11, p0, Lcom/lge/android/memo/DialogTextEditor;->view:Landroid/widget/RemoteViews;

    const v12, 0x7f080002

    invoke-virtual {v11, v12, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 493
    iget-object v11, p0, Lcom/lge/android/memo/DialogTextEditor;->view:Landroid/widget/RemoteViews;

    const v12, 0x7f080004

    invoke-virtual {v11, v12, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_121

    .line 515
    .end local v2           #length:I
    .end local v4           #strings:[Ljava/lang/String;
    .end local v5           #styleID:I
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #text1:Ljava/lang/String;
    .end local v8           #text2:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_164
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogTextEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060006

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/android/memo/DialogTextEditor;->date_title:Ljava/lang/String;

    goto/16 :goto_c8
.end method

.method public getContentID()I
    .registers 8

    .prologue
    .line 265
    const/4 v6, 0x0

    .line 266
    .local v6, contentID:I
    sget-object v1, Lcom/lge/android/memo/DialogTextEditor;->pageStyleUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/android/memo/MemoList;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "memoId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/lge/android/memo/DialogTextEditor;->appWidgetId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "modified DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/android/memo/DialogTextEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    .line 272
    iget-object v0, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 273
    iget-object v0, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    const-string v2, "style"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/lge/android/memo/DialogTextEditor;->styleID:I

    .line 275
    :cond_3c
    sget v0, Lcom/lge/android/memo/DialogTextEditor;->styleID:I

    invoke-virtual {p0, v0}, Lcom/lge/android/memo/DialogTextEditor;->getPageStyleLayout(I)I

    move-result v6

    .line 276
    return v6
.end method

.method public getPageStyleLayout(I)I
    .registers 2
    .parameter "contentID"

    .prologue
    .line 280
    packed-switch p1, :pswitch_data_10

    .line 288
    const p1, 0x7f030005

    .line 292
    :goto_6
    return p1

    .line 282
    :pswitch_7
    const p1, 0x7f030003

    .line 283
    goto :goto_6

    .line 285
    :pswitch_b
    const p1, 0x7f030001

    .line 286
    goto :goto_6

    .line 280
    nop

    :pswitch_data_10
    .packed-switch 0x7
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 28
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/lge/android/memo/DialogTextEditor;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 92
    .local v17, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/android/memo/DialogTextEditor;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogTextEditor;->lastNonConfigureObjects:Ljava/util/HashMap;

    .line 95
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 96
    .local v11, action:Ljava/lang/String;
    const-string v5, "com.lge.android.memo.action.EDIT_MEMO"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_192

    .line 98
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/android/memo/DialogTextEditor;->mState:I

    .line 99
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    sput-object v5, Lcom/lge/android/memo/DialogTextEditor;->mUri:Landroid/net/Uri;

    .line 140
    :goto_2a
    sget-object v6, Lcom/lge/android/memo/DialogTextEditor;->mUri:Landroid/net/Uri;

    sget-object v7, Lcom/lge/android/memo/MemoList;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lge/android/memo/DialogTextEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogTextEditor;->lastNonConfigureObjects:Ljava/util/HashMap;

    move-object v5, v0

    if-eqz v5, :cond_56

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogTextEditor;->lastNonConfigureObjects:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "inEditorMode"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    .line 147
    :cond_56
    const-string v5, "styleID"

    const/4 v6, 0x6

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/lge/android/memo/DialogTextEditor;->styleID:I

    .line 148
    sget v5, Lcom/lge/android/memo/DialogTextEditor;->styleID:I

    sput v5, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    .line 151
    sget v5, Lcom/lge/android/memo/DialogTextEditor;->styleID:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogTextEditor;->getPageStyleLayout(I)I

    move-result v13

    .line 152
    .local v13, contentID:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogTextEditor;->setContentView(I)V

    .line 154
    const v5, 0x7f080009

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ScrollView;

    .line 156
    .local v22, scrollLayout:Landroid/widget/ScrollView;
    const/4 v5, 0x0

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 157
    const/4 v5, 0x0

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 159
    const/4 v5, 0x0

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 162
    const v5, 0x7f08000a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/android/memo/NoteEditor;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/lge/android/memo/NoteEditor;->bringToFront()V

    .line 166
    const/high16 v12, -0x100

    .line 168
    .local v12, buttonTextColor:I
    sget v5, Lcom/lge/android/memo/DialogTextEditor;->styleID:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2bc

    .line 169
    const v12, 0x7f050003

    .line 176
    :cond_ba
    :goto_ba
    const v5, 0x7f08000e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 177
    .local v16, doneButtonText:Landroid/widget/TextView;
    const v5, 0x7f06001a

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    new-instance v5, Lcom/lge/android/memo/DialogTextEditor$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/android/memo/DialogTextEditor$1;-><init>(Lcom/lge/android/memo/DialogTextEditor;)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    const v5, 0x7f08000f

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 204
    .local v21, revertButtonText:Landroid/widget/TextView;
    const v5, 0x7f060002

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    new-instance v5, Lcom/lge/android/memo/DialogTextEditor$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/android/memo/DialogTextEditor$2;-><init>(Lcom/lge/android/memo/DialogTextEditor;)V

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 226
    const v5, 0x7f08000c

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sput-object v5, Lcom/lge/android/memo/DialogTextEditor;->show_date:Landroid/widget/TextView;

    .line 227
    const v5, 0x7f08000d

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sput-object v5, Lcom/lge/android/memo/DialogTextEditor;->show_time:Landroid/widget/TextView;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_181

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "modified"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 234
    .local v18, milisec:J
    new-instance v15, Ljava/util/Date;

    move-object v0, v15

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 236
    .local v15, date:Ljava/util/Date;
    new-instance v23, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 237
    .local v23, str_date:Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .local v24, str_time:Ljava/lang/StringBuilder;
    sput-object v23, Lcom/lge/android/memo/DialogTextEditor;->date_title:Ljava/lang/String;

    .line 241
    sput-object v24, Lcom/lge/android/memo/DialogTextEditor;->time_title:Ljava/lang/StringBuilder;

    .line 243
    sget-object v5, Lcom/lge/android/memo/DialogTextEditor;->show_date:Landroid/widget/TextView;

    sget-object v6, Lcom/lge/android/memo/DialogTextEditor;->date_title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    sget-object v5, Lcom/lge/android/memo/DialogTextEditor;->show_time:Landroid/widget/TextView;

    sget-object v6, Lcom/lge/android/memo/DialogTextEditor;->time_title:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .end local v15           #date:Ljava/util/Date;
    .end local v18           #milisec:J
    .end local v23           #str_date:Ljava/lang/String;
    .end local v24           #str_time:Ljava/lang/StringBuilder;
    :cond_181
    if-eqz p1, :cond_191

    .line 252
    const-string v5, "origContent"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogTextEditor;->mOriginalContent:Ljava/lang/String;

    .line 255
    .end local v12           #buttonTextColor:I
    .end local v13           #contentID:I
    .end local v16           #doneButtonText:Landroid/widget/TextView;
    .end local v21           #revertButtonText:Landroid/widget/TextView;
    .end local v22           #scrollLayout:Landroid/widget/ScrollView;
    :cond_191
    :goto_191
    return-void

    .line 100
    :cond_192
    const-string v5, "com.lge.android.memo.action.INSERT_MEMO"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b0

    .line 103
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/android/memo/DialogTextEditor;->mState:I

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogTextEditor;->lastNonConfigureObjects:Ljava/util/HashMap;

    move-object v5, v0

    if-eqz v5, :cond_287

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogTextEditor;->lastNonConfigureObjects:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "appWidgetId"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/lge/android/memo/DialogTextEditor;->appWidgetId:I

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/lge/android/memo/DialogTextEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/lge/android/memo/MemoList;->PROJECTION:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "memoId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/lge/android/memo/DialogTextEditor;->appWidgetId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "modified DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 108
    .local v14, cursor:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v25, values:Landroid/content/ContentValues;
    const-string v5, "memo"

    const-string v6, "memo"

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v5, "title"

    const-string v6, "title"

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 113
    .local v20, now:Ljava/lang/Long;
    const-string v5, "modified"

    move-object/from16 v0, v25

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    const-string v5, "style"

    const-string v6, "style"

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/lge/android/memo/DialogTextEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "memoId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/lge/android/memo/DialogTextEditor;->appWidgetId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v25

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v20           #now:Ljava/lang/Long;
    .end local v25           #values:Landroid/content/ContentValues;
    :goto_25e
    sget-object v5, Lcom/lge/android/memo/DialogTextEditor;->mUri:Landroid/net/Uri;

    if-nez v5, :cond_297

    .line 125
    const-string v5, "Memos"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert new note into "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/lge/android/memo/DialogTextEditor;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/lge/android/memo/DialogTextEditor;->finish()V

    goto/16 :goto_191

    .line 117
    :cond_287
    invoke-virtual/range {p0 .. p0}, Lcom/lge/android/memo/DialogTextEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    sput-object v5, Lcom/lge/android/memo/DialogTextEditor;->mUri:Landroid/net/Uri;

    goto :goto_25e

    .line 132
    :cond_297
    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    sget-object v7, Lcom/lge/android/memo/DialogTextEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/lge/android/memo/DialogTextEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2a

    .line 136
    :cond_2b0
    const-string v5, "Memos"

    const-string v6, "Unknown action, exiting"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/lge/android/memo/DialogTextEditor;->finish()V

    goto/16 :goto_191

    .line 170
    .restart local v12       #buttonTextColor:I
    .restart local v13       #contentID:I
    .restart local v22       #scrollLayout:Landroid/widget/ScrollView;
    :cond_2bc
    sget v5, Lcom/lge/android/memo/DialogTextEditor;->styleID:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2c6

    .line 171
    const v12, 0x7f050001

    goto/16 :goto_ba

    .line 172
    :cond_2c6
    sget v5, Lcom/lge/android/memo/DialogTextEditor;->styleID:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_ba

    .line 173
    const v12, 0x7f050002

    goto/16 :goto_ba
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 626
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/lge/android/memo/DialogTextEditor;->memoId:I

    aput v2, v0, v1

    invoke-static {v0}, Lcom/lge/android/memo/UpdateService;->requestUpdate([I)V

    .line 627
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/android/memo/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lge/android/memo/DialogTextEditor;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 628
    iget v0, p0, Lcom/lge/android/memo/DialogTextEditor;->memoId:I

    invoke-static {p0, v0}, Lcom/lge/android/memo/MemoAppWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    .line 630
    iget-object v0, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_23

    .line 631
    iget-object v0, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 633
    :cond_23
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 635
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 560
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HOME "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 562
    sparse-switch p1, :sswitch_data_86

    .line 586
    :cond_20
    :goto_20
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_24
    return v1

    .line 564
    :sswitch_25
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYCODE_BACK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogTextEditor;->forSavingData()Z

    .line 566
    iget-object v1, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    iget-object v2, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v2}, Lcom/lge/android/memo/NoteEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/android/memo/NoteEditor;->setSelection(I)V

    .line 567
    iget-object v1, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v1, v4}, Lcom/lge/android/memo/NoteEditor;->setCursorVisible(Z)V

    .line 568
    iput-boolean v4, p0, Lcom/lge/android/memo/DialogTextEditor;->backKeyPressed:Z

    goto :goto_20

    .line 572
    :sswitch_5f
    iget-object v1, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v1}, Lcom/lge/android/memo/NoteEditor;->getSelectionStart()I

    move-result v0

    .line 573
    .local v0, index:I
    iget-object v1, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v1}, Lcom/lge/android/memo/NoteEditor;->getSelectionEnd()I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 574
    iget-object v1, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v1, v4}, Lcom/lge/android/memo/NoteEditor;->setCursorVisible(Z)V

    move v1, v4

    .line 575
    goto :goto_24

    .line 579
    .end local v0           #index:I
    :sswitch_74
    sget v1, Lcom/lge/android/memo/DialogTextEditor;->mCounter_cursor:I

    iget-object v2, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v2}, Lcom/lge/android/memo/NoteEditor;->getLineCount()I

    move-result v2

    if-ne v1, v2, :cond_20

    .line 580
    iget-object v1, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v1, v4}, Lcom/lge/android/memo/NoteEditor;->setCursorVisible(Z)V

    move v1, v4

    .line 581
    goto :goto_24

    .line 562
    nop

    :sswitch_data_86
    .sparse-switch
        0x4 -> :sswitch_25
        0x14 -> :sswitch_74
        0x16 -> :sswitch_5f
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 525
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 556
    return-void
.end method

.method protected onResume()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const-string v10, "Cellcom"

    .line 300
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_109

    .line 303
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 306
    iget v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mState:I

    if-nez v6, :cond_bd

    .line 307
    const v6, 0x7f060007

    invoke-virtual {p0, v6}, Lcom/lge/android/memo/DialogTextEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lge/android/memo/DialogTextEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 317
    :cond_1a
    :goto_1a
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->lastNonConfigureObjects:Ljava/util/HashMap;

    if-eqz v6, :cond_cd

    .line 318
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->lastNonConfigureObjects:Ljava/util/HashMap;

    const-string v7, "enteredText"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 319
    .local v2, lastNonConfiguredText:Ljava/lang/String;
    iput-object v2, p0, Lcom/lge/android/memo/DialogTextEditor;->note:Ljava/lang/String;

    .line 320
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->lastNonConfigureObjects:Ljava/util/HashMap;

    const-string v7, "textColor"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 321
    .local v3, lastNonConfiguredTextColor:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/lge/android/memo/DialogTextEditor;->textColor:I

    .line 322
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->lastNonConfigureObjects:Ljava/util/HashMap;

    const-string v7, "remoteViewObject"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 323
    .local v1, lastNonConfRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 324
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    iget v6, p0, Lcom/lge/android/memo/DialogTextEditor;->memoId:I

    invoke-virtual {v0, v6, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 332
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v1           #lastNonConfRemoteViews:Landroid/widget/RemoteViews;
    .end local v2           #lastNonConfiguredText:Ljava/lang/String;
    .end local v3           #lastNonConfiguredTextColor:Ljava/lang/Integer;
    :goto_4d
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mOriginalContent:Ljava/lang/String;

    if-nez v6, :cond_100

    .line 333
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->note:Ljava/lang/String;

    iput-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mOriginalContent:Ljava/lang/String;

    .line 334
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, operatorCode:Ljava/lang/String;
    const-string v6, "Cellcom"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f7

    .line 336
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->note:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_ef

    .line 338
    iget v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mState:I

    if-ne v6, v9, :cond_7b

    .line 339
    const-string v6, "Blocking code"

    const-string v7, " [[[ status is insert  ]]]] "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Lcom/lge/android/memo/NoteEditor;->setText(Ljava/lang/CharSequence;)V

    .line 353
    .end local v5           #operatorCode:Ljava/lang/String;
    :cond_7b
    :goto_7b
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    iget-object v7, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v7}, Lcom/lge/android/memo/NoteEditor;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lge/android/memo/NoteEditor;->setSelection(I)V

    .line 354
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    sget v7, Lcom/lge/android/memo/DialogTextEditor;->textColor:I

    invoke-virtual {v6, v7}, Lcom/lge/android/memo/NoteEditor;->setTextColor(I)V

    .line 356
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v5

    .line 357
    .restart local v5       #operatorCode:Ljava/lang/String;
    const-string v6, "Cellcom"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a6

    .line 358
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v6, v9}, Lcom/lge/android/memo/NoteEditor;->setScrollContainer(Z)V

    .line 361
    :cond_a6
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v6, v9}, Lcom/lge/android/memo/NoteEditor;->setCursorVisible(Z)V

    .line 371
    .end local v5           #operatorCode:Ljava/lang/String;
    :goto_ab
    new-instance v4, Lcom/lge/android/memo/DialogTextEditor$3;

    invoke-direct {v4, p0}, Lcom/lge/android/memo/DialogTextEditor$3;-><init>(Lcom/lge/android/memo/DialogTextEditor;)V

    .line 399
    .local v4, mTextWatcher:Landroid/text/TextWatcher;
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    if-eqz v6, :cond_b9

    .line 401
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v6, v4}, Lcom/lge/android/memo/NoteEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 404
    :cond_b9
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 405
    return-void

    .line 308
    .end local v4           #mTextWatcher:Landroid/text/TextWatcher;
    :cond_bd
    iget v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mState:I

    if-ne v6, v9, :cond_1a

    .line 309
    const v6, 0x7f060006

    invoke-virtual {p0, v6}, Lcom/lge/android/memo/DialogTextEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lge/android/memo/DialogTextEditor;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 326
    :cond_cd
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    const-string v8, "memo"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->note:Ljava/lang/String;

    .line 327
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/lge/android/memo/DialogTextEditor;->mCursor:Landroid/database/Cursor;

    const-string v8, "textcolor"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    sput v6, Lcom/lge/android/memo/DialogTextEditor;->textColor:I

    goto/16 :goto_4d

    .line 343
    .restart local v5       #operatorCode:Ljava/lang/String;
    :cond_ef
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    iget-object v7, p0, Lcom/lge/android/memo/DialogTextEditor;->note:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/lge/android/memo/NoteEditor;->setTextKeepState(Ljava/lang/CharSequence;)V

    goto :goto_7b

    .line 346
    :cond_f7
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    iget-object v7, p0, Lcom/lge/android/memo/DialogTextEditor;->note:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/lge/android/memo/NoteEditor;->setTextKeepState(Ljava/lang/CharSequence;)V

    goto/16 :goto_7b

    .line 350
    .end local v5           #operatorCode:Ljava/lang/String;
    :cond_100
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    iget-object v7, p0, Lcom/lge/android/memo/DialogTextEditor;->mOriginalContent:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/lge/android/memo/NoteEditor;->setTextKeepState(Ljava/lang/CharSequence;)V

    goto/16 :goto_7b

    .line 366
    :cond_109
    const v6, 0x7f06000d

    invoke-virtual {p0, v6}, Lcom/lge/android/memo/DialogTextEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lge/android/memo/DialogTextEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v6, p0, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    const v7, 0x7f06000e

    invoke-virtual {p0, v7}, Lcom/lge/android/memo/DialogTextEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/android/memo/NoteEditor;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ab
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 639
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 640
    .local v0, lastNonConfigureItems:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "enteredText"

    iget-object v2, p0, Lcom/lge/android/memo/DialogTextEditor;->note:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v1, "textColor"

    sget v2, Lcom/lge/android/memo/DialogTextEditor;->textColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string v1, "remoteViewObject"

    iget-object v2, p0, Lcom/lge/android/memo/DialogTextEditor;->view:Landroid/widget/RemoteViews;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v1, "inEditorMode"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string v1, "appWidgetId"

    sget v2, Lcom/lge/android/memo/DialogTextEditor;->appWidgetId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    .line 646
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 261
    const-string v0, "origContent"

    iget-object v1, p0, Lcom/lge/android/memo/DialogTextEditor;->mOriginalContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method
