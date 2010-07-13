.class public Lcom/android/browser/BrowserDownloadAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BrowserDownloadAdapter.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "browser"


# instance fields
.field private mCurrentBytesColumnId:I

.field private mDateColumnId:I

.field private mDescColumnId:I

.field private mFilenameColumnId:I

.field private mMimetypeColumnId:I

.field private mStatusColumnId:I

.field private mTitleColumnId:I

.field private mTotalBytesColumnId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .registers 5
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 75
    const-string v0, "_data"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mFilenameColumnId:I

    .line 76
    const-string v0, "title"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mTitleColumnId:I

    .line 77
    const-string v0, "description"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mDescColumnId:I

    .line 78
    const-string v0, "status"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mStatusColumnId:I

    .line 79
    const-string v0, "total_bytes"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mTotalBytesColumnId:I

    .line 80
    const-string v0, "current_bytes"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mCurrentBytesColumnId:I

    .line 82
    const-string v0, "mimetype"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mMimetypeColumnId:I

    .line 83
    const-string v0, "lastmod"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mDateColumnId:I

    .line 84
    return-void
.end method

.method public static getErrorText(I)I
    .registers 2
    .parameter "status"

    .prologue
    .line 362
    sparse-switch p0, :sswitch_data_1c

    .line 381
    const v0, 0x7f0700c8

    :goto_6
    return v0

    .line 364
    :sswitch_7
    const v0, 0x7f0700cf

    goto :goto_6

    .line 367
    :sswitch_b
    const v0, 0x7f0700d1

    goto :goto_6

    .line 370
    :sswitch_f
    const v0, 0x7f0700d2

    goto :goto_6

    .line 373
    :sswitch_13
    const v0, 0x7f0700ce

    goto :goto_6

    .line 376
    :sswitch_17
    const v0, 0x7f0700d0

    goto :goto_6

    .line 362
    nop

    :sswitch_data_1c
    .sparse-switch
        0x196 -> :sswitch_7
        0x19b -> :sswitch_b
        0x19c -> :sswitch_f
        0x1ea -> :sswitch_13
        0x1ec -> :sswitch_17
    .end sparse-switch
.end method

.method private static isDRMMimetype(Ljava/lang/String;)Z
    .registers 2
    .parameter "mimetype"

    .prologue
    .line 392
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "application/vnd.oma.drm.content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "application/vnd.oma.drm.dcf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 395
    :cond_18
    const/4 v0, 0x1

    .line 397
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 49
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 91
    .local v29, r:Landroid/content/res/Resources;
    const/4 v6, 0x0

    .line 92
    .local v6, DrmType:I
    const/4 v5, 0x0

    .line 93
    .local v5, DrmContentType:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mFilenameColumnId:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 94
    .local v15, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mMimetypeColumnId:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 95
    .local v23, mimeType:Ljava/lang/String;
    const v41, 0x7f0c0009

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 97
    .local v20, iv:Landroid/widget/ImageView;
    const v41, 0x7f0c000a

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 98
    .local v21, ivDrm:Landroid/widget/ImageView;
    const/16 v41, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mStatusColumnId:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 101
    .local v32, status:I
    const/16 v19, 0x0

    .line 105
    .local v19, isDrmException:Z
    if-nez v23, :cond_1d2

    .line 106
    const/16 v41, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    :goto_60
    const v41, 0x7f0c000b

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 202
    .local v38, tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mTitleColumnId:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 203
    .local v35, title:Ljava/lang/String;
    if-nez v35, :cond_98

    .line 204
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mFilenameColumnId:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 205
    .local v16, fullFilename:Ljava/lang/String;
    if-nez v16, :cond_2e8

    .line 206
    const v41, 0x7f0700b4

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 226
    .end local v16           #fullFilename:Ljava/lang/String;
    :cond_98
    :goto_98
    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const v41, 0x7f0c000c

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    .end local v38           #tv:Landroid/widget/TextView;
    check-cast v38, Landroid/widget/TextView;

    .line 229
    .restart local v38       #tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mDescColumnId:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 230
    .local v11, description:Ljava/lang/String;
    if-nez v11, :cond_bd

    .line 231
    move-object v11, v15

    .line 234
    :cond_bd
    move-object/from16 v0, v38

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mTotalBytesColumnId:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 241
    .local v36, totalBytes:J
    invoke-static/range {v32 .. v32}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v41

    if-eqz v41, :cond_13f

    .line 242
    const/16 v41, 0x31

    move/from16 v0, v41

    move v1, v6

    if-ne v0, v1, :cond_341

    .line 243
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v24

    .line 245
    .local v24, operatorCode:Ljava/lang/String;
    const-string v41, "VDF"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_136

    const-string v41, "H3G"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_136

    const-string v41, "ORG"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_136

    const-string v41, "TME"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_136

    const-string v41, "TNR"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_136

    const-string v41, "TIM"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_136

    const-string v41, "TMO"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_32c

    .line 249
    :cond_136
    const/16 v41, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    .end local v24           #operatorCode:Ljava/lang/String;
    :cond_13f
    :goto_13f
    invoke-static/range {v32 .. v32}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v41

    if-eqz v41, :cond_431

    .line 276
    const v41, 0x7f0c0010

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    .line 277
    .local v39, v:Landroid/view/View;
    const/16 v41, 0x8

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    const v41, 0x7f0c000f

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    .line 280
    const/16 v41, 0x8

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const v41, 0x7f0c000e

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    .end local v38           #tv:Landroid/widget/TextView;
    check-cast v38, Landroid/widget/TextView;

    .line 283
    .restart local v38       #tv:Landroid/widget/TextView;
    const/16 v41, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    invoke-static/range {v32 .. v32}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v41

    if-eqz v41, :cond_391

    .line 285
    invoke-static/range {v32 .. v32}, Lcom/android/browser/BrowserDownloadAdapter;->getErrorText(I)I

    move-result v41

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 297
    :goto_194
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mDateColumnId:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 298
    .local v33, time:J
    new-instance v10, Ljava/util/Date;

    move-object v0, v10

    move-wide/from16 v1, v33

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 299
    .local v10, d:Ljava/util/Date;
    const/16 v41, 0x3

    invoke-static/range {v41 .. v41}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v12

    .line 300
    .local v12, df:Ljava/text/DateFormat;
    const v41, 0x7f0c000d

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    .end local v38           #tv:Landroid/widget/TextView;
    check-cast v38, Landroid/widget/TextView;

    .line 301
    .restart local v38       #tv:Landroid/widget/TextView;
    const/16 v41, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    invoke-virtual {v12, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    .end local v10           #d:Ljava/util/Date;
    .end local v11           #description:Ljava/lang/String;
    .end local v12           #df:Ljava/text/DateFormat;
    .end local v33           #time:J
    .end local v35           #title:Ljava/lang/String;
    .end local v36           #totalBytes:J
    .end local v38           #tv:Landroid/widget/TextView;
    .end local v39           #v:Landroid/view/View;
    :goto_1d1
    return-void

    .line 108
    :cond_1d2
    invoke-static/range {v23 .. v23}, Lcom/android/browser/BrowserDownloadAdapter;->isDRMMimetype(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1ec

    invoke-static/range {v32 .. v32}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v41

    if-eqz v41, :cond_1e0

    if-nez v15, :cond_1ec

    .line 111
    :cond_1e0
    const v41, 0x7f02002a

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_60

    .line 116
    :cond_1ec
    if-eqz v15, :cond_213

    invoke-static/range {v32 .. v32}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v41

    if-eqz v41, :cond_213

    invoke-static/range {v23 .. v23}, Lcom/android/browser/BrowserDownloadAdapter;->isDRMMimetype(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_213

    .line 122
    :try_start_1fa
    move-object v0, v15

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v31

    .line 123
    .local v31, session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v31, :cond_24d

    .line 125
    const-string v41, "browser"

    const-string v42, "createContentSession() : Fail"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20a
    .catch Ljava/lang/SecurityException; {:try_start_1fa .. :try_end_20a} :catch_20b
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fa .. :try_end_20a} :catch_262

    goto :goto_1d1

    .line 140
    .end local v31           #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_20b
    move-exception v41

    move-object/from16 v13, v41

    .line 142
    .local v13, e:Ljava/lang/SecurityException;
    const/16 v19, 0x1

    .line 143
    invoke-virtual {v13}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 152
    .end local v13           #e:Ljava/lang/SecurityException;
    :cond_213
    :goto_213
    new-instance v18, Landroid/content/Intent;

    const-string v41, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v18, intent:Landroid/content/Intent;
    const-string v41, "file"

    const-string v42, ""

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v41

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    if-lez v5, :cond_236

    .line 159
    packed-switch v5, :pswitch_data_58e

    .line 183
    :cond_236
    :goto_236
    if-eqz v19, :cond_29c

    .line 184
    const v41, 0x7f02002a

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    const/16 v41, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_60

    .line 130
    .end local v18           #intent:Landroid/content/Intent;
    .restart local v31       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_24d
    const/16 v41, 0x1

    :try_start_24f
    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v7

    .line 131
    .local v7, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v7, :cond_26b

    .line 133
    const-string v41, "browser"

    const-string v42, "getSelectedContent(true) : Fail"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_260
    .catch Ljava/lang/SecurityException; {:try_start_24f .. :try_end_260} :catch_20b
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_24f .. :try_end_260} :catch_262

    goto/16 :goto_1d1

    .line 145
    .end local v7           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v31           #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_262
    move-exception v41

    move-object/from16 v13, v41

    .line 147
    .local v13, e:Landroid/lge/lgdrm/DrmException;
    const/16 v19, 0x1

    .line 148
    invoke-virtual {v13}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto :goto_213

    .line 136
    .end local v13           #e:Landroid/lge/lgdrm/DrmException;
    .restart local v7       #content:Landroid/lge/lgdrm/DrmContent;
    .restart local v31       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_26b
    :try_start_26b
    invoke-static {v15}, Landroid/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v6

    .line 137
    invoke-virtual {v7}, Landroid/lge/lgdrm/DrmContent;->getContentType()I
    :try_end_272
    .catch Ljava/lang/SecurityException; {:try_start_26b .. :try_end_272} :catch_20b
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_26b .. :try_end_272} :catch_262

    move-result v5

    goto :goto_213

    .line 162
    .end local v7           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v31           #session:Landroid/lge/lgdrm/DrmContentSession;
    .restart local v18       #intent:Landroid/content/Intent;
    :pswitch_274
    const-string v41, "android.lge.lgdrm.IMAGE_CATEGORY"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_236

    .line 165
    :pswitch_27e
    const-string v41, "android.lge.lgdrm.AUDIO_CATEGORY"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_236

    .line 168
    :pswitch_288
    const-string v41, "android.lge.lgdrm.VIDEO_CATEGORY"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_236

    .line 171
    :pswitch_292
    const-string v41, "android.lge.lgdrm.GAME_CATEGORY"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_236

    .line 188
    :cond_29c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 189
    .local v26, pm:Landroid/content/pm/PackageManager;
    const/high16 v41, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v22

    .line 191
    .local v22, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v41

    if-lez v41, :cond_2dd

    .line 192
    const/16 v41, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    move-object v0, v7

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 193
    .local v17, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    const/16 v41, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_60

    .line 196
    .end local v17           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2dd
    const/16 v41, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_60

    .line 211
    .end local v18           #intent:Landroid/content/Intent;
    .end local v22           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v26           #pm:Landroid/content/pm/PackageManager;
    .restart local v16       #fullFilename:Ljava/lang/String;
    .restart local v35       #title:Ljava/lang/String;
    .restart local v38       #tv:Landroid/widget/TextView;
    :cond_2e8
    new-instance v14, Ljava/io/File;

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v35

    .line 214
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v40, values:Landroid/content/ContentValues;
    const-string v41, "title"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    sget-object v42, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const/16 v43, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-static/range {v42 .. v44}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v42

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v40

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    const/4 v14, 0x0

    .line 222
    goto/16 :goto_98

    .line 253
    .end local v14           #file:Ljava/io/File;
    .end local v16           #fullFilename:Ljava/lang/String;
    .end local v40           #values:Landroid/content/ContentValues;
    .restart local v11       #description:Ljava/lang/String;
    .restart local v24       #operatorCode:Ljava/lang/String;
    .restart local v36       #totalBytes:J
    :cond_32c
    const v41, 0x7f02003f

    move-object/from16 v0, v21

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    const/16 v41, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_13f

    .line 257
    .end local v24           #operatorCode:Ljava/lang/String;
    :cond_341
    const/16 v41, 0x51

    move/from16 v0, v41

    move v1, v6

    if-eq v0, v1, :cond_356

    move v0, v6

    and-int/lit16 v0, v0, 0x100

    move/from16 v41, v0

    if-gtz v41, :cond_356

    move v0, v6

    and-int/lit16 v0, v0, 0x1000

    move/from16 v41, v0

    if-lez v41, :cond_386

    .line 262
    :cond_356
    const/16 v41, 0x122

    move/from16 v0, v41

    move/from16 v1, v32

    if-eq v0, v1, :cond_366

    const/16 v41, 0x123

    move/from16 v0, v41

    move/from16 v1, v32

    if-ne v0, v1, :cond_37b

    .line 264
    :cond_366
    const v41, 0x7f02003e

    move-object/from16 v0, v21

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    :goto_370
    const/16 v41, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_13f

    .line 266
    :cond_37b
    const v41, 0x7f02003f

    move-object/from16 v0, v21

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_370

    .line 270
    :cond_386
    const/16 v41, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_13f

    .line 286
    .restart local v39       #v:Landroid/view/View;
    :cond_391
    const/16 v41, 0x122

    move/from16 v0, v41

    move/from16 v1, v32

    if-ne v0, v1, :cond_3c9

    .line 287
    const v41, 0x7f0700d3

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, v29

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_194

    .line 289
    :cond_3c9
    const/16 v41, 0x123

    move/from16 v0, v32

    move/from16 v1, v41

    if-ne v0, v1, :cond_401

    .line 290
    const v41, 0x7f0700d4

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, v29

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_194

    .line 293
    :cond_401
    const v41, 0x7f0700c9

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, v29

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_194

    .line 307
    .end local v39           #v:Landroid/view/View;
    :cond_431
    const v41, 0x7f0c0010

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    .end local v38           #tv:Landroid/widget/TextView;
    check-cast v38, Landroid/widget/TextView;

    .line 308
    .restart local v38       #tv:Landroid/widget/TextView;
    const/16 v41, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    const v41, 0x7f0c000f

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 311
    .local v27, progress:Landroid/view/View;
    const/16 v41, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    const v41, 0x7f0c000d

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    .line 314
    .restart local v39       #v:Landroid/view/View;
    const/16 v41, 0x8

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    const v41, 0x7f0c000e

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    .line 317
    const/16 v41, 0x8

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    const/16 v41, 0xbe

    move/from16 v0, v32

    move/from16 v1, v41

    if-ne v0, v1, :cond_49f

    .line 320
    const v41, 0x7f0700cb

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d1

    .line 321
    :cond_49f
    const/16 v41, 0xbf

    move/from16 v0, v32

    move/from16 v1, v41

    if-ne v0, v1, :cond_4bb

    .line 322
    const v41, 0x7f0700cc

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d1

    .line 324
    :cond_4bb
    move-object/from16 v0, v27

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v25, v0

    .line 326
    .local v25, pb:Landroid/widget/ProgressBar;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v30, sb:Ljava/lang/StringBuilder;
    const/16 v41, 0xc0

    move/from16 v0, v32

    move/from16 v1, v41

    if-ne v0, v1, :cond_570

    .line 328
    const v41, 0x7f0700ca

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v41

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 332
    :goto_4e0
    const-wide/16 v41, 0x0

    cmp-long v41, v36, v41

    if-lez v41, :cond_584

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mCurrentBytesColumnId:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 334
    .local v8, currentBytes:J
    const-wide/16 v41, 0x64

    mul-long v41, v41, v8

    div-long v41, v41, v36

    move-wide/from16 v0, v41

    long-to-int v0, v0

    move/from16 v28, v0

    .line 335
    .local v28, progressAmount:I
    const/16 v41, 0x20

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    const-string v41, "% ("

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-wide v1, v8

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v41, "/"

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v41, ")"

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const/16 v41, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 343
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 347
    .end local v8           #currentBytes:J
    .end local v28           #progressAmount:I
    :goto_563
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d1

    .line 330
    :cond_570
    const v41, 0x7f0700cd

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v41

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_4e0

    .line 345
    :cond_584
    const/16 v41, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_563

    .line 159
    :pswitch_data_58e
    .packed-switch 0x1
        :pswitch_274
        :pswitch_27e
        :pswitch_288
        :pswitch_292
    .end packed-switch
.end method
