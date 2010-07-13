.class Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;
.super Ljava/lang/Object;
.source "BrowserHistoryPage.java"

# interfaces
.implements Landroid/widget/ExpandableListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryAdapter"
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field mItemMap:[I

.field mNumberOfBins:I

.field mObservers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/browser/BrowserHistoryPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserHistoryPage;)V
    .registers 8
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mObservers:Ljava/util/Vector;

    .line 281
    const-string v3, "visits > 0 "

    .line 282
    .local v3, whereClause:Ljava/lang/String;
    const-string v5, "date DESC"

    .line 284
    .local v5, orderBy:Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/BrowserHistoryPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    .line 289
    invoke-direct {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->buildMap()V

    .line 290
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    new-instance v1, Lcom/android/browser/BrowserHistoryPage$ChangeObserver;

    invoke-direct {v1, p1}, Lcom/android/browser/BrowserHistoryPage$ChangeObserver;-><init>(Lcom/android/browser/BrowserHistoryPage;)V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 291
    return-void
.end method

.method private buildMap()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 304
    new-array v0, v7, [I

    .line 306
    .local v0, array:[I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_5
    if-ge v5, v7, :cond_c

    .line 307
    aput v6, v0, v5

    .line 306
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 309
    :cond_c
    iput v6, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mNumberOfBins:I

    .line 310
    const/4 v3, -0x1

    .line 311
    .local v3, dateIndex:I
    iget-object v6, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 334
    :goto_17
    return-void

    .line 314
    :cond_18
    iget-object v6, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5b

    iget-object v6, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_5b

    .line 315
    :goto_28
    iget-object v6, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 316
    iget-object v6, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 317
    .local v1, date:J
    iget-object v6, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-static {v6}, Lcom/android/browser/BrowserHistoryPage;->access$200(Lcom/android/browser/BrowserHistoryPage;)Landroid/webkit/DateSorter;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v4

    .line 318
    .local v4, index:I
    if-le v4, v3, :cond_5f

    .line 319
    iget v6, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mNumberOfBins:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mNumberOfBins:I

    .line 320
    const/4 v6, 0x4

    if-ne v4, v6, :cond_5e

    .line 323
    iget-object v6, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v0, v4

    .line 333
    .end local v1           #date:J
    .end local v4           #index:I
    :cond_5b
    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mItemMap:[I

    goto :goto_17

    .line 327
    .restart local v1       #date:J
    .restart local v4       #index:I
    :cond_5e
    move v3, v4

    .line 329
    :cond_5f
    aget v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v3

    .line 330
    iget-object v6, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_28
.end method

.method private groupPositionToArrayPosition(I)I
    .registers 5
    .parameter "groupPosition"

    .prologue
    const/4 v2, 0x5

    .line 341
    if-ltz p1, :cond_5

    if-lt p1, v2, :cond_d

    .line 342
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "group position out of range"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 344
    :cond_d
    iget v1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mNumberOfBins:I

    if-eq v2, v1, :cond_15

    iget v1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mNumberOfBins:I

    if-nez v1, :cond_17

    :cond_15
    move v1, p1

    .line 360
    :goto_16
    return v1

    .line 353
    :cond_17
    const/4 v0, -0x1

    .line 354
    .local v0, arrayPosition:I
    :cond_18
    :goto_18
    const/4 v1, -0x1

    if-le p1, v1, :cond_26

    .line 355
    add-int/lit8 v0, v0, 0x1

    .line 356
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mItemMap:[I

    aget v1, v1, v0

    if-eqz v1, :cond_18

    .line 357
    add-int/lit8 p1, p1, -0x1

    goto :goto_18

    :cond_26
    move v1, v0

    .line 360
    goto :goto_16
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 441
    shl-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x1

    .line 365
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->groupPositionToArrayPosition(I)I

    move-result p1

    .line 367
    if-eqz p4, :cond_b

    instance-of v5, p4, Lcom/android/browser/HistoryItem;

    if-nez v5, :cond_33

    .line 368
    :cond_b
    new-instance v3, Lcom/android/browser/HistoryItem;

    iget-object v5, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-direct {v3, v5}, Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;)V

    .line 371
    .local v3, item:Lcom/android/browser/HistoryItem;
    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getPaddingLeft()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getPaddingTop()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getPaddingRight()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/browser/HistoryItem;->setPadding(IIII)V

    .line 378
    :goto_27
    move v2, p2

    .line 379
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    if-ge v1, p1, :cond_38

    .line 380
    iget-object v5, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mItemMap:[I

    aget v5, v5, v1

    add-int/2addr v2, v5

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 376
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v3           #item:Lcom/android/browser/HistoryItem;
    :cond_33
    move-object v0, p4

    check-cast v0, Lcom/android/browser/HistoryItem;

    move-object v3, v0

    .restart local v3       #item:Lcom/android/browser/HistoryItem;
    goto :goto_27

    .line 383
    .restart local v1       #i:I
    .restart local v2       #index:I
    :cond_38
    iget-object v5, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 384
    const/4 v5, 0x0

    .line 394
    :goto_41
    return-object v5

    .line 386
    :cond_42
    iget-object v5, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 387
    iget-object v5, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/browser/HistoryItem;->setName(Ljava/lang/String;)V

    .line 388
    iget-object v5, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, url:Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/browser/HistoryItem;->setUrl(Ljava/lang/String;)V

    .line 390
    iget-object v5, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-virtual {v5}, Lcom/android/browser/BrowserHistoryPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet(Landroid/content/ContentResolver;)Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/browser/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 392
    iget-object v5, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v9, v5, :cond_7a

    move v5, v9

    :goto_75
    invoke-virtual {v3, v5}, Lcom/android/browser/HistoryItem;->setIsBookmark(Z)V

    move-object v5, v3

    .line 394
    goto :goto_41

    .line 392
    :cond_7a
    const/4 v5, 0x0

    goto :goto_75
.end method

.method public getChildrenCount(I)I
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mItemMap:[I

    invoke-direct {p0, p1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->groupPositionToArrayPosition(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getCombinedChildId(JJ)J
    .registers 5
    .parameter "groupId"
    .parameter "childId"

    .prologue
    .line 465
    return-wide p3
.end method

.method public getCombinedGroupId(J)J
    .registers 3
    .parameter "groupId"

    .prologue
    .line 469
    return-wide p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 429
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 421
    iget v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mNumberOfBins:I

    return v0
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 437
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->groupPositionToArrayPosition(I)I

    move-result p1

    .line 400
    if-eqz p3, :cond_a

    instance-of v3, p3, Landroid/widget/TextView;

    if-nez v3, :cond_28

    .line 401
    :cond_a
    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 403
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030012

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 408
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .local v2, item:Landroid/widget/TextView;
    :goto_1a
    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-static {v3}, Lcom/android/browser/BrowserHistoryPage;->access$200(Lcom/android/browser/BrowserHistoryPage;)Landroid/webkit/DateSorter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/webkit/DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    return-object v2

    .line 406
    .end local v2           #item:Landroid/widget/TextView;
    :cond_28
    move-object v0, p3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .restart local v2       #item:Landroid/widget/TextView;
    goto :goto_1a
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onGroupCollapsed(I)V
    .registers 2
    .parameter "groupPosition"

    .prologue
    .line 462
    return-void
.end method

.method public onGroupExpanded(I)V
    .registers 2
    .parameter "groupPosition"

    .prologue
    .line 458
    return-void
.end method

.method refreshData()V
    .registers 4

    .prologue
    .line 294
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 295
    invoke-direct {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->buildMap()V

    .line 296
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 297
    .local v1, o:Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_e

    .line 299
    .end local v1           #o:Landroid/database/DataSetObserver;
    :cond_1e
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 450
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 454
    return-void
.end method
