.class public final Lcom/android/contacts/JapaneseContactListIndexer;
.super Landroid/database/DataSetObserver;
.source "JapaneseContactListIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final sSections:[Ljava/lang/String;

.field private static final sSectionsLength:I


# instance fields
.field private mColumnIndex:I

.field private mDataCursor:Landroid/database/Cursor;

.field private mStringMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const-string v0, "JapaneseContactListIndexer"

    sput-object v0, Lcom/android/contacts/JapaneseContactListIndexer;->TAG:Ljava/lang/String;

    .line 33
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u3042"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u304b"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u3055"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u305f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u306a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u306f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u307e"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u3084"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u3089"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u308f"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\uff21"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\uff22"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\uff23"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\uff24"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\uff25"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\uff26"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\uff27"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\uff28"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\uff29"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\uff2a"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\uff2b"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\uff2c"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\uff2d"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\uff2e"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\uff2f"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\uff30"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\uff31"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\uff32"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\uff33"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\uff34"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\uff35"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\uff36"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\uff37"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\uff38"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\uff39"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\uff40"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u6570"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u8a18"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/JapaneseContactListIndexer;->sSections:[Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/android/contacts/JapaneseContactListIndexer;->sSections:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/android/contacts/JapaneseContactListIndexer;->sSectionsLength:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .registers 6
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 52
    sget-object v1, Lcom/android/contacts/JapaneseContactListIndexer;->sSections:[Ljava/lang/String;

    array-length v0, v1

    .line 53
    .local v0, len:I
    iput p2, p0, Lcom/android/contacts/JapaneseContactListIndexer;->mColumnIndex:I

    .line 54
    iput-object p1, p0, Lcom/android/contacts/JapaneseContactListIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 55
    new-instance v1, Landroid/util/SparseIntArray;

    sget v2, Lcom/android/contacts/JapaneseContactListIndexer;->sSectionsLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/JapaneseContactListIndexer;->mStringMap:Landroid/util/SparseIntArray;

    .line 56
    if-eqz p1, :cond_18

    .line 57
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 59
    :cond_18
    return-void
.end method

.method private getSectionCodePoint(I)I
    .registers 4
    .parameter "index"

    .prologue
    const/4 v1, 0x2

    .line 72
    sget-object v0, Lcom/android/contacts/JapaneseContactListIndexer;->sSections:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_11

    .line 73
    sget-object v0, Lcom/android/contacts/JapaneseContactListIndexer;->sSections:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 77
    :goto_10
    return v0

    .line 74
    :cond_11
    sget-object v0, Lcom/android/contacts/JapaneseContactListIndexer;->sSections:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1b

    .line 75
    const v0, 0xff66

    goto :goto_10

    .line 77
    :cond_1b
    const v0, 0xff70

    goto :goto_10
.end method


# virtual methods
.method public getPositionForSection(I)I
    .registers 19
    .parameter "sectionIndex"

    .prologue
    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/JapaneseContactListIndexer;->mStringMap:Landroid/util/SparseIntArray;

    move-object v11, v0

    .line 83
    .local v11, stringMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/JapaneseContactListIndexer;->mDataCursor:Landroid/database/Cursor;

    move-object v3, v0

    .line 85
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_e

    if-gtz p1, :cond_10

    .line 86
    :cond_e
    const/4 v14, 0x0

    .line 165
    :goto_f
    return v14

    .line 89
    :cond_10
    sget v14, Lcom/android/contacts/JapaneseContactListIndexer;->sSectionsLength:I

    move/from16 v0, p1

    move v1, v14

    if-lt v0, v1, :cond_1c

    .line 90
    sget v14, Lcom/android/contacts/JapaneseContactListIndexer;->sSectionsLength:I

    const/4 v15, 0x1

    sub-int p1, v14, v15

    .line 93
    :cond_1c
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    .line 95
    .local v9, savedCursorPos:I
    sget-object v14, Lcom/android/contacts/JapaneseContactListIndexer;->sSections:[Ljava/lang/String;

    aget-object v12, v14, p1

    .line 96
    .local v12, targetLetter:Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 100
    .local v5, key:I
    const/high16 v14, -0x8000

    invoke-virtual {v11, v5, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 101
    .local v13, tmp:I
    const/high16 v14, -0x8000

    if-eq v14, v13, :cond_35

    move v14, v13

    .line 102
    goto :goto_f

    .line 106
    :cond_35
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 107
    .local v4, end:I
    const/4 v6, 0x0

    .line 111
    .local v6, pos:I
    sget-object v14, Lcom/android/contacts/JapaneseContactListIndexer;->sSections:[Ljava/lang/String;

    const/4 v15, 0x1

    sub-int v15, p1, v15

    aget-object v14, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 112
    .local v7, prevLetter:I
    const/high16 v14, -0x8000

    invoke-virtual {v11, v7, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 113
    .local v8, prevLetterPos:I
    const/high16 v14, -0x8000

    if-eq v8, v14, :cond_51

    .line 114
    move v6, v8

    .line 119
    :cond_51
    :goto_51
    sub-int v14, v4, v6

    const/16 v15, 0x64

    if-le v14, v15, :cond_92

    .line 120
    add-int v14, v4, v6

    div-int/lit8 v13, v14, 0x2

    .line 121
    invoke-interface {v3, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 124
    :cond_5e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/JapaneseContactListIndexer;->mColumnIndex:I

    move v14, v0

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, sort_name:Ljava/lang/String;
    if-eqz v10, :cond_71

    if-eqz v10, :cond_90

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_90

    .line 130
    :cond_71
    sget-object v14, Lcom/android/contacts/JapaneseContactListIndexer;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sort_name is null or its length is 0. index: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 132
    add-int/lit8 v13, v13, 0x1

    .line 136
    if-lt v13, v4, :cond_5e

    .line 137
    :cond_90
    if-ne v13, v4, :cond_ca

    .line 148
    .end local v10           #sort_name:Ljava/lang/String;
    :cond_92
    invoke-interface {v3, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_95
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14

    if-nez v14, :cond_e6

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/JapaneseContactListIndexer;->mColumnIndex:I

    move v14, v0

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 150
    .restart local v10       #sort_name:Ljava/lang/String;
    if-eqz v10, :cond_ac

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_db

    .line 154
    :cond_ac
    sget-object v14, Lcom/android/contacts/JapaneseContactListIndexer;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sort_name is null or its length is 0. index: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_c4
    add-int/lit8 v6, v6, 0x1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_95

    .line 140
    :cond_ca
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 141
    .local v2, codePoint:I
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/JapaneseContactListIndexer;->getSectionCodePoint(I)I

    move-result v14

    if-ge v2, v14, :cond_d8

    .line 142
    move v6, v13

    goto/16 :goto_51

    .line 144
    :cond_d8
    move v4, v13

    goto/16 :goto_51

    .line 157
    .end local v2           #codePoint:I
    :cond_db
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 158
    .restart local v2       #codePoint:I
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/JapaneseContactListIndexer;->getSectionCodePoint(I)I

    move-result v14

    if-lt v2, v14, :cond_c4

    .line 163
    .end local v2           #codePoint:I
    .end local v10           #sort_name:Ljava/lang/String;
    :cond_e6
    invoke-virtual {v11, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    invoke-interface {v3, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v14, v6

    .line 165
    goto/16 :goto_f
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 174
    sget-object v0, Lcom/android/contacts/JapaneseContactListIndexer;->sSections:[Ljava/lang/String;

    return-object v0
.end method

.method public onChanged()V
    .registers 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 180
    iget-object v0, p0, Lcom/android/contacts/JapaneseContactListIndexer;->mStringMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 181
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 186
    iget-object v0, p0, Lcom/android/contacts/JapaneseContactListIndexer;->mStringMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 187
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/JapaneseContactListIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 63
    iget-object v0, p0, Lcom/android/contacts/JapaneseContactListIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 65
    :cond_9
    iput-object p1, p0, Lcom/android/contacts/JapaneseContactListIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 66
    if-eqz p1, :cond_12

    .line 67
    iget-object v0, p0, Lcom/android/contacts/JapaneseContactListIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 69
    :cond_12
    return-void
.end method
