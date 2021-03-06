.class public Landroid/widget/AlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "AlphabetIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field protected mDataCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .registers 7
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "alphabet"

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 84
    iput p2, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    .line 85
    iput-object p3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 86
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    .line 87
    iget v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_2b

    .line 89
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 91
    :cond_2b
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 92
    if-eqz p1, :cond_39

    .line 93
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 96
    :cond_39
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 97
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 98
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "word"
    .parameter "letter"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPositionForSection(I)I
    .registers 21
    .parameter "sectionIndex"

    .prologue
    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    move-object v3, v0

    .line 141
    .local v3, alphaMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    move-object v6, v0

    .line 143
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-nez v17, :cond_17

    .line 144
    :cond_14
    const/16 v17, 0x0

    .line 241
    :goto_16
    return v17

    .line 148
    :cond_17
    if-gtz p1, :cond_1c

    .line 149
    const/16 v17, 0x0

    goto :goto_16

    .line 151
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_32

    .line 152
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int p1, v17, v18

    .line 155
    :cond_32
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    .line 157
    .local v14, savedCursorPos:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 158
    .local v4, count:I
    const/4 v15, 0x0

    .line 159
    .local v15, start:I
    move v8, v4

    .line 162
    .local v8, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 163
    .local v10, letter:C
    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v16

    .line 164
    .local v16, targetLetter:Ljava/lang/String;
    move v9, v10

    .line 166
    .local v9, key:I
    const/high16 v17, -0x8000

    const/high16 v18, -0x8000

    move-object v0, v3

    move v1, v9

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .local v11, pos:I
    move/from16 v0, v17

    move v1, v11

    if-eq v0, v1, :cond_64

    .line 170
    if-gez v11, :cond_ad

    .line 171
    neg-int v11, v11

    .line 172
    move v8, v11

    .line 180
    :cond_64
    if-lez p1, :cond_89

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    sub-int v18, p1, v18

    invoke-interface/range {v17 .. v18}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 183
    .local v12, prevLetter:I
    const/high16 v17, -0x8000

    move-object v0, v3

    move v1, v12

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 184
    .local v13, prevLetterPos:I
    const/high16 v17, -0x8000

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_89

    .line 185
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 191
    .end local v12           #prevLetter:I
    .end local v13           #prevLetterPos:I
    :cond_89
    add-int v17, v8, v15

    div-int/lit8 v11, v17, 0x2

    .line 193
    :goto_8d
    if-ge v11, v8, :cond_a3

    .line 195
    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    move/from16 v17, v0

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, curName:Ljava/lang/String;
    if-nez v5, :cond_b4

    .line 198
    if-nez v11, :cond_b1

    .line 239
    .end local v5           #curName:Ljava/lang/String;
    :cond_a3
    :goto_a3
    invoke-virtual {v3, v9, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    invoke-interface {v6, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    move/from16 v17, v11

    .line 241
    goto/16 :goto_16

    :cond_ad
    move/from16 v17, v11

    .line 175
    goto/16 :goto_16

    .line 201
    .restart local v5       #curName:Ljava/lang/String;
    :cond_b1
    add-int/lit8 v11, v11, -0x1

    .line 202
    goto :goto_8d

    .line 205
    :cond_b4
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 206
    .local v7, diff:I
    if-eqz v7, :cond_cd

    .line 218
    if-gez v7, :cond_c7

    .line 219
    add-int/lit8 v15, v11, 0x1

    .line 220
    if-lt v15, v4, :cond_c8

    .line 221
    move v11, v4

    .line 222
    goto :goto_a3

    .line 225
    :cond_c7
    move v8, v11

    .line 237
    :cond_c8
    :goto_c8
    add-int v17, v15, v8

    div-int/lit8 v11, v17, 0x2

    .line 238
    goto :goto_8d

    .line 229
    :cond_cd
    if-eq v15, v11, :cond_a3

    .line 234
    move v8, v11

    goto :goto_c8
.end method

.method public getSectionForPosition(I)I
    .registers 9
    .parameter "position"

    .prologue
    .line 249
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 250
    .local v3, savedCursorPos:I
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 251
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v6, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, curName:Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 255
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    iget v5, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-ge v1, v5, :cond_32

    .line 256
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 257
    .local v2, letter:C
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, targetLetter:Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2f

    move v5, v1

    .line 262
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :goto_2e
    return v5

    .line 255
    .restart local v2       #letter:C
    .restart local v4       #targetLetter:Ljava/lang/String;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 262
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :cond_32
    const/4 v5, 0x0

    goto :goto_2e
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public onChanged()V
    .registers 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 271
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 272
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 279
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 280
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 281
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 113
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 114
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 116
    :cond_9
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 117
    if-eqz p1, :cond_12

    .line 118
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 120
    :cond_12
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 121
    return-void
.end method
