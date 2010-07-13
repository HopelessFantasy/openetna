.class public LSQLite/JDBC2y/JDBCPreparedStatement;
.super LSQLite/JDBC2y/JDBCStatement;
.source "JDBCPreparedStatement.java"

# interfaces
.implements Ljava/sql/PreparedStatement;


# static fields
.field private static final nullrepl:Z


# instance fields
.field private args:[Ljava/lang/String;

.field private batch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LSQLite/JDBC2y/BatchArg;",
            ">;"
        }
    .end annotation
.end field

.field private blobs:[Z

.field private sql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    invoke-static {}, LSQLite/Database;->version()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.5.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, LSQLite/JDBC2y/JDBCPreparedStatement;->nullrepl:Z

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>(LSQLite/JDBC2y/JDBCConnection;Ljava/lang/String;)V
    .registers 4
    .parameter "conn"
    .parameter "sql"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 33
    iput-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    .line 34
    iput-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    .line 35
    iput-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->batch:Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0, p2}, LSQLite/JDBC2y/JDBCPreparedStatement;->fixup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->sql:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private fixup(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "sql"

    .prologue
    const/16 v8, 0x27

    .line 40
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 42
    .local v2, inq:Z
    const/4 v4, 0x0

    .line 43
    .local v4, nparm:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_5d

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 45
    .local v0, c:C
    if-ne v0, v8, :cond_3e

    .line 46
    if-eqz v2, :cond_39

    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, nextChar:C
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_27

    .line 49
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 51
    :cond_27
    if-ne v3, v8, :cond_34

    .line 52
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 43
    .end local v3           #nextChar:C
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 56
    .restart local v3       #nextChar:C
    :cond_34
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 60
    .end local v3           #nextChar:C
    :cond_39
    const/4 v2, 0x1

    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 63
    :cond_3e
    const/16 v6, 0x3f

    if-ne v0, v6, :cond_57

    .line 64
    if-eqz v2, :cond_48

    .line 65
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 67
    :cond_48
    add-int/lit8 v4, v4, 0x1

    .line 68
    sget-boolean v6, LSQLite/JDBC2y/JDBCPreparedStatement;->nullrepl:Z

    if-eqz v6, :cond_54

    const-string v6, "\'%q\'"

    :goto_50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_31

    :cond_54
    const-string v6, "%Q"

    goto :goto_50

    .line 70
    :cond_57
    const/16 v6, 0x3b

    if-ne v0, v6, :cond_71

    .line 71
    if-nez v2, :cond_6d

    .line 81
    .end local v0           #c:C
    :cond_5d
    new-array v6, v4, [Ljava/lang/String;

    iput-object v6, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    .line 82
    new-array v6, v4, [Z

    iput-object v6, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    .line 84
    :try_start_65
    invoke-virtual {p0}, LSQLite/JDBC2y/JDBCPreparedStatement;->clearParameters()V
    :try_end_68
    .catch Ljava/sql/SQLException; {:try_start_65 .. :try_end_68} :catch_7f

    .line 87
    :goto_68
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 74
    .restart local v0       #c:C
    :cond_6d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 75
    :cond_71
    const/16 v6, 0x25

    if-ne v0, v6, :cond_7b

    .line 76
    const-string v6, "%%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 78
    :cond_7b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 85
    .end local v0           #c:C
    :catch_7f
    move-exception v6

    goto :goto_68
.end method

.method private fixup2(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "sql"

    .prologue
    .line 91
    iget-object v4, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v4, v4, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v4}, LSQLite/JDBC2y/DatabaseX;->is3()Z

    move-result v4

    if-nez v4, :cond_c

    move-object v4, p1

    .line 111
    :goto_b
    return-object v4

    .line 94
    :cond_c
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .line 96
    .local v2, parm:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3e

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 98
    .local v0, c:C
    const/16 v4, 0x25

    if-ne v0, v4, :cond_38

    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    add-int/lit8 v1, v1, 0x1

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 102
    const/16 v4, 0x51

    if-ne v0, v4, :cond_38

    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    iget-object v4, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_38

    .line 105
    const/16 v0, 0x73

    .line 109
    :cond_38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 111
    .end local v0           #c:C
    :cond_3e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b
.end method


# virtual methods
.method public addBatch()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v1, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->batch:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 369
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->batch:Ljava/util/ArrayList;

    .line 371
    :cond_e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    iget-object v1, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 372
    iget-object v1, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->batch:Ljava/util/ArrayList;

    new-instance v2, LSQLite/JDBC2y/BatchArg;

    iget-object v3, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    aget-boolean v4, v4, v0

    invoke-direct {v2, v3, v4}, LSQLite/JDBC2y/BatchArg;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 374
    :cond_29
    return-void
.end method

.method public clearBatch()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->batch:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 407
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->batch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->batch:Ljava/util/ArrayList;

    .line 410
    :cond_c
    return-void
.end method

.method public clearParameters()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 287
    iget-object v1, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sget-boolean v2, LSQLite/JDBC2y/JDBCPreparedStatement;->nullrepl:Z

    if-eqz v2, :cond_18

    const-string v2, ""

    :goto_e
    aput-object v2, v1, v0

    .line 288
    iget-object v1, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 287
    :cond_18
    const/4 v2, 0x0

    goto :goto_e

    .line 290
    :cond_1a
    return-void
.end method

.method public execute()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->sql:Ljava/lang/String;

    invoke-direct {p0, v0}, LSQLite/JDBC2y/JDBCPreparedStatement;->fixup2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, LSQLite/JDBC2y/JDBCPreparedStatement;->executeQuery(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    move v0, v2

    goto :goto_10
.end method

.method public executeBatch()[I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v8, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->batch:Ljava/util/ArrayList;

    if-nez v8, :cond_8

    .line 378
    const/4 v8, 0x0

    new-array v8, v8, [I

    .line 402
    :goto_7
    return-object v8

    .line 380
    :cond_8
    iget-object v8, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->batch:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v9, v9

    div-int/2addr v8, v9

    new-array v7, v8, [I

    .line 381
    .local v7, ret:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_15
    array-length v8, v7

    if-ge v3, v8, :cond_1e

    .line 382
    const/4 v8, -0x3

    aput v8, v7, v3

    .line 381
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 384
    :cond_1e
    const/4 v2, 0x0

    .line 385
    .local v2, errs:I
    const/4 v4, 0x0

    .line 386
    .local v4, index:I
    const/4 v3, 0x0

    :goto_21
    array-length v8, v7

    if-ge v3, v8, :cond_52

    .line 387
    const/4 v6, 0x0

    .local v6, k:I
    :goto_25
    iget-object v8, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v8, v8

    if-ge v6, v8, :cond_44

    .line 388
    iget-object v8, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->batch:Ljava/util/ArrayList;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSQLite/JDBC2y/BatchArg;

    .line 390
    .local v0, b:LSQLite/JDBC2y/BatchArg;
    iget-object v8, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    iget-object v9, v0, LSQLite/JDBC2y/BatchArg;->arg:Ljava/lang/String;

    aput-object v9, v8, v3

    .line 391
    iget-object v8, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    iget-boolean v9, v0, LSQLite/JDBC2y/BatchArg;->blob:Z

    aput-boolean v9, v8, v3

    .line 387
    add-int/lit8 v6, v6, 0x1

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_25

    .line 394
    .end local v0           #b:LSQLite/JDBC2y/BatchArg;
    :cond_44
    :try_start_44
    invoke-virtual {p0}, LSQLite/JDBC2y/JDBCPreparedStatement;->executeUpdate()I

    move-result v8

    aput v8, v7, v3
    :try_end_4a
    .catch Ljava/sql/SQLException; {:try_start_44 .. :try_end_4a} :catch_4d

    .line 386
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 395
    :catch_4d
    move-exception v8

    move-object v1, v8

    .line 396
    .local v1, e:Ljava/sql/SQLException;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 399
    .end local v1           #e:Ljava/sql/SQLException;
    .end local v6           #k:I
    :cond_52
    if-lez v2, :cond_5c

    .line 400
    new-instance v8, Ljava/sql/BatchUpdateException;

    const-string v9, "batch failed"

    invoke-direct {v8, v9, v7}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;[I)V

    throw v8

    :cond_5c
    move-object v8, v7

    .line 402
    goto :goto_7
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->sql:Ljava/lang/String;

    invoke-direct {p0, v0}, LSQLite/JDBC2y/JDBCPreparedStatement;->fixup2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, LSQLite/JDBC2y/JDBCPreparedStatement;->executeQuery(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public executeUpdate()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->sql:Ljava/lang/String;

    invoke-direct {p0, v0}, LSQLite/JDBC2y/JDBCPreparedStatement;->fixup2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, LSQLite/JDBC2y/JDBCPreparedStatement;->executeQuery(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/sql/ResultSet;

    .line 120
    iget v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->updcnt:I

    return v0
.end method

.method public getArray(I)Ljava/sql/Array;
    .registers 4
    .parameter "parameterIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 715
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 711
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 673
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .registers 4
    .parameter "parameterIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 699
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 695
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 620
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 624
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 648
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClob(I)Ljava/sql/Clob;
    .registers 4
    .parameter "parameterIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 707
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 703
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .registers 5
    .parameter "parameterIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 725
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 652
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .registers 5
    .parameter "parameterName"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 720
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 644
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 640
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 632
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 636
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->rs:LSQLite/JDBC2y/JDBCResultSet;

    invoke-virtual {v0}, LSQLite/JDBC2y/JDBCResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .registers 4
    .parameter "parameterIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 669
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .registers 5
    .parameter "parameterIndex"
    .parameter "map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 683
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 665
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 5
    .parameter "parameterName"
    .parameter "map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 678
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRef(I)Ljava/sql/Ref;
    .registers 4
    .parameter "parameterIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 687
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 691
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShort(Ljava/lang/String;)S
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 628
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 616
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .registers 5
    .parameter "parameterIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 735
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 656
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .registers 5
    .parameter "parameterName"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 730
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .registers 5
    .parameter "parameterIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 745
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 661
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .registers 5
    .parameter "parameterName"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 740
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getURL(I)Ljava/net/URL;
    .registers 4
    .parameter "parameterIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .parameter "parameterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 749
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerOutputParameter(Ljava/lang/String;I)V
    .registers 5
    .parameter "parameterName"
    .parameter "sqlType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 464
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerOutputParameter(Ljava/lang/String;II)V
    .registers 6
    .parameter "parameterName"
    .parameter "sqlType"
    .parameter "scale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerOutputParameter(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter "parameterName"
    .parameter "sqlType"
    .parameter "typeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 476
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArray(ILjava/sql/Array;)V
    .registers 5
    .parameter "i"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .registers 6
    .parameter "parameterIndex"
    .parameter "x"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .registers 6
    .parameter "parameterName"
    .parameter "s"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 561
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .registers 9
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v5, ""

    .line 190
    if-lt p1, v4, :cond_a

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_12

    .line 191
    :cond_a
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_12
    if-nez p2, :cond_2b

    .line 194
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v4

    sget-boolean v2, LSQLite/JDBC2y/JDBCPreparedStatement;->nullrepl:Z

    if-eqz v2, :cond_29

    const-string v2, ""

    move-object v2, v5

    :goto_1f
    aput-object v2, v0, v1

    .line 198
    :goto_21
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 199
    return-void

    .line 194
    :cond_29
    const/4 v2, 0x0

    goto :goto_1f

    .line 196
    :cond_2b
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_21
.end method

.method public setBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .registers 5
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 530
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .registers 6
    .parameter "parameterIndex"
    .parameter "x"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .registers 6
    .parameter "parameterName"
    .parameter "s"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 567
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .registers 5
    .parameter "i"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBoolean(IZ)V
    .registers 7
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 133
    if-lt p1, v3, :cond_8

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_10

    .line 134
    :cond_8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_10
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v3

    if-eqz p2, :cond_22

    const-string v2, "1"

    :goto_18
    aput-object v2, v0, v1

    .line 137
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 138
    return-void

    .line 136
    :cond_22
    const-string v2, "0"

    goto :goto_18
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .registers 5
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setByte(IB)V
    .registers 8
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 141
    if-lt p1, v4, :cond_8

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_10

    .line 142
    :cond_8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_10
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 145
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 146
    return-void
.end method

.method public setByte(Ljava/lang/String;B)V
    .registers 5
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 500
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBytes(I[B)V
    .registers 7
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 214
    if-lt p1, v3, :cond_8

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_10

    .line 215
    :cond_8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_10
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 218
    if-nez p2, :cond_28

    .line 219
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v3

    sget-boolean v2, LSQLite/JDBC2y/JDBCPreparedStatement;->nullrepl:Z

    if-eqz v2, :cond_26

    const-string v2, ""

    :goto_23
    aput-object v2, v0, v1

    .line 228
    :goto_25
    return-void

    .line 219
    :cond_26
    const/4 v2, 0x0

    goto :goto_23

    .line 221
    :cond_28
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v0}, LSQLite/JDBC2y/DatabaseX;->is3()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 222
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v3

    invoke-static {p2}, LSQLite/StringEncoder;->encodeX([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 223
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v3

    aput-boolean v3, v0, v1

    goto :goto_25

    .line 225
    :cond_43
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v3

    invoke-static {p2}, LSQLite/StringEncoder;->encode([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_25
.end method

.method public setBytes(Ljava/lang/String;[B)V
    .registers 5
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 540
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .registers 6
    .parameter "parameterIndex"
    .parameter "reader"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 415
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .registers 6
    .parameter "parameterName"
    .parameter "r"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 589
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClob(ILjava/sql/Clob;)V
    .registers 5
    .parameter "i"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDate(ILjava/sql/Date;)V
    .registers 7
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 232
    if-lt p1, v3, :cond_8

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_10

    .line 233
    :cond_8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_10
    if-nez p2, :cond_28

    .line 236
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v3

    sget-boolean v2, LSQLite/JDBC2y/JDBCPreparedStatement;->nullrepl:Z

    if-eqz v2, :cond_26

    const-string v2, ""

    :goto_1c
    aput-object v2, v0, v1

    .line 240
    :goto_1e
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 241
    return-void

    .line 236
    :cond_26
    const/4 v2, 0x0

    goto :goto_1c

    .line 238
    :cond_28
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v3

    invoke-virtual {p2}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1e
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .registers 4
    .parameter "parameterIndex"
    .parameter "x"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p0, p1, p2}, LSQLite/JDBC2y/JDBCPreparedStatement;->setDate(ILjava/sql/Date;)V

    .line 441
    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;)V
    .registers 5
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 545
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;Ljava/util/Calendar;)V
    .registers 6
    .parameter "parameterName"
    .parameter "val"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 595
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDouble(ID)V
    .registers 9
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 181
    if-lt p1, v4, :cond_8

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_10

    .line 182
    :cond_8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_10
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 185
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 186
    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .registers 6
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 525
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFloat(IF)V
    .registers 8
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 173
    if-lt p1, v4, :cond_8

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_10

    .line 174
    :cond_8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_10
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 177
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 178
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .registers 5
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInt(II)V
    .registers 8
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 157
    if-lt p1, v4, :cond_8

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_10

    .line 158
    :cond_8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_10
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 161
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 162
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .registers 5
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 510
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLong(IJ)V
    .registers 9
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 165
    if-lt p1, v4, :cond_8

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_10

    .line 166
    :cond_8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_10
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 169
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 170
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .registers 6
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 515
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNull(II)V
    .registers 7
    .parameter "parameterIndex"
    .parameter "sqlType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 124
    if-lt p1, v3, :cond_8

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_10

    .line 125
    :cond_8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_10
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v3

    sget-boolean v2, LSQLite/JDBC2y/JDBCPreparedStatement;->nullrepl:Z

    if-eqz v2, :cond_24

    const-string v2, ""

    :goto_1a
    aput-object v2, v0, v1

    .line 128
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 129
    return-void

    .line 127
    :cond_24
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public setNull(IILjava/lang/String;)V
    .registers 4
    .parameter "parameterIndex"
    .parameter "sqlType"
    .parameter "typeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0, p1, p2}, LSQLite/JDBC2y/JDBCPreparedStatement;->setNull(II)V

    .line 456
    return-void
.end method

.method public setNull(Ljava/lang/String;I)V
    .registers 5
    .parameter "parameterName"
    .parameter "sqlType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 490
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNull(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter "parameterName"
    .parameter "sqlType"
    .parameter "typeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 612
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setObject(ILjava/lang/Object;)V
    .registers 9
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 341
    if-lt p1, v5, :cond_8

    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v2, v2

    if-le p1, v2, :cond_10

    .line 342
    :cond_8
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "bad parameter index"

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 344
    :cond_10
    if-nez p2, :cond_28

    .line 345
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v3, p1, v5

    sget-boolean v4, LSQLite/JDBC2y/JDBCPreparedStatement;->nullrepl:Z

    if-eqz v4, :cond_26

    const-string v4, ""

    :goto_1c
    aput-object v4, v2, v3

    .line 360
    .end local p2
    :goto_1e
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v3, p1, v5

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 361
    :goto_25
    return-void

    .line 345
    .restart local p2
    :cond_26
    const/4 v4, 0x0

    goto :goto_1c

    .line 347
    :cond_28
    instance-of v2, p2, [B

    if-eqz v2, :cond_58

    .line 348
    check-cast p2, [B

    .end local p2
    move-object v0, p2

    check-cast v0, [B

    move-object v1, v0

    .line 349
    .local v1, bx:[B
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v2, v2, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v2}, LSQLite/JDBC2y/DatabaseX;->is3()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 350
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v3, p1, v5

    invoke-static {v1}, LSQLite/StringEncoder;->encodeX([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 352
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v3, p1, v5

    aput-boolean v5, v2, v3

    goto :goto_25

    .line 355
    :cond_4d
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v3, p1, v5

    invoke-static {v1}, LSQLite/StringEncoder;->encode([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1e

    .line 357
    .end local v1           #bx:[B
    .restart local p2
    :cond_58
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v3, p1, v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1e
.end method

.method public setObject(ILjava/lang/Object;I)V
    .registers 10
    .parameter "parameterIndex"
    .parameter "x"
    .parameter "targetSqlType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 318
    if-lt p1, v5, :cond_8

    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v2, v2

    if-le p1, v2, :cond_10

    .line 319
    :cond_8
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "bad parameter index"

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_10
    if-nez p2, :cond_28

    .line 322
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v3, p1, v5

    sget-boolean v4, LSQLite/JDBC2y/JDBCPreparedStatement;->nullrepl:Z

    if-eqz v4, :cond_26

    const-string v4, ""

    :goto_1c
    aput-object v4, v2, v3

    .line 337
    .end local p2
    :goto_1e
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v3, p1, v5

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 338
    :goto_25
    return-void

    .line 322
    .restart local p2
    :cond_26
    const/4 v4, 0x0

    goto :goto_1c

    .line 324
    :cond_28
    instance-of v2, p2, [B

    if-eqz v2, :cond_58

    .line 325
    check-cast p2, [B

    .end local p2
    move-object v0, p2

    check-cast v0, [B

    move-object v1, v0

    .line 326
    .local v1, bx:[B
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v2, v2, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v2}, LSQLite/JDBC2y/DatabaseX;->is3()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 327
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v3, p1, v5

    invoke-static {v1}, LSQLite/StringEncoder;->encodeX([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 329
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v3, p1, v5

    aput-boolean v5, v2, v3

    goto :goto_25

    .line 332
    :cond_4d
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v3, p1, v5

    invoke-static {v1}, LSQLite/StringEncoder;->encode([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1e

    .line 334
    .end local v1           #bx:[B
    .restart local p2
    :cond_58
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v3, p1, v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1e
.end method

.method public setObject(ILjava/lang/Object;II)V
    .registers 11
    .parameter "parameterIndex"
    .parameter "x"
    .parameter "targetSqlType"
    .parameter "scale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 294
    if-lt p1, v5, :cond_8

    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v2, v2

    if-le p1, v2, :cond_10

    .line 295
    :cond_8
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "bad parameter index"

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_10
    if-nez p2, :cond_28

    .line 298
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v3, p1, v5

    sget-boolean v4, LSQLite/JDBC2y/JDBCPreparedStatement;->nullrepl:Z

    if-eqz v4, :cond_26

    const-string v4, ""

    :goto_1c
    aput-object v4, v2, v3

    .line 313
    .end local p2
    :goto_1e
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v3, p1, v5

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 314
    :goto_25
    return-void

    .line 298
    .restart local p2
    :cond_26
    const/4 v4, 0x0

    goto :goto_1c

    .line 300
    :cond_28
    instance-of v2, p2, [B

    if-eqz v2, :cond_58

    .line 301
    check-cast p2, [B

    .end local p2
    move-object v0, p2

    check-cast v0, [B

    move-object v1, v0

    .line 302
    .local v1, bx:[B
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v2, v2, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v2}, LSQLite/JDBC2y/DatabaseX;->is3()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 303
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v3, p1, v5

    invoke-static {v1}, LSQLite/StringEncoder;->encodeX([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 305
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v3, p1, v5

    aput-boolean v5, v2, v3

    goto :goto_25

    .line 308
    :cond_4d
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v3, p1, v5

    invoke-static {v1}, LSQLite/StringEncoder;->encode([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1e

    .line 310
    .end local v1           #bx:[B
    .restart local p2
    :cond_58
    iget-object v2, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v3, p1, v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1e
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 583
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 6
    .parameter "parameterName"
    .parameter "val"
    .parameter "targetSqlType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 578
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;II)V
    .registers 7
    .parameter "parameterName"
    .parameter "val"
    .parameter "targetSqlType"
    .parameter "scale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 573
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRef(ILjava/sql/Ref;)V
    .registers 5
    .parameter "i"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 419
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShort(IS)V
    .registers 8
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 149
    if-lt p1, v4, :cond_8

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_10

    .line 150
    :cond_8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_10
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 153
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 154
    return-void
.end method

.method public setShort(Ljava/lang/String;S)V
    .registers 5
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 505
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setString(ILjava/lang/String;)V
    .registers 7
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 202
    if-lt p1, v3, :cond_8

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_10

    .line 203
    :cond_8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_10
    if-nez p2, :cond_28

    .line 206
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v3

    sget-boolean v2, LSQLite/JDBC2y/JDBCPreparedStatement;->nullrepl:Z

    if-eqz v2, :cond_26

    const-string v2, ""

    :goto_1c
    aput-object v2, v0, v1

    .line 210
    :goto_1e
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 211
    return-void

    .line 206
    :cond_26
    const/4 v2, 0x0

    goto :goto_1c

    .line 208
    :cond_28
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v3

    aput-object p2, v0, v1

    goto :goto_1e
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 535
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTime(ILjava/sql/Time;)V
    .registers 7
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 245
    if-lt p1, v3, :cond_8

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_10

    .line 246
    :cond_8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_10
    if-nez p2, :cond_28

    .line 249
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v3

    sget-boolean v2, LSQLite/JDBC2y/JDBCPreparedStatement;->nullrepl:Z

    if-eqz v2, :cond_26

    const-string v2, ""

    :goto_1c
    aput-object v2, v0, v1

    .line 253
    :goto_1e
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 254
    return-void

    .line 249
    :cond_26
    const/4 v2, 0x0

    goto :goto_1c

    .line 251
    :cond_28
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v3

    invoke-virtual {p2}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1e
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .registers 4
    .parameter "parameterIndex"
    .parameter "x"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2}, LSQLite/JDBC2y/JDBCPreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 446
    return-void
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;)V
    .registers 5
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 550
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;Ljava/util/Calendar;)V
    .registers 6
    .parameter "parameterName"
    .parameter "val"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 601
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .registers 7
    .parameter "parameterIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 258
    if-lt p1, v3, :cond_8

    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_10

    .line 259
    :cond_8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad parameter index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_10
    if-nez p2, :cond_28

    .line 262
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v3

    sget-boolean v2, LSQLite/JDBC2y/JDBCPreparedStatement;->nullrepl:Z

    if-eqz v2, :cond_26

    const-string v2, ""

    :goto_1c
    aput-object v2, v0, v1

    .line 266
    :goto_1e
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->blobs:[Z

    sub-int v1, p1, v3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 267
    return-void

    .line 262
    :cond_26
    const/4 v2, 0x0

    goto :goto_1c

    .line 264
    :cond_28
    iget-object v0, p0, LSQLite/JDBC2y/JDBCPreparedStatement;->args:[Ljava/lang/String;

    sub-int v1, p1, v3

    invoke-virtual {p2}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1e
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .registers 4
    .parameter "parameterIndex"
    .parameter "x"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0, p1, p2}, LSQLite/JDBC2y/JDBCPreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    .line 451
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .registers 5
    .parameter "parameterName"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 555
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/util/Calendar;)V
    .registers 6
    .parameter "parameterName"
    .parameter "val"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 607
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setURL(ILjava/net/URL;)V
    .registers 5
    .parameter "parameterIndex"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 485
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .registers 6
    .parameter "parameterIndex"
    .parameter "x"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
