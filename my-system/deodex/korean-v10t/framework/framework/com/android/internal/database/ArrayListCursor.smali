.class public Lcom/android/internal/database/ArrayListCursor;
.super Landroid/database/AbstractCursor;
.source "ArrayListCursor.java"


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mRows:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 11
    .parameter "columnNames"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v6, 0x0

    const-string v7, "_id"

    .line 34
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 35
    array-length v0, p1

    .line 36
    .local v0, colCount:I
    const/4 v1, 0x0

    .line 38
    .local v1, foundID:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v0, :cond_18

    .line 39
    aget-object v4, p1, v2

    const-string v5, "_id"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_51

    .line 40
    iput-object p1, p0, Lcom/android/internal/database/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 41
    const/4 v1, 0x1

    .line 46
    :cond_18
    if-nez v1, :cond_2c

    .line 47
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/database/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 48
    iget-object v4, p0, Lcom/android/internal/database/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    array-length v5, p1

    invoke-static {p1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget-object v4, p0, Lcom/android/internal/database/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    const-string v5, "_id"

    aput-object v7, v4, v0

    .line 52
    :cond_2c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 53
    .local v3, rowCount:I
    new-array v4, v3, [Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/internal/database/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    .line 55
    const/4 v2, 0x0

    :goto_35
    if-ge v2, v3, :cond_54

    .line 56
    iget-object v5, p0, Lcom/android/internal/database/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    aput-object v4, v5, v2

    .line 57
    if-nez v1, :cond_4e

    .line 58
    iget-object v4, p0, Lcom/android/internal/database/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v4, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 38
    .end local v3           #rowCount:I
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 61
    .restart local v3       #rowCount:I
    :cond_54
    return-void
.end method


# virtual methods
.method public deleteRow()Z
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 11
    .parameter "position"
    .parameter "window"

    .prologue
    .line 65
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/database/ArrayListCursor;->getCount()I

    move-result v6

    if-le p1, v6, :cond_9

    .line 109
    :cond_8
    :goto_8
    return-void

    .line 69
    :cond_9
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 71
    :try_start_c
    iget v5, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    .line 72
    .local v5, oldpos:I
    const/4 v6, 0x1

    sub-int v6, p1, v6

    iput v6, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    .line 73
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 74
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/database/ArrayListCursor;->getColumnCount()I

    move-result v1

    .line 76
    .local v1, columnNum:I
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 77
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/android/internal/database/ArrayListCursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 78
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2d
    if-ge v4, v1, :cond_20

    .line 79
    iget-object v6, p0, Lcom/android/internal/database/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 80
    .local v2, data:Ljava/lang/Object;
    if-eqz v2, :cond_6b

    .line 81
    instance-of v6, v2, [B

    if-eqz v6, :cond_56

    .line 82
    check-cast v2, [B

    .end local v2           #data:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    .line 83
    .local v3, field:[B
    iget v6, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v6

    if-nez v6, :cond_77

    .line 84
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_50
    .catchall {:try_start_c .. :try_end_50} :catchall_66
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_50} :catch_51

    goto :goto_20

    .line 104
    .end local v1           #columnNum:I
    .end local v3           #field:[B
    .end local v4           #i:I
    .end local v5           #oldpos:I
    :catch_51
    move-exception v6

    .line 107
    :goto_52
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_8

    .line 88
    .restart local v1       #columnNum:I
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v4       #i:I
    .restart local v5       #oldpos:I
    :cond_56
    :try_start_56
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, field:Ljava/lang/String;
    iget v6, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_77

    .line 90
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_66
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_65} :catch_51

    goto :goto_20

    .line 107
    .end local v1           #columnNum:I
    .end local v2           #data:Ljava/lang/Object;
    .end local v3           #field:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #oldpos:I
    :catchall_66
    move-exception v6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v6

    .line 95
    .restart local v1       #columnNum:I
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v4       #i:I
    .restart local v5       #oldpos:I
    :cond_6b
    :try_start_6b
    iget v6, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    invoke-virtual {p2, v6, v4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v6

    if-nez v6, :cond_77

    .line 96
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    goto :goto_20

    .line 78
    .end local v2           #data:Ljava/lang/Object;
    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 103
    .end local v4           #i:I
    :cond_7a
    iput v5, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I
    :try_end_7c
    .catchall {:try_start_6b .. :try_end_7c} :catchall_66
    .catch Ljava/lang/IllegalStateException; {:try_start_6b .. :try_end_7c} :catch_51

    goto :goto_52
.end method

.method public getBlob(I)[B
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/database/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/database/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/database/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v0, v0

    return v0
.end method

.method public getDouble(I)D
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/internal/database/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 164
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public getFloat(I)F
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/internal/database/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 158
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1
.end method

.method public getInt(I)I
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/internal/database/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 146
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/internal/database/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 152
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getShort(I)S
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/internal/database/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 140
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/internal/database/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 134
    .local v0, cell:Ljava/lang/Object;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method public isNull(I)Z
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/database/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/database/ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
