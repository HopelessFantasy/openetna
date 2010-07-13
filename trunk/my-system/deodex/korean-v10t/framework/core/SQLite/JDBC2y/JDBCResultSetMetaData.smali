.class public LSQLite/JDBC2y/JDBCResultSetMetaData;
.super Ljava/lang/Object;
.source "JDBCResultSetMetaData.java"

# interfaces
.implements Ljava/sql/ResultSetMetaData;


# instance fields
.field private r:LSQLite/JDBC2y/JDBCResultSet;


# direct methods
.method public constructor <init>(LSQLite/JDBC2y/JDBCResultSet;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    .line 11
    return-void
.end method


# virtual methods
.method findColByName(Ljava/lang/String;)I
    .registers 8
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, c:Ljava/lang/String;
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    if-eqz v3, :cond_42

    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v3, v3, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_42

    .line 193
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v3, v3, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-ge v1, v3, :cond_42

    .line 194
    iget-object v3, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v3, v3, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v0, v3, v1

    .line 195
    if-eqz v0, :cond_3e

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_27

    .line 197
    add-int/lit8 v3, v1, 0x1

    .line 203
    :goto_26
    return v3

    .line 199
    :cond_27
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 200
    .local v2, k:I
    if-lez v2, :cond_3e

    .line 201
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3e

    .line 203
    add-int/lit8 v3, v1, 0x1

    goto :goto_26

    .line 207
    .end local v2           #k:I
    :cond_3e
    const/4 v0, 0x0

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 210
    .end local v1           #i:I
    :cond_42
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getCatalogName(I)Ljava/lang/String;
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnClassName(I)Ljava/lang/String;
    .registers 4
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 18
    add-int/lit8 p1, p1, -0x1

    .line 19
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    if-eqz v0, :cond_4c

    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_4c

    .line 20
    if-ltz p1, :cond_17

    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-lt p1, v0, :cond_19

    :cond_17
    move-object v0, v1

    .line 40
    .end local p0
    :goto_18
    return-object v0

    .line 23
    .restart local p0
    :cond_19
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    instance-of v0, v0, LSQLite/JDBC2y/TableResultX;

    if-eqz v0, :cond_2e

    .line 24
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object p0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    .end local p0
    check-cast p0, LSQLite/JDBC2y/TableResultX;

    iget-object v0, p0, LSQLite/JDBC2y/TableResultX;->sql_type:[I

    aget v0, v0, p1

    sparse-switch v0, :sswitch_data_4e

    .line 38
    :cond_2e
    const-string v0, "java.lang.String"

    goto :goto_18

    .line 25
    :sswitch_31
    const-string v0, "java.lang.Short"

    goto :goto_18

    .line 26
    :sswitch_34
    const-string v0, "java.lang.Integer"

    goto :goto_18

    .line 27
    :sswitch_37
    const-string v0, "java.lang.Double"

    goto :goto_18

    .line 28
    :sswitch_3a
    const-string v0, "java.lang.Float"

    goto :goto_18

    .line 29
    :sswitch_3d
    const-string v0, "java.lang.Long"

    goto :goto_18

    .line 30
    :sswitch_40
    const-string v0, "java.sql.Date"

    goto :goto_18

    .line 31
    :sswitch_43
    const-string v0, "java.sql.Time"

    goto :goto_18

    .line 32
    :sswitch_46
    const-string v0, "java.sql.Timestamp"

    goto :goto_18

    .line 34
    :sswitch_49
    const-string v0, "[B"

    goto :goto_18

    .restart local p0
    :cond_4c
    move-object v0, v1

    .line 40
    goto :goto_18

    .line 24
    :sswitch_data_4e
    .sparse-switch
        -0x5 -> :sswitch_3d
        -0x3 -> :sswitch_49
        -0x2 -> :sswitch_49
        0x4 -> :sswitch_34
        0x5 -> :sswitch_31
        0x6 -> :sswitch_3a
        0x8 -> :sswitch_37
        0x5b -> :sswitch_40
        0x5c -> :sswitch_43
        0x5d -> :sswitch_46
    .end sparse-switch
.end method

.method public getColumnCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    if-eqz v0, :cond_11

    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_11

    .line 45
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    .line 47
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getColumnDisplaySize(I)I
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnLabel(I)Ljava/lang/String;
    .registers 5
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 55
    add-int/lit8 p1, p1, -0x1

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, c:Ljava/lang/String;
    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    if-eqz v2, :cond_21

    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v2, :cond_21

    .line 58
    if-ltz p1, :cond_17

    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v2, v2, LSQLite/TableResult;->ncolumns:I

    if-lt p1, v2, :cond_19

    :cond_17
    move-object v1, v0

    .line 63
    .end local v0           #c:Ljava/lang/String;
    .local v1, c:Ljava/lang/String;
    :goto_18
    return-object v1

    .line 61
    .end local v1           #c:Ljava/lang/String;
    .restart local v0       #c:Ljava/lang/String;
    :cond_19
    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v2, v2, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v0, v2, p1

    :cond_21
    move-object v1, v0

    .line 63
    .end local v0           #c:Ljava/lang/String;
    .restart local v1       #c:Ljava/lang/String;
    goto :goto_18
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 5
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 67
    add-int/lit8 p1, p1, -0x1

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, c:Ljava/lang/String;
    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    if-eqz v2, :cond_32

    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v2, :cond_32

    .line 70
    if-ltz p1, :cond_17

    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v2, v2, LSQLite/TableResult;->ncolumns:I

    if-lt p1, v2, :cond_19

    :cond_17
    move-object v2, v0

    .line 81
    :goto_18
    return-object v2

    .line 73
    :cond_19
    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v2, v2, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 74
    if-eqz v0, :cond_32

    .line 75
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 76
    .local v1, i:I
    if-lez v1, :cond_32

    .line 77
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    .end local v1           #i:I
    :cond_32
    move-object v2, v0

    .line 81
    goto :goto_18
.end method

.method public getColumnType(I)I
    .registers 4
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 85
    add-int/lit8 p1, p1, -0x1

    .line 86
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    if-eqz v0, :cond_2c

    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_2c

    .line 87
    if-ltz p1, :cond_2c

    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-ge p1, v0, :cond_2c

    .line 88
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    instance-of v0, v0, LSQLite/JDBC2y/TableResultX;

    if-eqz v0, :cond_29

    .line 89
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object p0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    .end local p0
    check-cast p0, LSQLite/JDBC2y/TableResultX;

    iget-object v0, p0, LSQLite/JDBC2y/TableResultX;->sql_type:[I

    aget v0, v0, p1

    .line 91
    :goto_28
    return v0

    .restart local p0
    :cond_29
    const/16 v0, 0xc

    goto :goto_28

    .line 94
    :cond_2c
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad column index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnTypeName(I)Ljava/lang/String;
    .registers 4
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 98
    add-int/lit8 p1, p1, -0x1

    .line 99
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    if-eqz v0, :cond_4c

    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_4c

    .line 100
    if-ltz p1, :cond_4c

    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-ge p1, v0, :cond_4c

    .line 101
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    instance-of v0, v0, LSQLite/JDBC2y/TableResultX;

    if-eqz v0, :cond_2b

    .line 102
    iget-object v0, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object p0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    .end local p0
    check-cast p0, LSQLite/JDBC2y/TableResultX;

    iget-object v0, p0, LSQLite/JDBC2y/TableResultX;->sql_type:[I

    aget v0, v0, p1

    sparse-switch v0, :sswitch_data_54

    .line 116
    :cond_2b
    const-string v0, "varchar"

    :goto_2d
    return-object v0

    .line 103
    :sswitch_2e
    const-string v0, "smallint"

    goto :goto_2d

    .line 104
    :sswitch_31
    const-string v0, "integer"

    goto :goto_2d

    .line 105
    :sswitch_34
    const-string v0, "double"

    goto :goto_2d

    .line 106
    :sswitch_37
    const-string v0, "float"

    goto :goto_2d

    .line 107
    :sswitch_3a
    const-string v0, "bigint"

    goto :goto_2d

    .line 108
    :sswitch_3d
    const-string v0, "date"

    goto :goto_2d

    .line 109
    :sswitch_40
    const-string v0, "time"

    goto :goto_2d

    .line 110
    :sswitch_43
    const-string v0, "timestamp"

    goto :goto_2d

    .line 111
    :sswitch_46
    const-string v0, "binary"

    goto :goto_2d

    .line 112
    :sswitch_49
    const-string v0, "varbinary"

    goto :goto_2d

    .line 119
    .restart local p0
    :cond_4c
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad column index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :sswitch_data_54
    .sparse-switch
        -0x5 -> :sswitch_3a
        -0x3 -> :sswitch_49
        -0x2 -> :sswitch_46
        0x4 -> :sswitch_31
        0x5 -> :sswitch_2e
        0x6 -> :sswitch_37
        0x8 -> :sswitch_34
        0x5b -> :sswitch_3d
        0x5c -> :sswitch_40
        0x5d -> :sswitch_43
    .end sparse-switch
.end method

.method public getPrecision(I)I
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getScale(I)I
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableName(I)Ljava/lang/String;
    .registers 5
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 135
    add-int/lit8 p1, p1, -0x1

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, c:Ljava/lang/String;
    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    if-eqz v2, :cond_32

    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v2, :cond_32

    .line 138
    if-ltz p1, :cond_17

    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v2, v2, LSQLite/TableResult;->ncolumns:I

    if-lt p1, v2, :cond_19

    :cond_17
    move-object v2, v0

    .line 150
    :goto_18
    return-object v2

    .line 141
    :cond_19
    iget-object v2, p0, LSQLite/JDBC2y/JDBCResultSetMetaData;->r:LSQLite/JDBC2y/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v2, v2, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 142
    if-eqz v0, :cond_32

    .line 143
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 144
    .local v1, i:I
    if-lez v1, :cond_31

    .line 145
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    .line 147
    :cond_31
    const/4 v0, 0x0

    .end local v1           #i:I
    :cond_32
    move-object v2, v0

    .line 150
    goto :goto_18
.end method

.method public isAutoIncrement(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isCaseSensitive(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrency(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public isDefinitelyWritable(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public isNullable(I)I
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x2

    return v0
.end method

.method public isReadOnly(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public isSearchable(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public isSigned(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public isWritable(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method
