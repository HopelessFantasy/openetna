.class public final Landroid/database/CursorJoiner;
.super Ljava/lang/Object;
.source "CursorJoiner.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorJoiner$1;,
        Landroid/database/CursorJoiner$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/database/CursorJoiner$Result;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/database/CursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mColumnsLeft:[I

.field private mColumnsRight:[I

.field private mCompareResult:Landroid/database/CursorJoiner$Result;

.field private mCompareResultIsValid:Z

.field private mCursorLeft:Landroid/database/Cursor;

.field private mCursorRight:Landroid/database/Cursor;

.field private mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Landroid/database/CursorJoiner;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/database/CursorJoiner;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V
    .registers 8
    .parameter "cursorLeft"
    .parameter "columnNamesLeft"
    .parameter "cursorRight"
    .parameter "columnNamesRight"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    array-length v0, p2

    array-length v1, p4

    if-eq v0, v1, :cond_2c

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "you must have the same number of columns on the left and right, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2c
    iput-object p1, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    .line 85
    iput-object p3, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    .line 87
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 88
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    .line 93
    invoke-direct {p0, p3, p4}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    .line 95
    iget-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    .line 96
    return-void
.end method

.method private buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I
    .registers 6
    .parameter "cursor"
    .parameter "columnNames"

    .prologue
    .line 109
    array-length v2, p2

    new-array v0, v2, [I

    .line 110
    .local v0, columns:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_12

    .line 111
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 113
    :cond_12
    return-object v0
.end method

.method private static varargs compareStrings([Ljava/lang/String;)I
    .registers 7
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 243
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_f

    .line 244
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "you must specify an even number of values"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_f
    const/4 v1, 0x0

    .local v1, index:I
    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_3c

    .line 248
    aget-object v2, p0, v1

    if-nez v2, :cond_22

    .line 249
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p0, v2

    if-nez v2, :cond_20

    .line 247
    :cond_1d
    add-int/lit8 v1, v1, 0x2

    goto :goto_10

    :cond_20
    move v2, v4

    .line 263
    :goto_21
    return v2

    .line 253
    :cond_22
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p0, v2

    if-nez v2, :cond_2a

    move v2, v5

    .line 254
    goto :goto_21

    .line 257
    :cond_2a
    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 258
    .local v0, comp:I
    if-eqz v0, :cond_1d

    .line 259
    if-gez v0, :cond_3a

    move v2, v4

    goto :goto_21

    :cond_3a
    move v2, v5

    goto :goto_21

    .line 263
    .end local v0           #comp:I
    :cond_3c
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private incrementCursors()V
    .registers 3

    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    if-eqz v0, :cond_14

    .line 218
    sget-object v0, Landroid/database/CursorJoiner$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    iget-object v1, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 230
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    .line 232
    :cond_14
    return-void

    .line 220
    :pswitch_15
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_11

    .line 223
    :pswitch_1b
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_11

    .line 226
    :pswitch_21
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 227
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_11

    .line 218
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_21
        :pswitch_15
        :pswitch_1b
    .end packed-switch
.end method

.method private static populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V
    .registers 7
    .parameter "values"
    .parameter "cursor"
    .parameter "columnIndicies"
    .parameter "startingIndex"

    .prologue
    .line 206
    sget-boolean v1, Landroid/database/CursorJoiner;->$assertionsDisabled:Z

    if-nez v1, :cond_f

    if-eqz p3, :cond_f

    const/4 v1, 0x1

    if-eq p3, v1, :cond_f

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 207
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v1, p2

    if-ge v0, v1, :cond_21

    .line 208
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    aget v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 210
    :cond_21
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    iget-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    if-eqz v0, :cond_6a

    .line 122
    sget-object v0, Landroid/database/CursorJoiner$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    iget-object v1, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7e

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value for mCompareResult, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :pswitch_2e
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_3e
    move v0, v3

    .line 137
    :goto_3f
    return v0

    :cond_40
    move v0, v2

    .line 124
    goto :goto_3f

    .line 127
    :pswitch_42
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_54

    :cond_52
    move v0, v3

    goto :goto_3f

    :cond_54
    move v0, v2

    goto :goto_3f

    .line 130
    :pswitch_56
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_68

    :cond_66
    move v0, v3

    goto :goto_3f

    :cond_68
    move v0, v2

    goto :goto_3f

    .line 137
    :cond_6a
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7c

    :cond_7a
    move v0, v3

    goto :goto_3f

    :cond_7c
    move v0, v2

    goto :goto_3f

    .line 122
    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_42
        :pswitch_56
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/database/CursorJoiner$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    return-object p0
.end method

.method public next()Landroid/database/CursorJoiner$Result;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 157
    invoke-virtual {p0}, Landroid/database/CursorJoiner;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 158
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "you must only call next() when hasNext() is true"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_10
    invoke-direct {p0}, Landroid/database/CursorJoiner;->incrementCursors()V

    .line 161
    sget-boolean v2, Landroid/database/CursorJoiner;->$assertionsDisabled:Z

    if-nez v2, :cond_23

    invoke-virtual {p0}, Landroid/database/CursorJoiner;->hasNext()Z

    move-result v2

    if-nez v2, :cond_23

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 163
    :cond_23
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_59

    move v0, v5

    .line 164
    .local v0, hasLeft:Z
    :goto_2c
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5b

    move v1, v5

    .line 166
    .local v1, hasRight:Z
    :goto_35
    if-eqz v0, :cond_6c

    if-eqz v1, :cond_6c

    .line 167
    iget-object v2, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v3, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iget-object v4, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    invoke-static {v2, v3, v4, v6}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 168
    iget-object v2, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v3, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    iget-object v4, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    invoke-static {v2, v3, v4, v5}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 169
    iget-object v2, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    invoke-static {v2}, Landroid/database/CursorJoiner;->compareStrings([Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_84

    .line 186
    :goto_54
    iput-boolean v5, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    .line 187
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    return-object v2

    .end local v0           #hasLeft:Z
    .end local v1           #hasRight:Z
    :cond_59
    move v0, v6

    .line 163
    goto :goto_2c

    .restart local v0       #hasLeft:Z
    :cond_5b
    move v1, v6

    .line 164
    goto :goto_35

    .line 171
    .restart local v1       #hasRight:Z
    :pswitch_5d
    sget-object v2, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_54

    .line 174
    :pswitch_62
    sget-object v2, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_54

    .line 177
    :pswitch_67
    sget-object v2, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_54

    .line 180
    :cond_6c
    if-eqz v0, :cond_73

    .line 181
    sget-object v2, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_54

    .line 183
    :cond_73
    sget-boolean v2, Landroid/database/CursorJoiner;->$assertionsDisabled:Z

    if-nez v2, :cond_7f

    if-nez v1, :cond_7f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 184
    :cond_7f
    sget-object v2, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_54

    .line 169
    :pswitch_data_84
    .packed-switch -0x1
        :pswitch_5d
        :pswitch_62
        :pswitch_67
    .end packed-switch
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/database/CursorJoiner;->next()Landroid/database/CursorJoiner$Result;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
