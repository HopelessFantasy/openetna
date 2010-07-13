.class Lcom/android/browser/BrowserProvider$MySuggestionCursor;
.super Landroid/database/AbstractCursor;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySuggestionCursor"
.end annotation


# instance fields
.field private mBeyondCursor:Z

.field private mHistoryCount:I

.field private mHistoryCursor:Landroid/database/Cursor;

.field private mString:Ljava/lang/String;

.field private mSuggestCursor:Landroid/database/Cursor;

.field private mSuggestionCount:I

.field final synthetic this$0:Lcom/android/browser/BrowserProvider;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter "hc"
    .parameter "sc"
    .parameter "string"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 401
    iput-object p1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->this$0:Lcom/android/browser/BrowserProvider;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 402
    iput-object p2, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    .line 403
    iput-object p3, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    .line 404
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    .line 405
    if-eqz p3, :cond_2c

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_17
    iput v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    .line 406
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int v1, v3, v1

    if-le v0, v1, :cond_27

    .line 407
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int v0, v3, v0

    iput v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    .line 409
    :cond_27
    iput-object p4, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    .line 410
    iput-boolean v2, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mBeyondCursor:Z

    .line 411
    return-void

    :cond_2c
    move v0, v2

    .line 405
    goto :goto_17
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 564
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 565
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 566
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 567
    iput-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    .line 569
    :cond_f
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1a

    .line 570
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 571
    iput-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    .line 573
    :cond_1a
    return-void
.end method

.method public deactivate()V
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 549
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 551
    :cond_9
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_12

    .line 552
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 554
    :cond_12
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 555
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 441
    invoke-static {}, Lcom/android/browser/BrowserProvider;->access$100()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 433
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 435
    :goto_f
    return v0

    :cond_10
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    add-int/2addr v0, v1

    goto :goto_f
.end method

.method public getDouble(I)D
    .registers 3
    .parameter "column"

    .prologue
    .line 515
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 520
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 525
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 530
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    if-nez p1, :cond_b

    .line 531
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 533
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 8
    .parameter "columnIndex"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 446
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 447
    packed-switch p1, :pswitch_data_c8

    :cond_10
    move-object v0, v3

    .line 510
    :goto_11
    return-object v0

    .line 449
    :pswitch_12
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    if-le v0, v1, :cond_1b

    .line 450
    const-string v0, "android.intent.action.VIEW"

    goto :goto_11

    .line 452
    :cond_1b
    const-string v0, "android.intent.action.SEARCH"

    goto :goto_11

    .line 456
    :pswitch_1e
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    if-le v0, v1, :cond_2b

    .line 457
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_2b
    move-object v0, v3

    .line 459
    goto :goto_11

    .line 463
    :pswitch_2d
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    if-le v0, v1, :cond_3a

    .line 464
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 465
    :cond_3a
    iget-boolean v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mBeyondCursor:Z

    if-nez v0, :cond_45

    .line 466
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 468
    :cond_45
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    goto :goto_11

    .line 472
    :pswitch_48
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    if-le v0, v1, :cond_55

    .line 473
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 474
    :cond_55
    iget-boolean v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mBeyondCursor:Z

    if-nez v0, :cond_60

    .line 475
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 477
    :cond_60
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->this$0:Lcom/android/browser/BrowserProvider;

    invoke-virtual {v0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 481
    :pswitch_6e
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    if-le v0, v1, :cond_97

    .line 482
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_89

    .line 483
    new-instance v0, Ljava/lang/Integer;

    const v1, 0x7f020032

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 487
    :cond_89
    new-instance v0, Ljava/lang/Integer;

    const v1, 0x7f020034

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    .line 492
    :cond_97
    new-instance v0, Ljava/lang/Integer;

    const v1, 0x7f020035

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    .line 498
    :pswitch_a5
    new-instance v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 501
    :pswitch_ae
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    if-le v0, v1, :cond_b7

    move-object v0, v3

    .line 502
    goto/16 :goto_11

    .line 503
    :cond_b7
    iget-boolean v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mBeyondCursor:Z

    if-nez v0, :cond_c3

    .line 504
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    .line 506
    :cond_c3
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    goto/16 :goto_11

    .line 447
    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1e
        :pswitch_2d
        :pswitch_48
        :pswitch_6e
        :pswitch_a5
        :pswitch_ae
    .end packed-switch
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 543
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onMove(II)Z
    .registers 7
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-nez v0, :cond_8

    move v0, v2

    .line 427
    :goto_7
    return v0

    .line 418
    :cond_8
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-le v0, p2, :cond_15

    .line 419
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 420
    iput-boolean v2, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mBeyondCursor:Z

    :goto_13
    move v0, v3

    .line 427
    goto :goto_7

    .line 421
    :cond_15
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    add-int/2addr v0, v1

    if-le v0, p2, :cond_28

    .line 422
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 423
    iput-boolean v2, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mBeyondCursor:Z

    goto :goto_13

    .line 425
    :cond_28
    iput-boolean v3, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mBeyondCursor:Z

    goto :goto_13
.end method

.method public requery()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 558
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    :goto_b
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    :goto_15
    or-int/2addr v0, v1

    return v0

    :cond_17
    move v0, v2

    goto :goto_b

    :cond_19
    move v1, v2

    goto :goto_15
.end method
