.class Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/QueryBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 14
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v6, 0x0

    .line 331
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 313
    iput-object v6, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    .line 315
    iput-object v6, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    .line 332
    iput-object p2, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    .line 333
    new-instance v0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;-><init>(Lcom/android/music/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 334
    return-void
.end method

.method static synthetic access$300(Lcom/android/music/QueryBrowserActivity$QueryListAdapter;)Lcom/android/music/QueryBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 347
    const v15, 0x7f0a0023

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 348
    .local v13, tv1:Landroid/widget/TextView;
    const v15, 0x7f0a0024

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 349
    .local v14, tv2:Landroid/widget/TextView;
    const v15, 0x7f0a0017

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 350
    .local v6, iv:Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 351
    .local v11, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v11, :cond_2e

    .line 353
    invoke-static/range {p3 .. p3}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;)V

    .line 423
    :cond_2d
    :goto_2d
    return-void

    .line 356
    :cond_2e
    const/4 v15, -0x2

    iput v15, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 357
    const/4 v15, -0x2

    iput v15, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 359
    const-string v15, "mime_type"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 362
    .local v7, mimetype:Ljava/lang/String;
    if-nez v7, :cond_48

    .line 363
    const-string v7, "audio/"

    .line 365
    :cond_48
    const-string v15, "artist"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_ad

    .line 366
    const v15, 0x7f02001f

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    const-string v15, "artist"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, name:Ljava/lang/String;
    move-object v4, v8

    .line 370
    .local v4, displayname:Ljava/lang/String;
    const/4 v5, 0x0

    .line 371
    .local v5, isunknown:Z
    if-eqz v8, :cond_72

    const-string v15, "<unknown>"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7d

    .line 372
    :cond_72
    const v15, 0x7f07002f

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 373
    const/4 v5, 0x1

    .line 375
    :cond_7d
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    const-string v15, "data1"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 378
    .local v9, numalbums:I
    const-string v15, "data2"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 380
    .local v10, numsongs:I
    move-object/from16 v0, p2

    move v1, v9

    move v2, v10

    move v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/android/music/MusicUtils;->makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v12

    .line 383
    .local v12, songs_albums:Ljava/lang/String;
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 385
    .end local v4           #displayname:Ljava/lang/String;
    .end local v5           #isunknown:Z
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #numalbums:I
    .end local v10           #numsongs:I
    .end local v12           #songs_albums:Ljava/lang/String;
    :cond_ad
    const-string v15, "album"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10d

    .line 386
    const v15, 0x7f020002

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    const-string v15, "album"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 389
    .restart local v8       #name:Ljava/lang/String;
    move-object v4, v8

    .line 390
    .restart local v4       #displayname:Ljava/lang/String;
    if-eqz v8, :cond_d6

    const-string v15, "<unknown>"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e0

    .line 391
    :cond_d6
    const v15, 0x7f070030

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 393
    :cond_e0
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    const-string v15, "artist"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 397
    move-object v4, v8

    .line 398
    if-eqz v8, :cond_fe

    const-string v15, "<unknown>"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_108

    .line 399
    :cond_fe
    const v15, 0x7f07002f

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 401
    :cond_108
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2d

    .line 403
    .end local v4           #displayname:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    :cond_10d
    const-string v15, "audio/"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_125

    const-string v15, "application/ogg"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_125

    const-string v15, "application/x-ogg"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2d

    .line 406
    :cond_125
    const v15, 0x7f020030

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 407
    const-string v15, "title"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 409
    .restart local v8       #name:Ljava/lang/String;
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    const-string v15, "artist"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 413
    .restart local v4       #displayname:Ljava/lang/String;
    if-eqz v4, :cond_158

    const-string v15, "<unknown>"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_162

    .line 414
    :cond_158
    const v15, 0x7f07002f

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 416
    :cond_162
    const-string v15, "album"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 418
    if-eqz v8, :cond_17c

    const-string v15, "<unknown>"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_186

    .line 419
    :cond_17c
    const v15, 0x7f070030

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 421
    :cond_186
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2d
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    invoke-static {v0}, Lcom/android/music/QueryBrowserActivity;->access$400(Lcom/android/music/QueryBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_10

    .line 427
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    invoke-static {v0, p1}, Lcom/android/music/QueryBrowserActivity;->access$402(Lcom/android/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 428
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 430
    :cond_10
    return-void
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 6
    .parameter "constraint"

    .prologue
    .line 433
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1d

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_18

    :cond_e
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 437
    :cond_18
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 442
    :goto_1c
    return-object v2

    .line 439
    :cond_1d
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/music/QueryBrowserActivity;->access$200(Lcom/android/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 440
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 441
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 442
    goto :goto_1c
.end method

.method public setActivity(Lcom/android/music/QueryBrowserActivity;)V
    .registers 2
    .parameter "newactivity"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    .line 338
    return-void
.end method
