.class public Lcom/android/browser/BrowserDownloadPage;
.super Landroid/app/Activity;
.source "BrowserDownloadPage.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "BrowserDownloadPage"


# instance fields
.field private mContextMenuPosition:I

.field private mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

.field private mDownloadCursor:Landroid/database/Cursor;

.field private mIdColumnId:I

.field private mListView:Landroid/widget/ListView;

.field private mStatusColumnId:I

.field private mTitleColumnId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserDownloadPage;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserDownloadPage;->resumeDownload(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserDownloadPage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->clearAllDownloads()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserDownloadPage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->cancelAllDownloads()V

    return-void
.end method

.method private cancelAllDownloads()V
    .registers 9

    .prologue
    .line 343
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v3, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 346
    .local v0, firstTime:Z
    :goto_e
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_60

    .line 347
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 348
    .local v2, status:I
    invoke-static {v2}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v4

    if-nez v4, :cond_46

    .line 349
    if-eqz v0, :cond_5a

    .line 350
    const/4 v0, 0x0

    .line 354
    :goto_27
    const-string v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 358
    const-string v4, "\' )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_46
    if-nez v0, :cond_54

    .line 363
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    .line 364
    .local v1, id:I
    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->findAndCancelOmaDrmHandlerV2byDbID(I)Z

    .line 367
    .end local v1           #id:I
    :cond_54
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_e

    .line 352
    :cond_5a
    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 369
    .end local v2           #status:I
    :cond_60
    if-nez v0, :cond_70

    .line 370
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 374
    .end local v0           #firstTime:Z
    .end local v3           #where:Ljava/lang/StringBuilder;
    :cond_70
    return-void
.end method

.method private clearAllDownloads()V
    .registers 8

    .prologue
    .line 395
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v2, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 398
    .local v0, firstTime:Z
    :goto_e
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_52

    .line 399
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 400
    .local v1, status:I
    invoke-static {v1}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 401
    if-eqz v0, :cond_4c

    .line 402
    const/4 v0, 0x0

    .line 406
    :goto_27
    const-string v3, "( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 410
    const-string v3, "\' )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_46
    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_e

    .line 404
    :cond_4c
    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 414
    .end local v1           #status:I
    :cond_52
    if-nez v0, :cond_62

    .line 415
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 419
    .end local v0           #firstTime:Z
    .end local v2           #where:Ljava/lang/StringBuilder;
    :cond_62
    return-void
.end method

.method private getCancelableCount()I
    .registers 5

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, count:I
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_28

    .line 292
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_a
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_28

    .line 294
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 295
    .local v1, status:I
    invoke-static {v1}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v2

    if-nez v2, :cond_22

    .line 296
    add-int/lit8 v0, v0, 0x1

    .line 293
    :cond_22
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_a

    .line 301
    .end local v1           #status:I
    :cond_28
    return v0
.end method

.method private getClearableCount()I
    .registers 5

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, count:I
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 379
    :goto_9
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_27

    .line 380
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 381
    .local v1, status:I
    invoke-static {v1}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 382
    add-int/lit8 v0, v0, 0x1

    .line 384
    :cond_21
    iget-object v2, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_9

    .line 387
    .end local v1           #status:I
    :cond_27
    return v0
.end method

.method private hideCompletedDownload()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const-string v6, "visibility"

    .line 598
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 600
    .local v0, status:I
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v5, "visibility"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 601
    .local v3, visibilityColumn:I
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 603
    .local v2, visibility:I
    invoke-static {v0}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_46

    const/4 v4, 0x1

    if-ne v2, v4, :cond_46

    .line 605
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 606
    .local v1, values:Landroid/content/ContentValues;
    const-string v4, "visibility"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 607
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 611
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_46
    return-void
.end method

.method private openCurrentDownload()V
    .registers 27

    .prologue
    .line 426
    const/4 v5, 0x0

    .line 429
    .local v5, DrmContentType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const-string v23, "_data"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 431
    .local v10, filenameColumnId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 432
    .local v9, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const-string v23, "mimetype"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 434
    .local v13, mimetypeColumnId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 436
    .local v12, mimetype:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const-string v23, "uri"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 438
    .local v19, uriColumnId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 440
    .local v20, uriString:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 442
    .local v14, path:Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_63

    .line 443
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    .line 449
    :cond_63
    const-string v22, "application/vnd.oma.drm.message"

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_84

    const-string v22, "application/vnd.oma.drm.content"

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_84

    const-string v22, "application/vnd.oma.drm.dcf"

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_19f

    .line 456
    :cond_84
    const/16 v22, 0x0

    :try_start_86
    move-object v0, v9

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v16

    .line 457
    .local v16, session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v16, :cond_97

    .line 459
    const-string v22, "BrowserDownloadPage"

    const-string v23, "createContentSession() : Fail"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v16           #session:Landroid/lge/lgdrm/DrmContentSession;
    :goto_96
    return-void

    .line 464
    .restart local v16       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_97
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v6

    .line 465
    .local v6, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v6, :cond_b2

    .line 467
    const-string v22, "BrowserDownloadPage"

    const-string v23, "getSelectedContent(true) : Fail"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/lang/SecurityException; {:try_start_86 .. :try_end_aa} :catch_ab
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_86 .. :try_end_aa} :catch_14c

    goto :goto_96

    .line 513
    .end local v6           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v16           #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_ab
    move-exception v22

    move-object/from16 v7, v22

    .line 515
    .local v7, e:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_96

    .line 470
    .end local v7           #e:Ljava/lang/SecurityException;
    .restart local v6       #content:Landroid/lge/lgdrm/DrmContent;
    .restart local v16       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_b2
    :try_start_b2
    invoke-virtual {v6}, Landroid/lge/lgdrm/DrmContent;->getContentType()I

    move-result v5

    .line 471
    const-string v22, "BrowserDownloadPage"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "DrmContentType["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v15, 0x0

    .line 475
    .local v15, permission:I
    if-lez v5, :cond_dd

    .line 476
    packed-switch v5, :pswitch_data_228

    .line 492
    :cond_dd
    :goto_dd
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move v1, v15

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v17

    .line 493
    .local v17, status:I
    if-eqz v17, :cond_15a

    .line 494
    const-string v22, "BrowserDownloadPage"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": rights not vaild"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 498
    .local v21, values:Landroid/content/ContentValues;
    const-string v22, "status"

    const/16 v23, 0x122

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v22, "mimetype"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    sget-object v23, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    move/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14a
    .catch Ljava/lang/SecurityException; {:try_start_b2 .. :try_end_14a} :catch_ab
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_b2 .. :try_end_14a} :catch_14c

    goto/16 :goto_96

    .line 518
    .end local v6           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v15           #permission:I
    .end local v16           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v17           #status:I
    .end local v21           #values:Landroid/content/ContentValues;
    :catch_14c
    move-exception v22

    move-object/from16 v7, v22

    .line 520
    .local v7, e:Landroid/lge/lgdrm/DrmException;
    invoke-virtual {v7}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto/16 :goto_96

    .line 479
    .end local v7           #e:Landroid/lge/lgdrm/DrmException;
    .restart local v6       #content:Landroid/lge/lgdrm/DrmContent;
    .restart local v15       #permission:I
    .restart local v16       #session:Landroid/lge/lgdrm/DrmContentSession;
    :pswitch_154
    const/4 v15, 0x2

    .line 480
    goto :goto_dd

    .line 483
    :pswitch_156
    const/4 v15, 0x1

    .line 484
    goto :goto_dd

    .line 486
    :pswitch_158
    const/4 v15, 0x4

    .line 487
    goto :goto_dd

    .line 506
    .restart local v17       #status:I
    :cond_15a
    :try_start_15a
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 507
    .restart local v21       #values:Landroid/content/ContentValues;
    const-string v22, "status"

    const/16 v23, 0xc8

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    const-string v22, "mimetype"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    sget-object v23, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    move/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_19f
    .catch Ljava/lang/SecurityException; {:try_start_15a .. :try_end_19f} :catch_ab
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_15a .. :try_end_19f} :catch_14c

    .line 526
    .end local v6           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v15           #permission:I
    .end local v16           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v17           #status:I
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_19f
    new-instance v11, Landroid/content/Intent;

    const-string v22, "android.intent.action.VIEW"

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11, v14, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    if-lez v5, :cond_1b1

    .line 532
    packed-switch v5, :pswitch_data_234

    .line 554
    :cond_1b1
    :goto_1b1
    const/high16 v22, 0x400

    move-object v0, v11

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 556
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 557
    .local v18, uriBundle:Landroid/os/Bundle;
    const-string v22, "uri"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 561
    :try_start_1cf
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadPage;->startActivity(Landroid/content/Intent;)V
    :try_end_1d5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1cf .. :try_end_1d5} :catch_1d7

    goto/16 :goto_96

    .line 562
    :catch_1d7
    move-exception v8

    .line 563
    .local v8, ex:Landroid/content/ActivityNotFoundException;
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0700c0

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f020049

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0700c5

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f07000b

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_96

    .line 535
    .end local v8           #ex:Landroid/content/ActivityNotFoundException;
    .end local v18           #uriBundle:Landroid/os/Bundle;
    :pswitch_204
    const-string v22, "android.lge.lgdrm.IMAGE_CATEGORY"

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b1

    .line 538
    :pswitch_20d
    const-string v22, "android.lge.lgdrm.AUDIO_CATEGORY"

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b1

    .line 541
    :pswitch_216
    const-string v22, "android.lge.lgdrm.VIDEO_CATEGORY"

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b1

    .line 544
    :pswitch_21f
    const-string v22, "android.lge.lgdrm.GAME_CATEGORY"

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b1

    .line 476
    :pswitch_data_228
    .packed-switch 0x1
        :pswitch_154
        :pswitch_156
        :pswitch_156
        :pswitch_158
    .end packed-switch

    .line 532
    :pswitch_data_234
    .packed-switch 0x1
        :pswitch_204
        :pswitch_20d
        :pswitch_216
        :pswitch_21f
    .end packed-switch
.end method

.method private promptCancelAll()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 308
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->getCancelableCount()I

    move-result v0

    .line 311
    .local v0, count:I
    if-nez v0, :cond_8

    .line 335
    :goto_7
    return-void

    .line 316
    :cond_8
    if-ne v0, v3, :cond_e

    .line 317
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->cancelAllDownloads()V

    goto :goto_7

    .line 320
    :cond_e
    const v2, 0x7f0700bd

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/BrowserDownloadPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, msg:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0700bc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f020049

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000b

    new-instance v4, Lcom/android/browser/BrowserDownloadPage$3;

    invoke-direct {v4, p0}, Lcom/android/browser/BrowserDownloadPage$3;-><init>(Lcom/android/browser/BrowserDownloadPage;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_7
.end method

.method private promptClearList()V
    .registers 4

    .prologue
    .line 269
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000b

    new-instance v2, Lcom/android/browser/BrowserDownloadPage$2;

    invoke-direct {v2, p0}, Lcom/android/browser/BrowserDownloadPage$2;-><init>(Lcom/android/browser/BrowserDownloadPage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 282
    return-void
.end method

.method private resumeDownload(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 263
    return-void
.end method


# virtual methods
.method checkStatus(J)I
    .registers 12
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f07000b

    .line 210
    const/4 v1, -0x1

    .line 211
    .local v1, position:I
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_a
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_24

    .line 213
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_3b

    .line 214
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 219
    :cond_24
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 220
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 221
    .local v2, status:I
    invoke-static {v2}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v4

    if-nez v4, :cond_41

    .line 254
    .end local v2           #status:I
    :cond_3a
    :goto_3a
    return v1

    .line 212
    :cond_3b
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_a

    .line 225
    .restart local v2       #status:I
    :cond_41
    const/16 v4, 0x1ec

    if-ne v2, v4, :cond_94

    .line 226
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mTitleColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, title:Ljava/lang/String;
    if-eqz v3, :cond_55

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5c

    .line 228
    :cond_55
    const v4, 0x7f0700b4

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserDownloadPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 230
    :cond_5c
    const v4, 0x7f0700bf

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BrowserDownloadPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, msg:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0700be

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x108005d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0700c6

    new-instance v6, Lcom/android/browser/BrowserDownloadPage$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/browser/BrowserDownloadPage$1;-><init>(Lcom/android/browser/BrowserDownloadPage;J)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3a

    .line 246
    .end local v0           #msg:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_94
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0700c0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f020049

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/browser/BrowserDownloadAdapter;->getErrorText(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3a
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 157
    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserDownloadPage;->mContextMenuPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 178
    const/4 v1, 0x0

    :goto_11
    return v1

    .line 160
    :pswitch_12
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->hideCompletedDownload()V

    .line 161
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->openCurrentDownload()V

    move v1, v5

    .line 162
    goto :goto_11

    .line 169
    :pswitch_1a
    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    long-to-int v0, v1

    .line 170
    .local v0, id:I
    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->findAndCancelOmaDrmHandlerV2byDbID(I)Z

    .line 173
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move v1, v5

    .line 176
    goto :goto_11

    .line 158
    nop

    :pswitch_data_3e
    .packed-switch 0x7f0c00a9
        :pswitch_1a
        :pswitch_12
        :pswitch_1a
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "icicle"

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x0

    const-string v11, "title"

    const-string v10, "status"

    const-string v9, "_id"

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserDownloadPage;->setContentView(I)V

    .line 73
    const v4, 0x7f0700b3

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserDownloadPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserDownloadPage;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    const v4, 0x7f0c0008

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserDownloadPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ListView;

    .line 76
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 77
    .local v0, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030015

    invoke-virtual {v0, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 78
    .local v3, v:Landroid/view/View;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/android/browser/BrowserDownloadPage;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 83
    sget-object v4, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const-string v7, "title"

    aput-object v11, v5, v6

    const/4 v6, 0x2

    const-string v7, "status"

    aput-object v10, v5, v6

    const/4 v6, 0x3

    const-string v7, "total_bytes"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "current_bytes"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "_data"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "description"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "mimetype"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "lastmod"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "visibility"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "uri"

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5, v8, v8}, Lcom/android/browser/BrowserDownloadPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    .line 94
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_e9

    .line 95
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v5, "status"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    .line 97
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/browser/BrowserDownloadPage;->mIdColumnId:I

    .line 99
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    const-string v5, "title"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/browser/BrowserDownloadPage;->mTitleColumnId:I

    .line 103
    new-instance v4, Lcom/android/browser/BrowserDownloadAdapter;

    const v5, 0x7f030003

    iget-object v6, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/browser/BrowserDownloadAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

    .line 106
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ListView;

    const/high16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 108
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 109
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 112
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_e9

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_e9

    .line 113
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BrowserDownloadPage;->checkStatus(J)I

    move-result v2

    .line 115
    .local v2, position:I
    if-ltz v2, :cond_e9

    .line 116
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 120
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #position:I
    :cond_e9
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 184
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_36

    .line 185
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    .line 187
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 188
    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v4, p0, Lcom/android/browser/BrowserDownloadPage;->mContextMenuPosition:I

    .line 189
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mTitleColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 191
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 192
    .local v1, inflater:Landroid/view/MenuInflater;
    iget-object v4, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 193
    .local v3, status:I
    invoke-static {v3}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 194
    const v4, 0x7f0b0006

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 201
    .end local v1           #inflater:Landroid/view/MenuInflater;
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v3           #status:I
    :cond_36
    :goto_36
    return-void

    .line 195
    .restart local v1       #inflater:Landroid/view/MenuInflater;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v3       #status:I
    :cond_37
    invoke-static {v3}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 196
    const v4, 0x7f0b0005

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_36

    .line 198
    :cond_44
    const v4, 0x7f0b0007

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_36
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_e

    .line 125
    invoke-virtual {p0}, Lcom/android/browser/BrowserDownloadPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 126
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 128
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_e
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 579
    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 581
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->hideCompletedDownload()V

    .line 583
    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage;->mDownloadCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserDownloadPage;->mStatusColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 584
    .local v0, status:I
    invoke-static {v0}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 586
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->openCurrentDownload()V

    .line 591
    :goto_19
    return-void

    .line 589
    :cond_1a
    invoke-virtual {p0, p4, p5}, Lcom/android/browser/BrowserDownloadPage;->checkStatus(J)I

    goto :goto_19
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 152
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 145
    :pswitch_a
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->promptCancelAll()V

    move v0, v1

    .line 146
    goto :goto_9

    .line 149
    :pswitch_f
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->promptClearList()V

    move v0, v1

    .line 150
    goto :goto_9

    .line 143
    :pswitch_data_14
    .packed-switch 0x7f0c00a7
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->getCancelableCount()I

    move-result v2

    if-lez v2, :cond_29

    move v0, v4

    .line 134
    .local v0, showCancel:Z
    :goto_9
    const v2, 0x7f0c00a8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 136
    invoke-direct {p0}, Lcom/android/browser/BrowserDownloadPage;->getClearableCount()I

    move-result v2

    if-lez v2, :cond_2b

    move v1, v4

    .line 137
    .local v1, showClear:Z
    :goto_1a
    const v2, 0x7f0c00a7

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .end local v0           #showCancel:Z
    .end local v1           #showClear:Z
    :cond_29
    move v0, v3

    .line 133
    goto :goto_9

    .restart local v0       #showCancel:Z
    :cond_2b
    move v1, v3

    .line 136
    goto :goto_1a
.end method
