.class public Landroid/database/sqlite/SQLiteDirectCursorDriver;
.super Ljava/lang/Object;
.source "SQLiteDirectCursorDriver.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteCursorDriver;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEditTable:Ljava/lang/String;

.field private mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string v0, "SQLiteDirectCursorDriver"

    sput-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "db"
    .parameter "sql"
    .parameter "editTable"

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_37

    .line 41
    sget-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found SQL string that ends in ; -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 44
    :cond_37
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public cursorClosed()V
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;

    .line 76
    return-void
.end method

.method public cursorDeactivated()V
    .registers 1

    .prologue
    .line 87
    return-void
.end method

.method public cursorRequeried(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 91
    return-void
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "factory"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    .line 49
    new-instance v2, Landroid/database/sqlite/SQLiteQuery;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteQuery;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 53
    .local v2, query:Landroid/database/sqlite/SQLiteQuery;
    if-nez p2, :cond_1a

    move v1, v5

    .line 54
    .local v1, numArgs:I
    :goto_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v1, :cond_1d

    .line 55
    add-int/lit8 v3, v0, 0x1

    :try_start_12
    aget-object v4, p2, v0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 53
    .end local v0           #i:I
    .end local v1           #numArgs:I
    :cond_1a
    array-length v3, p2

    move v1, v3

    goto :goto_d

    .line 59
    .restart local v0       #i:I
    .restart local v1       #numArgs:I
    :cond_1d
    if-nez p1, :cond_35

    .line 60
    new-instance v3, Landroid/database/sqlite/SQLiteCursor;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-direct {v3, v4, p0, v5, v2}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    iput-object v3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;

    .line 65
    :goto_2a
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    .line 66
    const/4 v2, 0x0

    .line 67
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_40

    .line 70
    if-eqz v2, :cond_34

    #Replaced unresolvable odex instruction with a throw
    throw v2
    #invoke-virtual-quick {v2}, vtable@0x16

    .line 67
    :cond_34
    return-object v3

    .line 62
    :cond_35
    :try_start_35
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-interface {p1, v3, p0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase$CursorFactory;->newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_40

    goto :goto_2a

    .line 70
    .end local v0           #i:I
    .end local v1           #numArgs:I
    :catchall_40
    move-exception v3

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteQuery;->close()V

    :cond_46
    throw v3
.end method

.method public setBindArguments([Ljava/lang/String;)V
    .registers 7
    .parameter "bindArgs"

    .prologue
    .line 79
    array-length v1, p1

    .line 80
    .local v1, numArgs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_10

    .line 81
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    add-int/lit8 v3, v0, 0x1

    aget-object v4, p1, v0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 83
    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteDirectCursorDriver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
