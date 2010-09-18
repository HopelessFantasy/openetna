.class public Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "AlphabetIndexer.java"


# instance fields
.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabetArray:[Ljava/lang/Object;

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field protected mDataCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I[Ljava/lang/Object;)V
    .registers 6
    .parameter "cursor"
    .parameter "columnIndex"
    .parameter "sections"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 50
    iput p2, p0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mColumnIndex:I

    .line 51
    iput-object p3, p0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 53
    if-eqz p1, :cond_17

    .line 54
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 57
    :cond_17
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 58
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 59
    return-void
.end method


# virtual methods
.method public indexOf(I)I
    .registers 21
    .parameter "sectionIndex"

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    move-object v3, v0

    .line 87
    .local v3, alphaMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    move-object v8, v0

    .line 89
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/Object;

    move-object/from16 v17, v0

    if-nez v17, :cond_17

    .line 90
    :cond_14
    const/16 v17, 0x0

    .line 183
    :goto_16
    return v17

    .line 94
    :cond_17
    if-gtz p1, :cond_1c

    .line 95
    const/16 v17, 0x0

    goto :goto_16

    .line 97
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_3c

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int p1, v17, v18

    .line 101
    :cond_3c
    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v15

    .line 103
    .local v15, savedCursorPos:I
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 104
    .local v4, count:I
    const/16 v16, 0x0

    .line 105
    .local v16, start:I
    move v9, v4

    .line 108
    .local v9, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/Object;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, letter:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 110
    const/16 v17, 0x0

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 112
    .local v10, key:I
    const/high16 v17, -0x8000

    const/high16 v18, -0x8000

    move-object v0, v3

    move v1, v10

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .local v12, pos:I
    move/from16 v0, v17

    move v1, v12

    if-eq v0, v1, :cond_75

    .line 116
    if-gez v12, :cond_c6

    .line 117
    neg-int v12, v12

    .line 118
    move v9, v12

    .line 126
    :cond_75
    if-lez p1, :cond_a2

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    sub-int v18, p1, v18

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 129
    .local v13, prevLetter:I
    const/high16 v17, -0x8000

    move-object v0, v3

    move v1, v13

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    .line 130
    .local v14, prevLetterPos:I
    const/high16 v17, -0x8000

    move v0, v14

    move/from16 v1, v17

    if-eq v0, v1, :cond_a2

    .line 131
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 137
    .end local v13           #prevLetter:I
    .end local v14           #prevLetterPos:I
    :cond_a2
    add-int v17, v9, v16

    div-int/lit8 v12, v17, 0x2

    .line 139
    :goto_a6
    if-ge v12, v9, :cond_bc

    .line 141
    invoke-interface {v8, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mColumnIndex:I

    move/from16 v17, v0

    move-object v0, v8

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, curName:Ljava/lang/String;
    if-nez v6, :cond_cd

    .line 144
    if-nez v12, :cond_ca

    .line 181
    .end local v6           #curName:Ljava/lang/String;
    :cond_bc
    :goto_bc
    invoke-virtual {v3, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    invoke-interface {v8, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move/from16 v17, v12

    .line 183
    goto/16 :goto_16

    :cond_c6
    move/from16 v17, v12

    .line 121
    goto/16 :goto_16

    .line 147
    .restart local v6       #curName:Ljava/lang/String;
    :cond_ca
    add-int/lit8 v12, v12, -0x1

    .line 148
    goto :goto_a6

    .line 151
    :cond_cd
    const/16 v17, 0x0

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 153
    .local v5, curLetter:I
    if-eq v5, v10, :cond_120

    .line 155
    const/high16 v17, -0x8000

    move-object v0, v3

    move v1, v5

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 156
    .local v7, curPos:I
    const/high16 v17, -0x8000

    move v0, v7

    move/from16 v1, v17

    if-eq v0, v1, :cond_f6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    move v1, v12

    if-le v0, v1, :cond_101

    .line 158
    :cond_f6
    move v0, v12

    neg-int v0, v0

    move/from16 v17, v0

    move-object v0, v3

    move v1, v5

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    :cond_101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v6

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    if-gez v17, :cond_11a

    .line 161
    add-int/lit8 v16, v12, 0x1

    .line 162
    move/from16 v0, v16

    move v1, v4

    if-lt v0, v1, :cond_11b

    .line 163
    move v12, v4

    .line 164
    goto :goto_bc

    .line 167
    :cond_11a
    move v9, v12

    .line 179
    .end local v7           #curPos:I
    :cond_11b
    :goto_11b
    add-int v17, v16, v9

    div-int/lit8 v12, v17, 0x2

    .line 180
    goto :goto_a6

    .line 171
    :cond_120
    move/from16 v0, v16

    move v1, v12

    if-eq v0, v1, :cond_bc

    .line 176
    move v9, v12

    goto :goto_11b
.end method

.method public onChanged()V
    .registers 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 189
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 190
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 195
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 196
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 67
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 69
    :cond_9
    iput-object p1, p0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 70
    if-eqz p1, :cond_12

    .line 71
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 73
    :cond_12
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 74
    return-void
.end method
