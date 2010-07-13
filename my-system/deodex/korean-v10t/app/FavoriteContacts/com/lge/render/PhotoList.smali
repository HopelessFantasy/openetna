.class public Lcom/lge/render/PhotoList;
.super Ljava/lang/Object;
.source "PhotoList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/render/PhotoList$ListData;
    }
.end annotation


# instance fields
.field private m_AddPoint:Lcom/lge/render/PhotoList$ListData;

.field private m_Current:Lcom/lge/render/PhotoList$ListData;

.field private m_DstData:Lcom/lge/render/PhotoList$ListData;

.field private m_First:Lcom/lge/render/PhotoList$ListData;

.field private m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

.field private m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

.field private m_SrcData:Lcom/lge/render/PhotoList$ListData;

.field private m_StartPoint:Lcom/lge/render/PhotoList$ListData;

.field private m_iAddCnt:I

.field private m_iCnt:I

.field private m_iLeftLoadPosition:I

.field private m_iMovingCnt:I

.field private m_iRightLoadPosition:I

.field private m_iStartMovingCnt:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/lge/render/PhotoList;->m_iLeftLoadPosition:I

    .line 27
    iput v0, p0, Lcom/lge/render/PhotoList;->m_iRightLoadPosition:I

    .line 34
    iput v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 3
    .parameter "essentialcursor"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/lge/render/PhotoList;->m_iLeftLoadPosition:I

    .line 27
    iput v0, p0, Lcom/lge/render/PhotoList;->m_iRightLoadPosition:I

    .line 38
    invoke-direct {p0, p1}, Lcom/lge/render/PhotoList;->init(Landroid/database/Cursor;)V

    .line 39
    return-void
.end method

.method private init(Landroid/database/Cursor;)V
    .registers 15
    .parameter "cursor"

    .prologue
    .line 841
    if-nez p1, :cond_3

    .line 878
    :goto_2
    return-void

    .line 843
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 844
    .local v12, size:I
    const-string v1, "person"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 845
    .local v10, UIDIndex:I
    const-string v1, "member_position"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 846
    .local v9, PositionIndex:I
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 848
    .local v8, GMIdIndex:I
    iput v12, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    .line 849
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 850
    const-string v1, "FavoriteContacts Activity ; PhotoList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ==  Cursor Move To First  ==  == Cursor size is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v11, 0x0

    .local v11, i:I
    :goto_39
    if-ge v11, v12, :cond_78

    .line 854
    new-instance v0, Lcom/lge/render/PhotoList$ListData;

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lge/render/PhotoList$ListData;-><init>(Lcom/lge/render/PhotoList;JJJ)V

    .line 858
    .local v0, newData:Lcom/lge/render/PhotoList$ListData;
    if-lez v11, :cond_6b

    .line 859
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1, v0}, Lcom/lge/render/PhotoList$ListData;->setPrev(Lcom/lge/render/PhotoList$ListData;)V

    .line 860
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1, v0}, Lcom/lge/render/PhotoList$ListData;->setNext(Lcom/lge/render/PhotoList$ListData;)V

    .line 862
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoList$ListData;->setNext(Lcom/lge/render/PhotoList$ListData;)V

    .line 863
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoList$ListData;->setPrev(Lcom/lge/render/PhotoList$ListData;)V

    .line 865
    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 874
    :goto_65
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 853
    add-int/lit8 v11, v11, 0x1

    goto :goto_39

    .line 867
    :cond_6b
    invoke-virtual {v0, v0}, Lcom/lge/render/PhotoList$ListData;->setNext(Lcom/lge/render/PhotoList$ListData;)V

    .line 868
    invoke-virtual {v0, v0}, Lcom/lge/render/PhotoList$ListData;->setPrev(Lcom/lge/render/PhotoList$ListData;)V

    .line 870
    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    .line 871
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    goto :goto_65

    .line 877
    .end local v0           #newData:Lcom/lge/render/PhotoList$ListData;
    :cond_78
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    goto :goto_2
.end method

.method private isAddPoint(Lcom/lge/render/PhotoList$ListData;)Z
    .registers 3
    .parameter "in"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_AddPoint:Lcom/lge/render/PhotoList$ListData;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isFirst(Lcom/lge/render/PhotoList$ListData;)Z
    .registers 3
    .parameter "in"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isLast(Lcom/lge/render/PhotoList$ListData;)Z
    .registers 3
    .parameter "in"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    invoke-static {v0}, Lcom/lge/render/PhotoList$ListData;->access$100(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public Clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    .line 298
    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 299
    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 300
    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 301
    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_StartPoint:Lcom/lge/render/PhotoList$ListData;

    .line 303
    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_AddPoint:Lcom/lge/render/PhotoList$ListData;

    .line 305
    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    .line 306
    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_DstData:Lcom/lge/render/PhotoList$ListData;

    .line 308
    iput v1, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    .line 309
    iput v1, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    .line 310
    iput v1, p0, Lcom/lge/render/PhotoList;->m_iStartMovingCnt:I

    .line 311
    iput v1, p0, Lcom/lge/render/PhotoList;->m_iLeftLoadPosition:I

    .line 312
    iput v1, p0, Lcom/lge/render/PhotoList;->m_iRightLoadPosition:I

    .line 313
    return-void
.end method

.method public FirstToNext()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    .line 103
    return-void
.end method

.method public FirstToPrev()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    .line 107
    return-void
.end method

.method public Get()[J
    .registers 5

    .prologue
    .line 246
    const/4 v1, 0x3

    new-array v0, v1, [J

    .line 247
    .local v0, uid:[J
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 248
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 249
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 251
    return-object v0
.end method

.method public Get(I)[J
    .registers 8
    .parameter "point"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 276
    .local v0, data:Lcom/lge/render/PhotoList$ListData;
    const/4 v3, 0x3

    new-array v2, v3, [J

    .line 278
    .local v2, uid:[J
    if-gez p1, :cond_11

    .line 279
    move v1, p1

    .local v1, i:I
    :goto_8
    if-gez v1, :cond_1b

    .line 280
    invoke-static {v0}, Lcom/lge/render/PhotoList$ListData;->access$100(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 283
    .end local v1           #i:I
    :cond_11
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_12
    if-ge v1, p1, :cond_1b

    .line 284
    invoke-static {v0}, Lcom/lge/render/PhotoList$ListData;->access$000(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 288
    :cond_1b
    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 289
    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 290
    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 292
    return-object v2
.end method

.method public GetFirst()[J
    .registers 5

    .prologue
    .line 255
    const/4 v1, 0x3

    new-array v0, v1, [J

    .line 256
    .local v0, uid:[J
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 257
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 258
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 260
    return-object v0
.end method

.method public GetLast()[J
    .registers 6

    .prologue
    .line 264
    const/4 v2, 0x3

    new-array v1, v2, [J

    .line 265
    .local v1, uid:[J
    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 267
    .local v0, data:Lcom/lge/render/PhotoList$ListData;
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 268
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 269
    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 271
    return-object v1
.end method

.method public GetLeft(I)[J
    .registers 8
    .parameter "moveCnt"

    .prologue
    .line 373
    const/4 v3, 0x3

    new-array v2, v3, [J

    .line 374
    .local v2, uid:[J
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 376
    .local v0, data:Lcom/lge/render/PhotoList$ListData;
    if-ltz p1, :cond_11

    .line 377
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_1b

    .line 378
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 380
    .end local v1           #i:I
    :cond_11
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_12
    if-le v1, p1, :cond_1b

    .line 381
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 380
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 384
    :cond_1b
    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 385
    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 386
    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 388
    return-object v2
.end method

.method public GetRight(I)[J
    .registers 8
    .parameter "moveCnt"

    .prologue
    .line 392
    const/4 v3, 0x3

    new-array v2, v3, [J

    .line 393
    .local v2, uid:[J
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 395
    .local v0, data:Lcom/lge/render/PhotoList$ListData;
    if-ltz p1, :cond_11

    .line 396
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_1b

    .line 397
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 399
    .end local v1           #i:I
    :cond_11
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_12
    if-le v1, p1, :cond_1b

    .line 400
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 399
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 403
    :cond_1b
    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 404
    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 405
    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 407
    return-object v2
.end method

.method public Next()[J
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 176
    iget v1, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    .line 177
    iget v1, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    iget v2, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    if-ne v1, v2, :cond_f

    .line 178
    iput v3, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    .line 179
    :cond_f
    const/4 v1, 0x3

    new-array v0, v1, [J

    .line 180
    .local v0, uid:[J
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v1

    aput-wide v1, v0, v3

    .line 181
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 182
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 184
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 186
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    if-eqz v1, :cond_4c

    .line 187
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 188
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 191
    :cond_4c
    return-object v0
.end method

.method public Prev()[J
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 200
    iget v1, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    .line 201
    iget v1, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    if-gez v1, :cond_f

    .line 202
    iget v1, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    .line 203
    :cond_f
    const/4 v1, 0x3

    new-array v0, v1, [J

    .line 204
    .local v0, uid:[J
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 205
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v1

    aput-wide v1, v0, v4

    .line 206
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 208
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 210
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    if-eqz v1, :cond_4c

    .line 211
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 212
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 215
    :cond_4c
    return-object v0
.end method

.method public Remove(I)V
    .registers 8
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    .line 316
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 317
    .local v1, data:Lcom/lge/render/PhotoList$ListData;
    if-lez p1, :cond_5f

    .line 318
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, p1, :cond_f

    .line 319
    invoke-static {v1}, Lcom/lge/render/PhotoList$ListData;->access$000(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 321
    :cond_f
    iget v3, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    iget v4, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    sub-int v0, v3, v4

    .line 322
    .local v0, checkCnt:I
    sub-int v3, v0, p1

    if-gtz v3, :cond_1e

    .line 323
    iget v3, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    .line 334
    .end local v0           #checkCnt:I
    .end local v2           #i:I
    :cond_1e
    :goto_1e
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    if-ne v1, v3, :cond_2a

    .line 335
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    .line 336
    :cond_2a
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    if-ne v1, v3, :cond_36

    .line 337
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 338
    :cond_36
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    if-ne v1, v3, :cond_42

    .line 339
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 341
    :cond_42
    invoke-static {v1}, Lcom/lge/render/PhotoList$ListData;->access$100(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    invoke-static {v1}, Lcom/lge/render/PhotoList$ListData;->access$000(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/render/PhotoList$ListData;->access$002(Lcom/lge/render/PhotoList$ListData;Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    .line 342
    invoke-static {v1}, Lcom/lge/render/PhotoList$ListData;->access$000(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    invoke-static {v1}, Lcom/lge/render/PhotoList$ListData;->access$100(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/render/PhotoList$ListData;->access$102(Lcom/lge/render/PhotoList$ListData;Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    .line 343
    iget v3, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    .line 344
    const/4 v1, 0x0

    .line 345
    return-void

    .line 324
    :cond_5f
    if-gez p1, :cond_76

    .line 325
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_62
    if-le v2, p1, :cond_6b

    .line 326
    invoke-static {v1}, Lcom/lge/render/PhotoList$ListData;->access$100(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    .line 325
    add-int/lit8 v2, v2, -0x1

    goto :goto_62

    .line 328
    :cond_6b
    iget v3, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    add-int/2addr v3, p1

    if-ltz v3, :cond_1e

    .line 329
    iget v3, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    goto :goto_1e

    .line 331
    .end local v2           #i:I
    :cond_76
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    goto :goto_1e
.end method

.method public RemovePerson(J)V
    .registers 6
    .parameter "PersonID"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 351
    .local v0, data:Lcom/lge/render/PhotoList$ListData;
    :cond_2
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_58

    .line 357
    :goto_a
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    if-ne v0, v1, :cond_16

    .line 358
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 359
    :cond_16
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    if-ne v0, v1, :cond_22

    .line 360
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    .line 361
    :cond_22
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    if-ne v0, v1, :cond_2e

    .line 362
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 363
    :cond_2e
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    if-ne v0, v1, :cond_3a

    .line 364
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 366
    :cond_3a
    invoke-static {v0}, Lcom/lge/render/PhotoList$ListData;->access$100(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    invoke-static {v0}, Lcom/lge/render/PhotoList$ListData;->access$000(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/render/PhotoList$ListData;->access$002(Lcom/lge/render/PhotoList$ListData;Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    .line 367
    invoke-static {v0}, Lcom/lge/render/PhotoList$ListData;->access$000(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    invoke-static {v0}, Lcom/lge/render/PhotoList$ListData;->access$100(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/render/PhotoList$ListData;->access$102(Lcom/lge/render/PhotoList$ListData;Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    .line 368
    iget v1, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    .line 369
    const/4 v0, 0x0

    .line 370
    return-void

    .line 354
    :cond_58
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    if-ne v0, v1, :cond_2

    goto :goto_a
.end method

.method public changeMovingCount(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 597
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    .line 599
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    if-gez v0, :cond_15

    .line 600
    :goto_9
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    if-gez v0, :cond_29

    .line 601
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    iget v1, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    goto :goto_9

    .line 603
    :cond_15
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    iget v1, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    if-le v0, v1, :cond_29

    .line 604
    :goto_1b
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    iget v1, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    if-le v0, v1, :cond_29

    .line 605
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    iget v1, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    goto :goto_1b

    .line 607
    :cond_29
    return-void
.end method

.method public getAddCnt()I
    .registers 2

    .prologue
    .line 753
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iAddCnt:I

    return v0
.end method

.method public getAddData()[J
    .registers 5

    .prologue
    .line 757
    const/4 v1, 0x3

    new-array v0, v1, [J

    .line 759
    .local v0, ret:[J
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_AddPoint:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 760
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_AddPoint:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 761
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_AddPoint:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 763
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_AddPoint:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_AddPoint:Lcom/lge/render/PhotoList$ListData;

    .line 765
    return-object v0
.end method

.method public getAllPositions(I)[J
    .registers 7
    .parameter "cnt"

    .prologue
    .line 624
    new-array v2, p1, [J

    .line 625
    .local v2, ret:[J
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 626
    .local v0, data:Lcom/lge/render/PhotoList$ListData;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, p1, :cond_14

    .line 627
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 628
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 630
    :cond_14
    return-object v2
.end method

.method public getChangeData()[J
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 711
    const/4 v1, 0x3

    new-array v0, v1, [J

    .line 712
    .local v0, ret:[J
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_DstData:Lcom/lge/render/PhotoList$ListData;

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    if-ne v1, v2, :cond_f

    .line 713
    const-wide/16 v1, -0x1

    aput-wide v1, v0, v3

    .line 725
    :goto_e
    return-object v0

    .line 715
    :cond_f
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_DstData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v1

    aput-wide v1, v0, v3

    .line 716
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_DstData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 717
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_DstData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 719
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_DstData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v1

    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_42

    .line 720
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_DstData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_DstData:Lcom/lge/render/PhotoList$ListData;

    goto :goto_e

    .line 722
    :cond_42
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_DstData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_DstData:Lcom/lge/render/PhotoList$ListData;

    goto :goto_e
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 589
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    return v0
.end method

.method public getGMId()J
    .registers 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLoadData(I)[J
    .registers 8
    .parameter "movePostion"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    const/4 v1, 0x3

    new-array v0, v1, [J

    .line 158
    .local v0, uid:[J
    if-gez p1, :cond_21

    .line 159
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v1

    aput-wide v1, v0, v3

    .line 160
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v1

    aput-wide v1, v0, v4

    .line 161
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v1

    aput-wide v1, v0, v5

    .line 167
    :goto_20
    return-object v0

    .line 163
    :cond_21
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v1

    aput-wide v1, v0, v3

    .line 164
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v1

    aput-wide v1, v0, v4

    .line 165
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v1

    aput-wide v1, v0, v5

    goto :goto_20
.end method

.method public getMovingCount()I
    .registers 2

    .prologue
    .line 593
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    return v0
.end method

.method public getPriority()J
    .registers 3

    .prologue
    .line 572
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeleData()[J
    .registers 5

    .prologue
    .line 729
    const/4 v1, 0x3

    new-array v0, v1, [J

    .line 730
    .local v0, ret:[J
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 731
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 732
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList$ListData;->getGMId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 733
    return-object v0
.end method

.method public getStartPointCnt()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iStartMovingCnt:I

    return v0
.end method

.method public getUID()J
    .registers 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getID()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAddPoint(II)I
    .registers 7
    .parameter "LeftOrRight"
    .parameter "length"

    .prologue
    .line 811
    const/4 v2, 0x0

    .line 812
    .local v2, ret:I
    const/4 v0, 0x0

    .line 813
    .local v0, check:I
    if-gez p1, :cond_19

    .line 814
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 816
    .local v1, data:Lcom/lge/render/PhotoList$ListData;
    :goto_6
    if-le p2, v0, :cond_2e

    .line 817
    invoke-direct {p0, v1}, Lcom/lge/render/PhotoList;->isAddPoint(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v2

    .line 837
    :goto_f
    return v3

    .line 820
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 821
    add-int/lit8 v0, v0, 0x1

    .line 822
    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    goto :goto_6

    .line 825
    .end local v1           #data:Lcom/lge/render/PhotoList$ListData;
    :cond_19
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 827
    .restart local v1       #data:Lcom/lge/render/PhotoList$ListData;
    :goto_1b
    if-le p2, v0, :cond_2e

    .line 828
    invoke-direct {p0, v1}, Lcom/lge/render/PhotoList;->isAddPoint(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v3

    if-eqz v3, :cond_25

    move v3, v2

    .line 829
    goto :goto_f

    .line 831
    :cond_25
    add-int/lit8 v2, v2, 0x1

    .line 832
    add-int/lit8 v0, v0, 0x1

    .line 833
    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    goto :goto_1b

    .line 837
    :cond_2e
    const/4 v3, -0x1

    goto :goto_f
.end method

.method public hasAddPoint(III)I
    .registers 8
    .parameter "start"
    .parameter "range"
    .parameter "a"

    .prologue
    .line 777
    const/4 v2, 0x0

    .line 778
    .local v2, ret:I
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 780
    .local v0, data:Lcom/lge/render/PhotoList$ListData;
    if-gez p1, :cond_f

    .line 781
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-le v1, p1, :cond_19

    .line 782
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 781
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 785
    .end local v1           #i:I
    :cond_f
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_10
    if-ge v1, p1, :cond_19

    .line 786
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 790
    :cond_19
    if-gez p2, :cond_2f

    .line 791
    const/4 v1, 0x0

    :goto_1c
    if-le v1, p2, :cond_43

    .line 792
    invoke-direct {p0, v0}, Lcom/lge/render/PhotoList;->isAddPoint(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, v2

    .line 807
    :goto_25
    return v3

    .line 795
    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 796
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 791
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 799
    :cond_2f
    const/4 v1, 0x0

    :goto_30
    if-ge v1, p2, :cond_43

    .line 800
    invoke-direct {p0, v0}, Lcom/lge/render/PhotoList;->isAddPoint(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v3, v2

    .line 801
    goto :goto_25

    .line 803
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    .line 804
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 807
    :cond_43
    const/4 v3, -0x1

    goto :goto_25
.end method

.method public hasFirst(II)I
    .registers 7
    .parameter "LeftOrRight"
    .parameter "size"

    .prologue
    .line 507
    const/4 v2, 0x0

    .line 508
    .local v2, ret:I
    const/4 v0, 0x0

    .line 509
    .local v0, check:I
    if-gez p1, :cond_19

    .line 510
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 512
    .local v1, data:Lcom/lge/render/PhotoList$ListData;
    :goto_6
    if-le p2, v0, :cond_2e

    .line 513
    invoke-direct {p0, v1}, Lcom/lge/render/PhotoList;->isFirst(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v2

    .line 533
    :goto_f
    return v3

    .line 516
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 517
    add-int/lit8 v0, v0, 0x1

    .line 518
    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    goto :goto_6

    .line 521
    .end local v1           #data:Lcom/lge/render/PhotoList$ListData;
    :cond_19
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 523
    .restart local v1       #data:Lcom/lge/render/PhotoList$ListData;
    :goto_1b
    if-le p2, v0, :cond_2e

    .line 524
    invoke-direct {p0, v1}, Lcom/lge/render/PhotoList;->isFirst(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v3

    if-eqz v3, :cond_25

    move v3, v2

    .line 525
    goto :goto_f

    .line 527
    :cond_25
    add-int/lit8 v2, v2, 0x1

    .line 528
    add-int/lit8 v0, v0, 0x1

    .line 529
    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    goto :goto_1b

    .line 533
    :cond_2e
    const/4 v3, -0x1

    goto :goto_f
.end method

.method public hasFirst(III)I
    .registers 8
    .parameter "start"
    .parameter "range"
    .parameter "a"

    .prologue
    .line 425
    const/4 v2, 0x0

    .line 426
    .local v2, ret:I
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 428
    .local v0, data:Lcom/lge/render/PhotoList$ListData;
    if-gez p1, :cond_f

    .line 429
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-le v1, p1, :cond_19

    .line 430
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 429
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 433
    .end local v1           #i:I
    :cond_f
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_10
    if-ge v1, p1, :cond_19

    .line 434
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 438
    :cond_19
    if-gez p2, :cond_2f

    .line 439
    const/4 v1, 0x0

    :goto_1c
    if-le v1, p2, :cond_43

    .line 440
    invoke-direct {p0, v0}, Lcom/lge/render/PhotoList;->isFirst(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, v2

    .line 455
    :goto_25
    return v3

    .line 443
    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 444
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 439
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 447
    :cond_2f
    const/4 v1, 0x0

    :goto_30
    if-ge v1, p2, :cond_43

    .line 448
    invoke-direct {p0, v0}, Lcom/lge/render/PhotoList;->isFirst(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v3, v2

    .line 449
    goto :goto_25

    .line 451
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    .line 452
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 455
    :cond_43
    const/4 v3, -0x1

    goto :goto_25
.end method

.method public hasLast(II)I
    .registers 7
    .parameter "LeftOrRight"
    .parameter "size"

    .prologue
    .line 537
    const/4 v2, 0x0

    .line 538
    .local v2, ret:I
    const/4 v0, 0x0

    .line 539
    .local v0, check:I
    if-gez p1, :cond_19

    .line 540
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 542
    .local v1, data:Lcom/lge/render/PhotoList$ListData;
    :goto_6
    if-le p2, v0, :cond_2e

    .line 543
    invoke-direct {p0, v1}, Lcom/lge/render/PhotoList;->isLast(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v2

    .line 563
    :goto_f
    return v3

    .line 546
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 547
    add-int/lit8 v0, v0, 0x1

    .line 548
    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    goto :goto_6

    .line 551
    .end local v1           #data:Lcom/lge/render/PhotoList$ListData;
    :cond_19
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 553
    .restart local v1       #data:Lcom/lge/render/PhotoList$ListData;
    :goto_1b
    if-le p2, v0, :cond_2e

    .line 554
    invoke-direct {p0, v1}, Lcom/lge/render/PhotoList;->isLast(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v3

    if-eqz v3, :cond_25

    move v3, v2

    .line 555
    goto :goto_f

    .line 557
    :cond_25
    add-int/lit8 v2, v2, 0x1

    .line 558
    add-int/lit8 v0, v0, 0x1

    .line 559
    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    goto :goto_1b

    .line 563
    :cond_2e
    const/4 v3, -0x1

    goto :goto_f
.end method

.method public hasLast(III)I
    .registers 8
    .parameter "start"
    .parameter "range"
    .parameter "a"

    .prologue
    .line 473
    const/4 v2, 0x0

    .line 474
    .local v2, ret:I
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 476
    .local v0, data:Lcom/lge/render/PhotoList$ListData;
    if-gez p1, :cond_f

    .line 477
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-le v1, p1, :cond_19

    .line 478
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 477
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 481
    .end local v1           #i:I
    :cond_f
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_10
    if-ge v1, p1, :cond_19

    .line 482
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 486
    :cond_19
    if-gez p2, :cond_2f

    .line 487
    const/4 v1, 0x0

    :goto_1c
    if-le v1, p2, :cond_43

    .line 488
    invoke-direct {p0, v0}, Lcom/lge/render/PhotoList;->isLast(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, v2

    .line 503
    :goto_25
    return v3

    .line 491
    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 492
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 487
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 495
    :cond_2f
    const/4 v1, 0x0

    :goto_30
    if-ge v1, p2, :cond_43

    .line 496
    invoke-direct {p0, v0}, Lcom/lge/render/PhotoList;->isLast(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v3, v2

    .line 497
    goto :goto_25

    .line 499
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    .line 500
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 503
    :cond_43
    const/4 v3, -0x1

    goto :goto_25
.end method

.method public increaseAddCnt()V
    .registers 2

    .prologue
    .line 749
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iAddCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/render/PhotoList;->m_iAddCnt:I

    .line 750
    return-void
.end method

.method public isAddAction()Z
    .registers 2

    .prologue
    .line 742
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iAddCnt:I

    if-gtz v0, :cond_6

    .line 743
    const/4 v0, 0x0

    .line 745
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isAddPoint()Z
    .registers 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-direct {p0, v0}, Lcom/lge/render/PhotoList;->isAddPoint(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-direct {p0, v0}, Lcom/lge/render/PhotoList;->isFirst(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-direct {p0, v0}, Lcom/lge/render/PhotoList;->isLast(Lcom/lge/render/PhotoList$ListData;)Z

    move-result v0

    return v0
.end method

.method public moveLeftLoadPostion(I)V
    .registers 4
    .parameter "moveCnt"

    .prologue
    .line 61
    if-gez p1, :cond_10

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-le v0, p1, :cond_1e

    .line 63
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-static {v1}, Lcom/lge/render/PhotoList$ListData;->access$000(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 62
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 66
    .end local v0           #i:I
    :cond_10
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_11
    if-ge v0, p1, :cond_1e

    .line 67
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-static {v1}, Lcom/lge/render/PhotoList$ListData;->access$100(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 70
    :cond_1e
    iget v1, p0, Lcom/lge/render/PhotoList;->m_iLeftLoadPosition:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/lge/render/PhotoList;->m_iLeftLoadPosition:I

    .line 71
    return-void
.end method

.method public moveRightLoadPostion(I)V
    .registers 4
    .parameter "moveCnt"

    .prologue
    .line 89
    if-gez p1, :cond_10

    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-le v0, p1, :cond_1e

    .line 91
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-static {v1}, Lcom/lge/render/PhotoList$ListData;->access$100(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 90
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 94
    .end local v0           #i:I
    :cond_10
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_11
    if-ge v0, p1, :cond_1e

    .line 95
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    invoke-static {v1}, Lcom/lge/render/PhotoList$ListData;->access$000(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 98
    :cond_1e
    iget v1, p0, Lcom/lge/render/PhotoList;->m_iRightLoadPosition:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/lge/render/PhotoList;->m_iRightLoadPosition:I

    .line 99
    return-void
.end method

.method public moveToFirst()V
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    .line 114
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 115
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iRightLoadPosition:I

    invoke-virtual {p0, v0}, Lcom/lge/render/PhotoList;->setRightLoadPostion(I)V

    .line 116
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iLeftLoadPosition:I

    invoke-virtual {p0, v0}, Lcom/lge/render/PhotoList;->setLeftLoadPostion(I)V

    .line 117
    return-void
.end method

.method public moveToLast()V
    .registers 3

    .prologue
    .line 123
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    .line 124
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 125
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iRightLoadPosition:I

    invoke-virtual {p0, v0}, Lcom/lge/render/PhotoList;->setRightLoadPostion(I)V

    .line 126
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iLeftLoadPosition:I

    invoke-virtual {p0, v0}, Lcom/lge/render/PhotoList;->setLeftLoadPostion(I)V

    .line 127
    return-void
.end method

.method public moveToLastPoint()V
    .registers 3

    .prologue
    .line 137
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iStartMovingCnt:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    .line 138
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_StartPoint:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 139
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iRightLoadPosition:I

    invoke-virtual {p0, v0}, Lcom/lge/render/PhotoList;->setRightLoadPostion(I)V

    .line 140
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iLeftLoadPosition:I

    invoke-virtual {p0, v0}, Lcom/lge/render/PhotoList;->setLeftLoadPostion(I)V

    .line 141
    return-void
.end method

.method public moveToStartPoint()V
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iStartMovingCnt:I

    iput v0, p0, Lcom/lge/render/PhotoList;->m_iMovingCnt:I

    .line 131
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_StartPoint:Lcom/lge/render/PhotoList$ListData;

    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 132
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iRightLoadPosition:I

    invoke-virtual {p0, v0}, Lcom/lge/render/PhotoList;->setRightLoadPostion(I)V

    .line 133
    iget v0, p0, Lcom/lge/render/PhotoList;->m_iLeftLoadPosition:I

    invoke-virtual {p0, v0}, Lcom/lge/render/PhotoList;->setLeftLoadPostion(I)V

    .line 134
    return-void
.end method

.method public runChangeData(IJ)V
    .registers 11
    .parameter "srcGapTodst"
    .parameter "dstPosition"

    .prologue
    const-wide/16 v5, 0x1

    .line 634
    const/4 v2, 0x0

    .line 636
    .local v2, isCurrent:Z
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3, p2, p3}, Lcom/lge/render/PhotoList$ListData;->setPostion(J)V

    .line 637
    if-gez p1, :cond_90

    .line 638
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_DstData:Lcom/lge/render/PhotoList$ListData;

    .line 640
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    .line 641
    .local v0, data:Lcom/lge/render/PhotoList$ListData;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-le v1, p1, :cond_2b

    .line 642
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 643
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v3

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/lge/render/PhotoList$ListData;->setPostion(J)V

    .line 644
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    if-ne v0, v3, :cond_28

    .line 645
    const/4 v2, 0x1

    .line 641
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 648
    :cond_2b
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    if-ne v3, v0, :cond_33

    .line 649
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    .line 652
    :cond_33
    if-eqz v2, :cond_81

    .line 653
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    if-ne v3, v0, :cond_78

    .line 654
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 662
    :cond_3d
    :goto_3d
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v4}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/render/PhotoList$ListData;->setNext(Lcom/lge/render/PhotoList$ListData;)V

    .line 663
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v4}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/render/PhotoList$ListData;->setPrev(Lcom/lge/render/PhotoList$ListData;)V

    .line 664
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/render/PhotoList$ListData;->setPrev(Lcom/lge/render/PhotoList$ListData;)V

    .line 665
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3, v0}, Lcom/lge/render/PhotoList$ListData;->setNext(Lcom/lge/render/PhotoList$ListData;)V

    .line 666
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3, v4}, Lcom/lge/render/PhotoList$ListData;->setNext(Lcom/lge/render/PhotoList$ListData;)V

    .line 667
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0, v3}, Lcom/lge/render/PhotoList$ListData;->setPrev(Lcom/lge/render/PhotoList$ListData;)V

    .line 708
    .end local v0           #data:Lcom/lge/render/PhotoList$ListData;
    .end local v1           #i:I
    :goto_77
    return-void

    .line 656
    .restart local v0       #data:Lcom/lge/render/PhotoList$ListData;
    .restart local v1       #i:I
    :cond_78
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    goto :goto_3d

    .line 658
    :cond_81
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    iget-object v4, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    if-ne v3, v4, :cond_3d

    .line 659
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    goto :goto_3d

    .line 668
    .end local v0           #data:Lcom/lge/render/PhotoList$ListData;
    .end local v1           #i:I
    :cond_90
    if-lez p1, :cond_11f

    .line 669
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    iget-object v4, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    if-ne v3, v4, :cond_a0

    .line 671
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    .line 673
    :cond_a0
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_DstData:Lcom/lge/render/PhotoList$ListData;

    .line 675
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    .line 676
    .restart local v0       #data:Lcom/lge/render/PhotoList$ListData;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_ab
    if-ge v1, p1, :cond_c1

    .line 677
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPostion()J

    move-result-wide v3

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/lge/render/PhotoList$ListData;->setPostion(J)V

    .line 679
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    if-ne v0, v3, :cond_be

    .line 680
    const/4 v2, 0x1

    .line 676
    :cond_be
    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    .line 683
    :cond_c1
    if-eqz v2, :cond_110

    .line 684
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    if-ne v3, v0, :cond_107

    .line 686
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 699
    :cond_cb
    :goto_cb
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v4}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/render/PhotoList$ListData;->setNext(Lcom/lge/render/PhotoList$ListData;)V

    .line 700
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v4}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/render/PhotoList$ListData;->setPrev(Lcom/lge/render/PhotoList$ListData;)V

    .line 701
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3, v0}, Lcom/lge/render/PhotoList$ListData;->setPrev(Lcom/lge/render/PhotoList$ListData;)V

    .line 702
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/render/PhotoList$ListData;->setNext(Lcom/lge/render/PhotoList$ListData;)V

    .line 703
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3, v4}, Lcom/lge/render/PhotoList$ListData;->setPrev(Lcom/lge/render/PhotoList$ListData;)V

    .line 704
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0, v3}, Lcom/lge/render/PhotoList$ListData;->setNext(Lcom/lge/render/PhotoList$ListData;)V

    goto/16 :goto_77

    .line 690
    :cond_107
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    goto :goto_cb

    .line 692
    :cond_110
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    iget-object v4, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    if-ne v3, v4, :cond_cb

    .line 693
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    goto :goto_cb

    .line 706
    .end local v0           #data:Lcom/lge/render/PhotoList$ListData;
    .end local v1           #i:I
    :cond_11f
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_DstData:Lcom/lge/render/PhotoList$ListData;

    goto/16 :goto_77
.end method

.method public setLeftLoadPostion(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 51
    iput p1, p0, Lcom/lge/render/PhotoList;->m_iLeftLoadPosition:I

    .line 53
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 54
    .local v0, data:Lcom/lge/render/PhotoList$ListData;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, p1, :cond_e

    .line 55
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 57
    :cond_e
    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_LeftLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 58
    return-void
.end method

.method public setList(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/lge/render/PhotoList;->init(Landroid/database/Cursor;)V

    .line 43
    return-void
.end method

.method public setPosition(J)V
    .registers 4
    .parameter "position"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v0, p1, p2}, Lcom/lge/render/PhotoList$ListData;->setPostion(J)V

    .line 145
    return-void
.end method

.method public setRightLoadPostion(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 79
    iput p1, p0, Lcom/lge/render/PhotoList;->m_iRightLoadPosition:I

    .line 80
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    .line 82
    .local v0, data:Lcom/lge/render/PhotoList$ListData;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, p1, :cond_e

    .line 83
    invoke-virtual {v0}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v0

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 85
    :cond_e
    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_RightLoadData:Lcom/lge/render/PhotoList$ListData;

    .line 86
    return-void
.end method

.method public setSrcData(I)V
    .registers 4
    .parameter "srcindex"

    .prologue
    .line 610
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_Current:Lcom/lge/render/PhotoList$ListData;

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    .line 612
    if-gez p1, :cond_14

    .line 613
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-le v0, p1, :cond_22

    .line 614
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    .line 613
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 617
    .end local v0           #i:I
    :cond_14
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_15
    if-ge v0, p1, :cond_22

    .line 618
    iget-object v1, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v1}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/render/PhotoList;->m_SrcData:Lcom/lge/render/PhotoList$ListData;

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 621
    :cond_22
    return-void
.end method

.method public setStartPoint(I)V
    .registers 7
    .parameter "point"

    .prologue
    .line 219
    iget v3, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    div-int/lit8 v0, v3, 0x2

    .line 220
    .local v0, half:I
    move v2, p1

    .line 221
    .local v2, moveCnt:I
    iput p1, p0, Lcom/lge/render/PhotoList;->m_iStartMovingCnt:I

    .line 222
    :goto_7
    iget v3, p0, Lcom/lge/render/PhotoList;->m_iStartMovingCnt:I

    iget v4, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    if-le v3, v4, :cond_15

    .line 223
    iget v3, p0, Lcom/lge/render/PhotoList;->m_iStartMovingCnt:I

    iget v4, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/lge/render/PhotoList;->m_iStartMovingCnt:I

    goto :goto_7

    .line 225
    :cond_15
    if-le p1, v0, :cond_1b

    .line 226
    iget v3, p0, Lcom/lge/render/PhotoList;->m_iCnt:I

    sub-int v2, p1, v3

    .line 229
    :cond_1b
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_StartPoint:Lcom/lge/render/PhotoList$ListData;

    .line 230
    if-gez v2, :cond_2f

    .line 231
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    if-le v1, v2, :cond_3d

    .line 232
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_StartPoint:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getPrev()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_StartPoint:Lcom/lge/render/PhotoList$ListData;

    .line 231
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 235
    .end local v1           #i:I
    :cond_2f
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_30
    if-ge v1, v2, :cond_3d

    .line 236
    iget-object v3, p0, Lcom/lge/render/PhotoList;->m_StartPoint:Lcom/lge/render/PhotoList$ListData;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList$ListData;->getNext()Lcom/lge/render/PhotoList$ListData;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/PhotoList;->m_StartPoint:Lcom/lge/render/PhotoList$ListData;

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 239
    :cond_3d
    return-void
.end method

.method public startAddAction()V
    .registers 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/lge/render/PhotoList;->m_First:Lcom/lge/render/PhotoList$ListData;

    iput-object v0, p0, Lcom/lge/render/PhotoList;->m_AddPoint:Lcom/lge/render/PhotoList$ListData;

    .line 738
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/PhotoList;->m_iAddCnt:I

    .line 739
    return-void
.end method
