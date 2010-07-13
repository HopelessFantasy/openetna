.class public LSQLite/JDBC2y/JDBCResultSet;
.super Ljava/lang/Object;
.source "JDBCResultSet.java"

# interfaces
.implements Ljava/sql/ResultSet;


# instance fields
.field private lastg:Ljava/lang/String;

.field private m:LSQLite/JDBC2y/JDBCResultSetMetaData;

.field private row:I

.field private s:LSQLite/JDBC2y/JDBCStatement;

.field protected tr:LSQLite/TableResult;


# direct methods
.method public constructor <init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V
    .registers 4
    .parameter "tr"
    .parameter "s"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    .line 36
    iput-object p2, p0, LSQLite/JDBC2y/JDBCResultSet;->s:LSQLite/JDBC2y/JDBCStatement;

    .line 37
    iput-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->m:LSQLite/JDBC2y/JDBCResultSetMetaData;

    .line 38
    iput-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    .line 40
    return-void
.end method

.method private internalGetDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .registers 10
    .parameter "columnIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 280
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_e

    if-lt p1, v5, :cond_e

    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2d

    .line 281
    :cond_e
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 283
    :cond_2d
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 284
    .local v2, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v2, v3

    iput-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 286
    :try_start_43
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-object v3

    .line 290
    :goto_49
    return-object v3

    .line 287
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 288
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v3, v6

    .line 290
    goto :goto_49
.end method

.method private internalGetDouble(I)Ljava/lang/Double;
    .registers 9
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 318
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_e

    if-lt p1, v5, :cond_e

    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2d

    .line 319
    :cond_e
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 321
    :cond_2d
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 322
    .local v2, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v2, v3

    iput-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 324
    :try_start_43
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-object v3

    .line 328
    :goto_49
    return-object v3

    .line 325
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 326
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v3, v6

    .line 328
    goto :goto_49
.end method

.method private internalGetFloat(I)Ljava/lang/Float;
    .registers 9
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 345
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_e

    if-lt p1, v5, :cond_e

    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2d

    .line 346
    :cond_e
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 348
    :cond_2d
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 349
    .local v2, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v2, v3

    iput-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 351
    :try_start_43
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-object v3

    .line 355
    :goto_49
    return-object v3

    .line 352
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 353
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v3, v6

    .line 355
    goto :goto_49
.end method

.method private internalGetInt(I)Ljava/lang/Integer;
    .registers 9
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 137
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_e

    if-lt p1, v5, :cond_e

    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2d

    .line 138
    :cond_e
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_2d
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 141
    .local v2, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v2, v3

    iput-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 143
    :try_start_43
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-object v3

    .line 147
    :goto_49
    return-object v3

    .line 144
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 145
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v3, v6

    .line 147
    goto :goto_49
.end method

.method private internalGetLong(I)Ljava/lang/Long;
    .registers 9
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 372
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_e

    if-lt p1, v5, :cond_e

    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2d

    .line 373
    :cond_e
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 375
    :cond_2d
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 376
    .local v2, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v2, v3

    iput-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 378
    :try_start_43
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-object v3

    .line 382
    :goto_49
    return-object v3

    .line 379
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 380
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v3, v6

    .line 382
    goto :goto_49
.end method

.method private internalGetShort(I)Ljava/lang/Short;
    .registers 9
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 179
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_e

    if-lt p1, v5, :cond_e

    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2d

    .line 180
    :cond_e
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 182
    :cond_2d
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 183
    .local v2, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v2, v3

    iput-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 185
    :try_start_43
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-object v3

    .line 189
    :goto_49
    return-object v3

    .line 186
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 187
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v3, v6

    .line 189
    goto :goto_49
.end method

.method private internalGetTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .registers 10
    .parameter "columnIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 204
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_e

    if-lt p1, v5, :cond_e

    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2d

    .line 205
    :cond_e
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    :cond_2d
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 208
    .local v2, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v2, v3

    iput-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 210
    :try_start_43
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-object v3

    .line 214
    :goto_49
    return-object v3

    .line 211
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 212
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v3, v6

    .line 214
    goto :goto_49
.end method

.method private internalGetTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .registers 10
    .parameter "columnIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 241
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_e

    if-lt p1, v5, :cond_e

    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2d

    .line 242
    :cond_e
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_2d
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 245
    .local v2, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v2, v3

    iput-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 247
    :try_start_43
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-object v3

    .line 251
    :goto_49
    return-object v3

    .line 248
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 249
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v3, v6

    .line 251
    goto :goto_49
.end method


# virtual methods
.method public absolute(I)Z
    .registers 4
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_7

    move v0, v1

    .line 84
    :goto_6
    return v0

    .line 76
    :cond_7
    if-gez p1, :cond_10

    .line 77
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    .line 79
    :cond_10
    add-int/lit8 p1, p1, -0x1

    .line 80
    if-ltz p1, :cond_1a

    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    if-le p1, v0, :cond_1c

    :cond_1a
    move v0, v1

    .line 81
    goto :goto_6

    .line 83
    :cond_1c
    iput p1, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    .line 84
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public afterLast()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_5

    .line 621
    :goto_4
    return-void

    .line 620
    :cond_5
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    iput v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    goto :goto_4
.end method

.method public beforeFirst()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_5

    .line 599
    :goto_4
    return-void

    .line 598
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    goto :goto_4
.end method

.method public cancelRowUpdates()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 675
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearWarnings()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 577
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 864
    iput-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->s:LSQLite/JDBC2y/JDBCStatement;

    .line 865
    iput-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    .line 866
    iput-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 867
    const/4 v0, -0x1

    iput v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    .line 868
    return-void
.end method

.method public deleteRow()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 667
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findColumn(Ljava/lang/String;)I
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, LSQLite/JDBC2y/JDBCResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    check-cast v0, LSQLite/JDBC2y/JDBCResultSetMetaData;

    .line 52
    .local v0, m:LSQLite/JDBC2y/JDBCResultSetMetaData;
    invoke-virtual {v0, p1}, LSQLite/JDBC2y/JDBCResultSetMetaData;->findColByName(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public first()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 602
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_b

    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    if-gtz v0, :cond_d

    :cond_b
    move v0, v1

    .line 606
    :goto_c
    return v0

    .line 605
    :cond_d
    iput v1, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    .line 606
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public getArray(I)Ljava/sql/Array;
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 551
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .registers 4
    .parameter "columnIndex"
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

.method public getAsciiStream(I)Ljava/io/InputStream;
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 409
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsciiStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 404
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 424
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .registers 5
    .parameter "columnIndex"
    .parameter "scale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 430
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 414
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBigDecimal(Ljava/lang/String;I)Ljava/math/BigDecimal;
    .registers 5
    .parameter "columnName"
    .parameter "scale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 420
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 435
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBinaryStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 440
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .registers 4
    .parameter "columnIndex"
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

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 539
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(I)Z
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByte(I)B
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 448
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytes(I)[B
    .registers 8
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 452
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_d

    if-lt p1, v5, :cond_d

    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2c

    .line 453
    :cond_d
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 455
    :cond_2c
    const/4 v2, 0x0

    .line 456
    .local v2, ret:[B
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 457
    .local v1, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v1, v3

    iput-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 458
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    if-eqz v3, :cond_4d

    .line 459
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, LSQLite/StringEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 461
    :cond_4d
    return-object v2
.end method

.method public getBytes(Ljava/lang/String;)[B
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 466
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2y/JDBCResultSet;->getBytes(I)[B

    move-result-object v1

    return-object v1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 560
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 565
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClob(I)Ljava/sql/Clob;
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 543
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 547
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConcurrency()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 643
    const/16 v0, 0x3ef

    return v0
.end method

.method public getCursorName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .registers 3
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LSQLite/JDBC2y/JDBCResultSet;->internalGetDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .registers 4
    .parameter "columnIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, LSQLite/JDBC2y/JDBCResultSet;->internalGetDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 295
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2y/JDBCResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object v1

    return-object v1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .registers 5
    .parameter "columnName"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2y/JDBCResultSet;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v1

    return-object v1
.end method

.method public getDouble(I)D
    .registers 5
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->internalGetDouble(I)Ljava/lang/Double;

    move-result-object v0

    .line 311
    .local v0, d:Ljava/lang/Double;
    if-eqz v0, :cond_b

    .line 312
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 314
    :goto_a
    return-wide v1

    :cond_b
    const-wide/16 v1, 0x0

    goto :goto_a
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 5
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 333
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2y/JDBCResultSet;->getDouble(I)D

    move-result-wide v1

    return-wide v1
.end method

.method public getFetchDirection()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFetchSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloat(I)F
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->internalGetFloat(I)Ljava/lang/Float;

    move-result-object v0

    .line 338
    .local v0, f:Ljava/lang/Float;
    if-eqz v0, :cond_b

    .line 339
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 341
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 360
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2y/JDBCResultSet;->getFloat(I)F

    move-result v1

    return v1
.end method

.method public getInt(I)I
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->internalGetInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 130
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_b

    .line 131
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 133
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2y/JDBCResultSet;->getInt(I)I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .registers 5
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->internalGetLong(I)Ljava/lang/Long;

    move-result-object v0

    .line 365
    .local v0, l:Ljava/lang/Long;
    if-eqz v0, :cond_b

    .line 366
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 368
    :goto_a
    return-wide v1

    :cond_b
    const-wide/16 v1, 0x0

    goto :goto_a
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 5
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 387
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2y/JDBCResultSet;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->m:LSQLite/JDBC2y/JDBCResultSetMetaData;

    if-nez v0, :cond_b

    .line 165
    new-instance v0, LSQLite/JDBC2y/JDBCResultSetMetaData;

    invoke-direct {v0, p0}, LSQLite/JDBC2y/JDBCResultSetMetaData;-><init>(LSQLite/JDBC2y/JDBCResultSet;)V

    iput-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->m:LSQLite/JDBC2y/JDBCResultSetMetaData;

    .line 167
    :cond_b
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->m:LSQLite/JDBC2y/JDBCResultSetMetaData;

    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .registers 8
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 474
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_d

    if-lt p1, v5, :cond_d

    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2c

    .line 475
    :cond_d
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 477
    :cond_2c
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 478
    .local v1, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v1, v3

    iput-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 479
    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 480
    .local v2, ret:Ljava/lang/String;
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    instance-of v3, v3, LSQLite/JDBC2y/TableResultX;

    if-eqz v3, :cond_57

    .line 481
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    check-cast v3, LSQLite/JDBC2y/TableResultX;

    iget-object v3, v3, LSQLite/JDBC2y/TableResultX;->sql_type:[I

    sub-int v4, p1, v5

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_78

    .line 508
    .end local v2           #ret:Ljava/lang/String;
    :cond_57
    :goto_57
    :pswitch_57
    return-object v2

    .line 483
    .restart local v2       #ret:Ljava/lang/String;
    :pswitch_58
    invoke-direct {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->internalGetShort(I)Ljava/lang/Short;

    move-result-object v2

    .line 484
    .local v2, ret:Ljava/lang/Short;
    goto :goto_57

    .line 486
    .local v2, ret:Ljava/lang/String;
    :pswitch_5d
    invoke-direct {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->internalGetInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 487
    .local v2, ret:Ljava/lang/Integer;
    goto :goto_57

    .line 489
    .local v2, ret:Ljava/lang/String;
    :pswitch_62
    invoke-direct {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->internalGetDouble(I)Ljava/lang/Double;

    move-result-object v2

    .line 490
    .local v2, ret:Ljava/lang/Double;
    goto :goto_57

    .line 492
    .local v2, ret:Ljava/lang/String;
    :pswitch_67
    invoke-direct {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->internalGetFloat(I)Ljava/lang/Float;

    move-result-object v2

    .line 493
    .local v2, ret:Ljava/lang/Float;
    goto :goto_57

    .line 495
    .local v2, ret:Ljava/lang/String;
    :pswitch_6c
    invoke-direct {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->internalGetLong(I)Ljava/lang/Long;

    move-result-object v2

    .line 496
    .local v2, ret:Ljava/lang/Long;
    goto :goto_57

    .line 500
    .local v2, ret:Ljava/lang/String;
    :pswitch_71
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->getBytes(I)[B

    move-result-object v2

    .line 501
    .local v2, ret:[B
    goto :goto_57

    .line 503
    .local v2, ret:Ljava/lang/String;
    :pswitch_76
    const/4 v2, 0x0

    .local v2, ret:Ljava/lang/Object;
    goto :goto_57

    .line 481
    :pswitch_data_78
    .packed-switch -0x5
        :pswitch_6c
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_57
        :pswitch_76
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_5d
        :pswitch_58
        :pswitch_67
        :pswitch_57
        :pswitch_62
    .end packed-switch
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .registers 5
    .parameter "columnIndex"
    .parameter "map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 518
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 513
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2y/JDBCResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 5
    .parameter "columnIndex"
    .parameter "map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRef(I)Ljava/sql/Ref;
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 527
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRow()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_c

    .line 57
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "no rows"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_c
    iget v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getShort(I)S
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->internalGetShort(I)Ljava/lang/Short;

    move-result-object v0

    .line 172
    .local v0, s:Ljava/lang/Short;
    if-eqz v0, :cond_b

    .line 173
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 175
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getShort(Ljava/lang/String;)S
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2y/JDBCResultSet;->getShort(I)S

    move-result v1

    return v1
.end method

.method public getStatement()Ljava/sql/Statement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 857
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->s:LSQLite/JDBC2y/JDBCStatement;

    if-nez v0, :cond_c

    .line 858
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "stale result set"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_c
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->s:LSQLite/JDBC2y/JDBCStatement;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 7
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 115
    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v2, :cond_d

    if-lt p1, v4, :cond_d

    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v2, v2, LSQLite/TableResult;->ncolumns:I

    if-le p1, v2, :cond_2c

    .line 116
    :cond_d
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_2c
    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v2, v2, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v3, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 119
    .local v1, rd:[Ljava/lang/String;
    sub-int v2, p1, v4

    aget-object v2, v1, v2

    iput-object v2, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 120
    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    return-object v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2y/JDBCResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTime(I)Ljava/sql/Time;
    .registers 3
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LSQLite/JDBC2y/JDBCResultSet;->internalGetTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .registers 4
    .parameter "columnIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, LSQLite/JDBC2y/JDBCResultSet;->internalGetTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2y/JDBCResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object v1

    return-object v1
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .registers 5
    .parameter "columnName"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 230
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2y/JDBCResultSet;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object v1

    return-object v1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .registers 3
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LSQLite/JDBC2y/JDBCResultSet;->internalGetTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .registers 4
    .parameter "columnIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, LSQLite/JDBC2y/JDBCResultSet;->internalGetTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 257
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2y/JDBCResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v1

    return-object v1
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .registers 5
    .parameter "columnName"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 270
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2y/JDBCResultSet;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v1

    return-object v1
.end method

.method public getType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 639
    const/16 v0, 0x3ec

    return v0
.end method

.method public getURL(I)Ljava/net/URL;
    .registers 10
    .parameter "colIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 871
    iget-object v5, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v5, :cond_d

    if-lt p1, v7, :cond_d

    iget-object v5, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v5, v5, LSQLite/TableResult;->ncolumns:I

    if-le p1, v5, :cond_2c

    .line 872
    :cond_d
    new-instance v5, Ljava/sql/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 874
    :cond_2c
    iget-object v5, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v5, v5, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v6, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 875
    .local v2, rd:[Ljava/lang/String;
    sub-int v5, p1, v7

    aget-object v5, v2, v5

    iput-object v5, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 876
    const/4 v3, 0x0

    .line 877
    .local v3, url:Ljava/net/URL;
    iget-object v5, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    if-nez v5, :cond_49

    move-object v4, v3

    .line 885
    .end local v3           #url:Ljava/net/URL;
    .local v4, url:Ljava/net/URL;
    :goto_48
    return-object v4

    .line 881
    .end local v4           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :cond_49
    :try_start_49
    new-instance v3, Ljava/net/URL;

    .end local v3           #url:Ljava/net/URL;
    iget-object v5, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_52

    .restart local v3       #url:Ljava/net/URL;
    :goto_50
    move-object v4, v3

    .line 885
    .end local v3           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    goto :goto_48

    .line 882
    .end local v4           #url:Ljava/net/URL;
    :catch_52
    move-exception v5

    move-object v1, v5

    .line 883
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #url:Ljava/net/URL;
    goto :goto_50
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .parameter "colIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 889
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 890
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2y/JDBCResultSet;->getURL(I)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public getUnicodeStream(I)Ljava/io/InputStream;
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 393
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnicodeStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 569
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertRow()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 659
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAfterLast()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 610
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_b

    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    if-gtz v0, :cond_d

    :cond_b
    move v0, v2

    .line 613
    :goto_c
    return v0

    :cond_d
    iget v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    iget-object v1, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v1, v1, LSQLite/TableResult;->nrows:I

    if-lt v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_c

    :cond_17
    move v0, v2

    goto :goto_c
.end method

.method public isBeforeFirst()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 588
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_b

    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    if-gtz v0, :cond_d

    :cond_b
    move v0, v1

    .line 591
    :goto_c
    return v0

    :cond_d
    iget v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    if-gez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_c

    :cond_13
    move v0, v1

    goto :goto_c
.end method

.method public isFirst()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 581
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_7

    move v0, v1

    .line 584
    :goto_6
    return v0

    :cond_7
    iget v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isLast()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 624
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_7

    move v0, v2

    .line 627
    :goto_6
    return v0

    :cond_7
    iget v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    iget-object v1, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v1, v1, LSQLite/TableResult;->nrows:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_12

    move v0, v2

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public last()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 631
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_b

    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    if-gtz v0, :cond_d

    .line 632
    :cond_b
    const/4 v0, 0x0

    .line 635
    :goto_c
    return v0

    .line 634
    :cond_d
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    sub-int/2addr v0, v1

    iput v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    move v0, v1

    .line 635
    goto :goto_c
.end method

.method public moveToCurrentRow()V
    .registers 3
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

.method public moveToInsertRow()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 679
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_7

    move v0, v2

    .line 47
    :goto_6
    return v0

    .line 46
    :cond_7
    iget v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    .line 47
    iget v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    iget-object v1, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v1, v1, LSQLite/TableResult;->nrows:I

    if-ge v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_6

    :cond_17
    move v0, v2

    goto :goto_6
.end method

.method public previous()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_8

    move v0, v1

    .line 69
    :goto_7
    return v0

    .line 66
    :cond_8
    iget v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    if-ltz v0, :cond_11

    .line 67
    iget v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    sub-int/2addr v0, v2

    iput v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    .line 69
    :cond_11
    iget v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    if-ltz v0, :cond_17

    move v0, v2

    goto :goto_7

    :cond_17
    move v0, v1

    goto :goto_7
.end method

.method public refreshRow()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 671
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relative(I)Z
    .registers 5
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_7

    move v0, v2

    .line 95
    :goto_6
    return v0

    .line 91
    :cond_7
    iget v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_15

    iget v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    add-int/2addr v0, p1

    iget-object v1, p0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v1, v1, LSQLite/TableResult;->nrows:I

    if-lt v0, v1, :cond_17

    :cond_15
    move v0, v2

    .line 92
    goto :goto_6

    .line 94
    :cond_17
    iget v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    add-int/2addr v0, p1

    iput v0, p0, LSQLite/JDBC2y/JDBCResultSet;->row:I

    .line 95
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public rowDeleted()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 655
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rowInserted()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 651
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rowUpdated()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 647
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFetchDirection(I)V
    .registers 4
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFetchSize(I)V
    .registers 4
    .parameter "fsize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateArray(ILjava/sql/Array;)V
    .registers 5
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 924
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateArray(Ljava/lang/String;Ljava/sql/Array;)V
    .registers 5
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 929
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAsciiStream(ILjava/io/InputStream;I)V
    .registers 6
    .parameter "colIndex"
    .parameter "in"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 746
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .registers 6
    .parameter "colIndex"
    .parameter "in"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 831
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBigDecimal(ILjava/math/BigDecimal;)V
    .registers 5
    .parameter "colIndex"
    .parameter "f"
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

.method public updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .registers 5
    .parameter "colIndex"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 802
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBinaryStream(ILjava/io/InputStream;I)V
    .registers 6
    .parameter "colIndex"
    .parameter "in"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 751
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .registers 6
    .parameter "colIndex"
    .parameter "in"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 837
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBlob(ILjava/sql/Blob;)V
    .registers 5
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 904
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .registers 5
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 909
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBoolean(IZ)V
    .registers 5
    .parameter "colIndex"
    .parameter "b"
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

.method public updateBoolean(Ljava/lang/String;Z)V
    .registers 5
    .parameter "colIndex"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 773
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateByte(IB)V
    .registers 5
    .parameter "colIndex"
    .parameter "b"
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

.method public updateByte(Ljava/lang/String;B)V
    .registers 5
    .parameter "colIndex"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 777
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBytes(I[B)V
    .registers 5
    .parameter "colIndex"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 728
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateBytes(Ljava/lang/String;[B)V
    .registers 5
    .parameter "colIndex"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 810
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCharacterStream(ILjava/io/Reader;I)V
    .registers 6
    .parameter "colIndex"
    .parameter "in"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 756
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .registers 6
    .parameter "colIndex"
    .parameter "in"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 843
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateClob(ILjava/sql/Clob;)V
    .registers 5
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 914
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .registers 5
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 919
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDate(ILjava/sql/Date;)V
    .registers 5
    .parameter "colIndex"
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 732
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    .registers 5
    .parameter "colIndex"
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 815
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDouble(ID)V
    .registers 6
    .parameter "colIndex"
    .parameter "f"
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

.method public updateDouble(Ljava/lang/String;D)V
    .registers 6
    .parameter "colIndex"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 797
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateFloat(IF)V
    .registers 5
    .parameter "colIndex"
    .parameter "f"
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

.method public updateFloat(Ljava/lang/String;F)V
    .registers 5
    .parameter "colIndex"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 793
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateInt(II)V
    .registers 5
    .parameter "colIndex"
    .parameter "b"
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

.method public updateInt(Ljava/lang/String;I)V
    .registers 5
    .parameter "colIndex"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 785
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateLong(IJ)V
    .registers 6
    .parameter "colIndex"
    .parameter "b"
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

.method public updateLong(Ljava/lang/String;J)V
    .registers 6
    .parameter "colIndex"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 789
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNull(I)V
    .registers 4
    .parameter "colIndex"
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

.method public updateNull(Ljava/lang/String;)V
    .registers 4
    .parameter "colIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 769
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateObject(ILjava/lang/Object;)V
    .registers 5
    .parameter "colIndex"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 760
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateObject(ILjava/lang/Object;I)V
    .registers 6
    .parameter "colIndex"
    .parameter "obj"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 765
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "colIndex"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 848
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 6
    .parameter "colIndex"
    .parameter "obj"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 853
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateRef(ILjava/sql/Ref;)V
    .registers 5
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 894
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateRef(Ljava/lang/String;Ljava/sql/Ref;)V
    .registers 5
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 899
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateRow()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 663
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateShort(IS)V
    .registers 5
    .parameter "colIndex"
    .parameter "b"
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

.method public updateShort(Ljava/lang/String;S)V
    .registers 5
    .parameter "colIndex"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 781
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateString(ILjava/lang/String;)V
    .registers 5
    .parameter "colIndex"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 724
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "colIndex"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 806
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateTime(ILjava/sql/Time;)V
    .registers 5
    .parameter "colIndex"
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 736
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    .registers 5
    .parameter "colIndex"
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 820
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateTimestamp(ILjava/sql/Timestamp;)V
    .registers 5
    .parameter "colIndex"
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 741
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .registers 5
    .parameter "colIndex"
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 825
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wasNull()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSet;->lastg:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
