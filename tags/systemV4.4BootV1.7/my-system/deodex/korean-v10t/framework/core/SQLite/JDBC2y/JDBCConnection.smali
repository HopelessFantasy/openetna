.class public LSQLite/JDBC2y/JDBCConnection;
.super Ljava/lang/Object;
.source "JDBCConnection.java"

# interfaces
.implements Ljava/sql/Connection;
.implements LSQLite/BusyHandler;


# instance fields
.field protected autocommit:Z

.field protected db:LSQLite/JDBC2y/DatabaseX;

.field private dbfile:Ljava/lang/String;

.field protected enc:Ljava/lang/String;

.field protected intrans:Z

.field private meta:LSQLite/JDBC2y/JDBCDatabaseMetaData;

.field private readonly:Z

.field private t0:J

.field protected timeout:I

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "url"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, 0x1

    iput-boolean v1, p0, LSQLite/JDBC2y/JDBCConnection;->autocommit:Z

    .line 33
    iput-boolean v2, p0, LSQLite/JDBC2y/JDBCConnection;->intrans:Z

    .line 38
    const v1, 0xf4240

    iput v1, p0, LSQLite/JDBC2y/JDBCConnection;->timeout:I

    .line 43
    iput-object v3, p0, LSQLite/JDBC2y/JDBCConnection;->dbfile:Ljava/lang/String;

    .line 48
    iput-object v3, p0, LSQLite/JDBC2y/JDBCConnection;->meta:LSQLite/JDBC2y/JDBCDatabaseMetaData;

    .line 58
    iput-boolean v2, p0, LSQLite/JDBC2y/JDBCConnection;->readonly:Z

    .line 129
    const-string v1, "sqlite:/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 130
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->dbfile:Ljava/lang/String;

    .line 136
    :goto_25
    iput-object p1, p0, LSQLite/JDBC2y/JDBCConnection;->url:Ljava/lang/String;

    .line 137
    iput-object p2, p0, LSQLite/JDBC2y/JDBCConnection;->enc:Ljava/lang/String;

    .line 139
    :try_start_29
    iget-boolean v1, p0, LSQLite/JDBC2y/JDBCConnection;->readonly:Z

    invoke-direct {p0, v1}, LSQLite/JDBC2y/JDBCConnection;->open(Z)LSQLite/JDBC2y/DatabaseX;

    move-result-object v1

    iput-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    .line 140
    iget-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v1, p0}, LSQLite/JDBC2y/DatabaseX;->busy_handler(LSQLite/BusyHandler;)V
    :try_end_36
    .catch Ljava/sql/SQLException; {:try_start_29 .. :try_end_36} :catch_50

    .line 150
    return-void

    .line 131
    :cond_37
    const-string v1, "jdbc:sqlite:/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 132
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->dbfile:Ljava/lang/String;

    goto :goto_25

    .line 134
    :cond_48
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "unsupported url"

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :catch_50
    move-exception v1

    move-object v0, v1

    .line 142
    .local v0, e:Ljava/sql/SQLException;
    iget-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    if-eqz v1, :cond_5b

    .line 144
    :try_start_56
    iget-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v1}, LSQLite/JDBC2y/DatabaseX;->close()V
    :try_end_5b
    .catch LSQLite/Exception; {:try_start_56 .. :try_end_5b} :catch_5c

    .line 148
    :cond_5b
    :goto_5b
    throw v0

    .line 145
    :catch_5c
    move-exception v1

    goto :goto_5b
.end method

.method private busy0(LSQLite/JDBC2y/DatabaseX;I)Z
    .registers 11
    .parameter "db"
    .parameter "count"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    if-gt p2, v7, :cond_a

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, LSQLite/JDBC2y/JDBCConnection;->t0:J

    .line 65
    :cond_a
    if-eqz p1, :cond_24

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    .local v0, t1:J
    iget-wide v2, p0, LSQLite/JDBC2y/JDBCConnection;->t0:J

    sub-long v2, v0, v2

    iget v4, p0, LSQLite/JDBC2y/JDBCConnection;->timeout:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1d

    move v2, v6

    .line 73
    .end local v0           #t1:J
    :goto_1c
    return v2

    .line 70
    .restart local v0       #t1:J
    :cond_1d
    const/16 v2, 0x64

    invoke-virtual {p1, v2}, LSQLite/JDBC2y/DatabaseX;->wait(I)V

    move v2, v7

    .line 71
    goto :goto_1c

    .end local v0           #t1:J
    :cond_24
    move v2, v6

    .line 73
    goto :goto_1c
.end method

.method private open(Z)LSQLite/JDBC2y/DatabaseX;
    .registers 8
    .parameter "readonly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, db:LSQLite/JDBC2y/DatabaseX;
    :try_start_1
    new-instance v1, LSQLite/JDBC2y/DatabaseX;

    invoke-direct {v1}, LSQLite/JDBC2y/DatabaseX;-><init>()V
    :try_end_6
    .catch LSQLite/Exception; {:try_start_1 .. :try_end_6} :catch_3d

    .line 98
    .end local v0           #db:LSQLite/JDBC2y/DatabaseX;
    .local v1, db:LSQLite/JDBC2y/DatabaseX;
    :try_start_6
    iget-object v4, p0, LSQLite/JDBC2y/JDBCConnection;->dbfile:Ljava/lang/String;

    if-eqz p1, :cond_3a

    const/16 v5, 0x124

    :goto_c
    invoke-virtual {v1, v4, v5}, LSQLite/JDBC2y/DatabaseX;->open(Ljava/lang/String;I)V

    .line 99
    iget-object v4, p0, LSQLite/JDBC2y/JDBCConnection;->enc:Ljava/lang/String;

    invoke-virtual {v1, v4}, LSQLite/JDBC2y/DatabaseX;->set_encoding(Ljava/lang/String;)V
    :try_end_14
    .catch LSQLite/Exception; {:try_start_6 .. :try_end_14} :catch_69

    .line 103
    const/4 v3, 0x0

    .line 106
    .local v3, loop:I
    :cond_15
    :try_start_15
    const-string v4, "PRAGMA short_column_names = off;"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, LSQLite/JDBC2y/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 107
    const-string v4, "PRAGMA full_column_names = on;"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, LSQLite/JDBC2y/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 108
    const-string v4, "PRAGMA empty_result_callbacks = on;"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, LSQLite/JDBC2y/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 109
    invoke-static {}, LSQLite/Database;->version()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.6.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_39

    .line 110
    const-string v4, "PRAGMA show_datatypes = on;"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, LSQLite/JDBC2y/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_39
    .catch LSQLite/Exception; {:try_start_15 .. :try_end_39} :catch_49

    .line 125
    :cond_39
    return-object v1

    .line 98
    .end local v3           #loop:I
    :cond_3a
    const/16 v5, 0x1a4

    goto :goto_c

    .line 100
    .end local v1           #db:LSQLite/JDBC2y/DatabaseX;
    .restart local v0       #db:LSQLite/JDBC2y/DatabaseX;
    :catch_3d
    move-exception v4

    move-object v2, v4

    .line 101
    .local v2, e:LSQLite/Exception;
    :goto_3f
    new-instance v4, Ljava/sql/SQLException;

    invoke-virtual {v2}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    .end local v0           #db:LSQLite/JDBC2y/DatabaseX;
    .end local v2           #e:LSQLite/Exception;
    .restart local v1       #db:LSQLite/JDBC2y/DatabaseX;
    .restart local v3       #loop:I
    :catch_49
    move-exception v4

    move-object v2, v4

    .line 113
    .restart local v2       #e:LSQLite/Exception;
    invoke-virtual {v1}, LSQLite/JDBC2y/DatabaseX;->last_error()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5a

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1, v3}, LSQLite/JDBC2y/JDBCConnection;->busy0(LSQLite/JDBC2y/DatabaseX;I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 116
    :cond_5a
    :try_start_5a
    invoke-virtual {v1}, LSQLite/JDBC2y/DatabaseX;->close()V
    :try_end_5d
    .catch LSQLite/Exception; {:try_start_5a .. :try_end_5d} :catch_67

    .line 119
    :goto_5d
    new-instance v4, Ljava/sql/SQLException;

    invoke-virtual {v2}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :catch_67
    move-exception v4

    goto :goto_5d

    .line 100
    .end local v2           #e:LSQLite/Exception;
    .end local v3           #loop:I
    :catch_69
    move-exception v4

    move-object v2, v4

    move-object v0, v1

    .end local v1           #db:LSQLite/JDBC2y/DatabaseX;
    .restart local v0       #db:LSQLite/JDBC2y/DatabaseX;
    goto :goto_3f
.end method


# virtual methods
.method public busy(Ljava/lang/String;I)Z
    .registers 4
    .parameter "table"
    .parameter "count"

    .prologue
    .line 77
    iget-object v0, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-direct {p0, v0, p2}, LSQLite/JDBC2y/JDBCConnection;->busy0(LSQLite/JDBC2y/DatabaseX;I)Z

    move-result v0

    return v0
.end method

.method protected busy3(LSQLite/JDBC2y/DatabaseX;I)Z
    .registers 11
    .parameter "db"
    .parameter "count"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 81
    if-gt p2, v7, :cond_a

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, LSQLite/JDBC2y/JDBCConnection;->t0:J

    .line 84
    :cond_a
    if-eqz p1, :cond_1f

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 86
    .local v0, t1:J
    iget-wide v2, p0, LSQLite/JDBC2y/JDBCConnection;->t0:J

    sub-long v2, v0, v2

    iget v4, p0, LSQLite/JDBC2y/JDBCConnection;->timeout:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1d

    move v2, v6

    .line 91
    .end local v0           #t1:J
    :goto_1c
    return v2

    .restart local v0       #t1:J
    :cond_1d
    move v2, v7

    .line 89
    goto :goto_1c

    .end local v0           #t1:J
    :cond_1f
    move v2, v6

    .line 91
    goto :goto_1c
.end method

.method public clearWarnings()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 202
    return-void
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 178
    :try_start_0
    invoke-virtual {p0}, LSQLite/JDBC2y/JDBCConnection;->rollback()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_3} :catch_1f

    .line 182
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, p0, LSQLite/JDBC2y/JDBCConnection;->intrans:Z

    .line 183
    iget-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    if-eqz v1, :cond_12

    .line 185
    :try_start_a
    iget-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v1}, LSQLite/JDBC2y/DatabaseX;->close()V

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;
    :try_end_12
    .catch LSQLite/Exception; {:try_start_a .. :try_end_12} :catch_13

    .line 191
    :cond_12
    return-void

    .line 187
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 188
    .local v0, e:LSQLite/Exception;
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    .end local v0           #e:LSQLite/Exception;
    :catch_1f
    move-exception v1

    goto :goto_3
.end method

.method public commit()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    if-nez v1, :cond_c

    .line 206
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "stale connection"

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_c
    iget-boolean v1, p0, LSQLite/JDBC2y/JDBCConnection;->intrans:Z

    if-nez v1, :cond_11

    .line 217
    :goto_10
    return-void

    .line 212
    :cond_11
    :try_start_11
    iget-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    const-string v2, "COMMIT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LSQLite/JDBC2y/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, p0, LSQLite/JDBC2y/JDBCConnection;->intrans:Z
    :try_end_1c
    .catch LSQLite/Exception; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_10

    .line 214
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 215
    .local v0, e:LSQLite/Exception;
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createStatement()Ljava/sql/Statement;
    .registers 2

    .prologue
    .line 158
    new-instance v0, LSQLite/JDBC2y/JDBCStatement;

    invoke-direct {v0, p0}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 159
    .local v0, s:LSQLite/JDBC2y/JDBCStatement;
    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .registers 4
    .parameter "resultSetType"
    .parameter "resultSetConcurrency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, LSQLite/JDBC2y/JDBCStatement;

    invoke-direct {v0, p0}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 166
    .local v0, s:LSQLite/JDBC2y/JDBCStatement;
    return-object v0
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .registers 6
    .parameter "resultSetType"
    .parameter "resultSetConcurrency"
    .parameter "resultSetHoldability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x1

    if-eq p3, v0, :cond_b

    .line 362
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_b
    invoke-virtual {p0, p1, p2}, LSQLite/JDBC2y/JDBCConnection;->createStatement(II)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public getAutoCommit()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 220
    iget-boolean v0, p0, LSQLite/JDBC2y/JDBCConnection;->autocommit:Z

    return v0
.end method

.method public getCatalog()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHoldability()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, LSQLite/JDBC2y/JDBCConnection;->meta:LSQLite/JDBC2y/JDBCDatabaseMetaData;

    if-nez v0, :cond_b

    .line 171
    new-instance v0, LSQLite/JDBC2y/JDBCDatabaseMetaData;

    invoke-direct {v0, p0}, LSQLite/JDBC2y/JDBCDatabaseMetaData;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    iput-object v0, p0, LSQLite/JDBC2y/JDBCConnection;->meta:LSQLite/JDBC2y/JDBCDatabaseMetaData;

    .line 173
    :cond_b
    iget-object v0, p0, LSQLite/JDBC2y/JDBCConnection;->meta:LSQLite/JDBC2y/JDBCDatabaseMetaData;

    return-object v0
.end method

.method public getSQLiteDatabase()LSQLite/Database;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    return-object v0
.end method

.method public getTransactionIsolation()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 228
    const/16 v0, 0x8

    return v0
.end method

.method public getTypeMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 323
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public isClosed()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isReadOnly()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 198
    iget-boolean v0, p0, LSQLite/JDBC2y/JDBCConnection;->readonly:Z

    return v0
.end method

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .registers 6
    .parameter "sql"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .registers 7
    .parameter "sql"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .registers 3
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, LSQLite/JDBC2y/JDBCPreparedStatement;

    invoke-direct {v0, p0, p1}, LSQLite/JDBC2y/JDBCPreparedStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;Ljava/lang/String;)V

    .line 250
    .local v0, s:LSQLite/JDBC2y/JDBCPreparedStatement;
    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .registers 5
    .parameter "sql"
    .parameter "autokeys"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 384
    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    .line 385
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_b
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .registers 5
    .parameter "sql"
    .parameter "resultSetType"
    .parameter "resultSetConcurrency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, LSQLite/JDBC2y/JDBCPreparedStatement;

    invoke-direct {v0, p0, p1}, LSQLite/JDBC2y/JDBCPreparedStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;Ljava/lang/String;)V

    .line 257
    .local v0, s:LSQLite/JDBC2y/JDBCPreparedStatement;
    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .registers 7
    .parameter "sql"
    .parameter "resultSetType"
    .parameter "resultSetConcurrency"
    .parameter "resultSetHoldability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 371
    const/4 v0, 0x1

    if-eq p4, v0, :cond_b

    .line 372
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, LSQLite/JDBC2y/JDBCConnection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .registers 5
    .parameter "sql"
    .parameter "colIndexes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 392
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .registers 5
    .parameter "sql"
    .parameter "columns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 397
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .registers 4
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rollback()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    if-nez v1, :cond_c

    .line 262
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "stale connection"

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_c
    iget-boolean v1, p0, LSQLite/JDBC2y/JDBCConnection;->intrans:Z

    if-nez v1, :cond_11

    .line 273
    :goto_10
    return-void

    .line 268
    :cond_11
    :try_start_11
    iget-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    const-string v2, "ROLLBACK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LSQLite/JDBC2y/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 269
    const/4 v1, 0x0

    iput-boolean v1, p0, LSQLite/JDBC2y/JDBCConnection;->intrans:Z
    :try_end_1c
    .catch LSQLite/Exception; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_10

    .line 270
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 271
    .local v0, e:LSQLite/Exception;
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .registers 4
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoCommit(Z)V
    .registers 6
    .parameter "ac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 276
    if-eqz p1, :cond_12

    iget-boolean v1, p0, LSQLite/JDBC2y/JDBCConnection;->intrans:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    if-eqz v1, :cond_12

    .line 278
    :try_start_a
    iget-object v1, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    const-string v2, "ROLLBACK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LSQLite/JDBC2y/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_12
    .catch LSQLite/Exception; {:try_start_a .. :try_end_12} :catch_18

    .line 283
    :cond_12
    const/4 v1, 0x0

    iput-boolean v1, p0, LSQLite/JDBC2y/JDBCConnection;->intrans:Z

    .line 284
    iput-boolean p1, p0, LSQLite/JDBC2y/JDBCConnection;->autocommit:Z

    .line 285
    return-void

    .line 279
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 280
    .local v0, e:LSQLite/Exception;
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCatalog(Ljava/lang/String;)V
    .registers 2
    .parameter "catalog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 288
    return-void
.end method

.method public setHoldability(I)V
    .registers 4
    .parameter "holdability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 336
    return-void

    .line 338
    :cond_4
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReadOnly(Z)V
    .registers 7
    .parameter "ro"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 291
    iget-boolean v3, p0, LSQLite/JDBC2y/JDBCConnection;->intrans:Z

    if-eqz v3, :cond_c

    .line 292
    new-instance v3, Ljava/sql/SQLException;

    const-string v4, "incomplete transaction"

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 294
    :cond_c
    iget-boolean v3, p0, LSQLite/JDBC2y/JDBCConnection;->readonly:Z

    if-eq p1, v3, :cond_1f

    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, db:LSQLite/JDBC2y/DatabaseX;
    :try_start_11
    invoke-direct {p0, p1}, LSQLite/JDBC2y/JDBCConnection;->open(Z)LSQLite/JDBC2y/DatabaseX;

    move-result-object v0

    .line 298
    iget-object v3, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v3}, LSQLite/JDBC2y/DatabaseX;->close()V

    .line 299
    iput-object v0, p0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    .line 300
    const/4 v0, 0x0

    .line 301
    iput-boolean p1, p0, LSQLite/JDBC2y/JDBCConnection;->readonly:Z
    :try_end_1f
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_1f} :catch_20
    .catch LSQLite/Exception; {:try_start_11 .. :try_end_1f} :catch_23

    .line 314
    .end local v0           #db:LSQLite/JDBC2y/DatabaseX;
    :cond_1f
    return-void

    .line 302
    .restart local v0       #db:LSQLite/JDBC2y/DatabaseX;
    :catch_20
    move-exception v3

    move-object v1, v3

    .line 303
    .local v1, e:Ljava/sql/SQLException;
    throw v1

    .line 304
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_23
    move-exception v3

    move-object v2, v3

    .line 305
    .local v2, ee:LSQLite/Exception;
    if-eqz v0, :cond_2a

    .line 307
    :try_start_27
    invoke-virtual {v0}, LSQLite/JDBC2y/DatabaseX;->close()V
    :try_end_2a
    .catch LSQLite/Exception; {:try_start_27 .. :try_end_2a} :catch_34

    .line 311
    :cond_2a
    :goto_2a
    new-instance v3, Ljava/sql/SQLException;

    invoke-virtual {v2}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 308
    :catch_34
    move-exception v3

    goto :goto_2a
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransactionIsolation(I)V
    .registers 4
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 317
    const/16 v0, 0x8

    if-eq p1, v0, :cond_c

    .line 318
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_c
    return-void
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .registers 4
    .parameter "map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
