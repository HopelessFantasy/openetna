.class public LSQLite/JDBC2y/JDBCStatement;
.super Ljava/lang/Object;
.source "JDBCStatement.java"

# interfaces
.implements Ljava/sql/Statement;


# instance fields
.field private batch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected conn:LSQLite/JDBC2y/JDBCConnection;

.field protected rs:LSQLite/JDBC2y/JDBCResultSet;

.field protected updcnt:I


# direct methods
.method public constructor <init>(LSQLite/JDBC2y/JDBCConnection;)V
    .registers 4
    .parameter "conn"

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, LSQLite/JDBC2y/JDBCStatement;->updcnt:I

    .line 16
    iput-object v1, p0, LSQLite/JDBC2y/JDBCStatement;->rs:LSQLite/JDBC2y/JDBCResultSet;

    .line 17
    iput-object v1, p0, LSQLite/JDBC2y/JDBCStatement;->batch:Ljava/util/ArrayList;

    .line 18
    return-void
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->batch:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->batch:Ljava/util/ArrayList;

    .line 164
    :cond_c
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->batch:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public cancel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    if-eqz v0, :cond_a

    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    if-nez v0, :cond_12

    .line 148
    :cond_a
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "stale connection"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_12
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v0}, LSQLite/JDBC2y/DatabaseX;->interrupt()V

    .line 151
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
    .line 191
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->batch:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 192
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->batch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->batch:Ljava/util/ArrayList;

    .line 195
    :cond_c
    return-void
.end method

.method public clearWarnings()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 154
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, LSQLite/JDBC2y/JDBCStatement;->clearBatch()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    .line 200
    return-void
.end method

.method public execute(Ljava/lang/String;)Z
    .registers 3
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public execute(Ljava/lang/String;I)Z
    .registers 5
    .parameter "sql"
    .parameter "autokeys"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    .line 268
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_b
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCStatement;->execute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/String;[I)Z
    .registers 5
    .parameter "sql"
    .parameter "colIndexes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .parameter "sql"
    .parameter "colIndexes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeBatch()[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v4, p0, LSQLite/JDBC2y/JDBCStatement;->batch:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    .line 169
    const/4 v4, 0x0

    new-array v4, v4, [I

    .line 187
    :goto_7
    return-object v4

    .line 171
    :cond_8
    iget-object v4, p0, LSQLite/JDBC2y/JDBCStatement;->batch:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 172
    .local v3, ret:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v4, v3

    if-ge v2, v4, :cond_1a

    .line 173
    const/4 v4, -0x3

    aput v4, v3, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 175
    :cond_1a
    const/4 v1, 0x0

    .line 176
    .local v1, errs:I
    const/4 v2, 0x0

    :goto_1c
    array-length v4, v3

    if-ge v2, v4, :cond_36

    .line 178
    :try_start_1f
    iget-object v4, p0, LSQLite/JDBC2y/JDBCStatement;->batch:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, LSQLite/JDBC2y/JDBCStatement;->execute(Ljava/lang/String;)Z

    .line 179
    iget v4, p0, LSQLite/JDBC2y/JDBCStatement;->updcnt:I

    aput v4, v3, v2
    :try_end_2e
    .catch Ljava/sql/SQLException; {:try_start_1f .. :try_end_2e} :catch_31

    .line 176
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 180
    :catch_31
    move-exception v4

    move-object v0, v4

    .line 181
    .local v0, e:Ljava/sql/SQLException;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 184
    .end local v0           #e:Ljava/sql/SQLException;
    :cond_36
    if-lez v1, :cond_40

    .line 185
    new-instance v4, Ljava/sql/BatchUpdateException;

    const-string v5, "batch failed"

    invoke-direct {v4, v5, v3}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;[I)V

    throw v4

    :cond_40
    move-object v4, v3

    .line 187
    goto :goto_7
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method executeQuery(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/sql/ResultSet;
    .registers 13
    .parameter "sql"
    .parameter "args"
    .parameter "updonly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    .local v4, tr:LSQLite/TableResult;
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->rs:LSQLite/JDBC2y/JDBCResultSet;

    if-eqz v5, :cond_f

    .line 73
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->rs:LSQLite/JDBC2y/JDBCResultSet;

    invoke-virtual {v5}, LSQLite/JDBC2y/JDBCResultSet;->close()V

    .line 74
    iput-object v6, p0, LSQLite/JDBC2y/JDBCStatement;->rs:LSQLite/JDBC2y/JDBCResultSet;

    .line 76
    :cond_f
    const/4 v5, -0x1

    iput v5, p0, LSQLite/JDBC2y/JDBCStatement;->updcnt:I

    .line 77
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    if-eqz v5, :cond_1c

    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    if-nez v5, :cond_24

    .line 78
    :cond_1c
    new-instance v5, Ljava/sql/SQLException;

    const-string v6, "stale connection"

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 80
    :cond_24
    const/4 v0, 0x0

    .line 81
    .local v0, busy:I
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-boolean v5, v5, LSQLite/JDBC2y/JDBCConnection;->autocommit:Z

    if-nez v5, :cond_66

    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-boolean v5, v5, LSQLite/JDBC2y/JDBCConnection;->intrans:Z

    if-nez v5, :cond_66

    move v3, v8

    .line 84
    .local v3, starttrans:Z
    :goto_32
    if-eqz v3, :cond_43

    .line 85
    :try_start_34
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    const-string v6, "BEGIN TRANSACTION"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, LSQLite/JDBC2y/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 86
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    const/4 v6, 0x1

    iput-boolean v6, v5, LSQLite/JDBC2y/JDBCConnection;->intrans:Z

    .line 88
    :cond_43
    if-nez p2, :cond_71

    .line 89
    if-eqz p3, :cond_68

    .line 90
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, LSQLite/JDBC2y/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 101
    :goto_4f
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v5}, LSQLite/JDBC2y/DatabaseX;->changes()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, LSQLite/JDBC2y/JDBCStatement;->updcnt:I
    :try_end_5a
    .catch LSQLite/Exception; {:try_start_34 .. :try_end_5a} :catch_7c

    .line 129
    if-nez p3, :cond_e4

    if-nez v4, :cond_e4

    .line 130
    new-instance v5, Ljava/sql/SQLException;

    const-string v6, "no result set produced"

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #starttrans:Z
    :cond_66
    move v3, v7

    .line 81
    goto :goto_32

    .line 92
    .restart local v3       #starttrans:Z
    :cond_68
    :try_start_68
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v5, p1}, LSQLite/JDBC2y/DatabaseX;->get_table(Ljava/lang/String;)LSQLite/TableResult;

    move-result-object v4

    goto :goto_4f

    .line 95
    :cond_71
    if-eqz p3, :cond_d0

    .line 96
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, p2}, LSQLite/JDBC2y/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    :try_end_7b
    .catch LSQLite/Exception; {:try_start_68 .. :try_end_7b} :catch_7c

    goto :goto_4f

    .line 102
    :catch_7c
    move-exception v5

    move-object v1, v5

    .line 103
    .local v1, e:LSQLite/Exception;
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v5}, LSQLite/JDBC2y/DatabaseX;->is3()Z

    move-result v5

    if-eqz v5, :cond_da

    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v5}, LSQLite/JDBC2y/DatabaseX;->last_error()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_da

    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v6, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v6, v6, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v6, v0}, LSQLite/JDBC2y/JDBCConnection;->busy3(LSQLite/JDBC2y/DatabaseX;I)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 107
    if-eqz v3, :cond_b8

    :try_start_a3
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-boolean v5, v5, LSQLite/JDBC2y/JDBCConnection;->intrans:Z

    if-eqz v5, :cond_b8

    .line 108
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    const-string v6, "ROLLBACK"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, LSQLite/JDBC2y/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 109
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    const/4 v6, 0x0

    iput-boolean v6, v5, LSQLite/JDBC2y/JDBCConnection;->intrans:Z
    :try_end_b8
    .catch LSQLite/Exception; {:try_start_a3 .. :try_end_b8} :catch_f7

    .line 114
    :cond_b8
    :goto_b8
    mul-int/lit8 v5, v0, 0xa

    add-int/lit8 v2, v5, 0x14

    .line 115
    .local v2, ms:I
    const/16 v5, 0x3e8

    if-le v2, v5, :cond_c2

    .line 116
    const/16 v2, 0x3e8

    .line 118
    :cond_c2
    :try_start_c2
    monitor-enter p0
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c3} :catch_cd

    .line 119
    int-to-long v5, v2

    :try_start_c4
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 120
    monitor-exit p0

    goto/16 :goto_32

    :catchall_ca
    move-exception v5

    monitor-exit p0
    :try_end_cc
    .catchall {:try_start_c4 .. :try_end_cc} :catchall_ca

    :try_start_cc
    throw v5
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cd} :catch_cd

    .line 121
    :catch_cd
    move-exception v5

    goto/16 :goto_32

    .line 98
    .end local v1           #e:LSQLite/Exception;
    .end local v2           #ms:I
    :cond_d0
    :try_start_d0
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2y/JDBCConnection;->db:LSQLite/JDBC2y/DatabaseX;

    invoke-virtual {v5, p1, p2}, LSQLite/JDBC2y/DatabaseX;->get_table(Ljava/lang/String;[Ljava/lang/String;)LSQLite/TableResult;
    :try_end_d7
    .catch LSQLite/Exception; {:try_start_d0 .. :try_end_d7} :catch_7c

    move-result-object v4

    goto/16 :goto_4f

    .line 125
    .restart local v1       #e:LSQLite/Exception;
    :cond_da
    new-instance v5, Ljava/sql/SQLException;

    invoke-virtual {v1}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 132
    .end local v1           #e:LSQLite/Exception;
    :cond_e4
    if-nez p3, :cond_f4

    if-eqz v4, :cond_f4

    .line 133
    new-instance v5, LSQLite/JDBC2y/JDBCResultSet;

    new-instance v6, LSQLite/JDBC2y/TableResultX;

    invoke-direct {v6, v4}, LSQLite/JDBC2y/TableResultX;-><init>(LSQLite/TableResult;)V

    invoke-direct {v5, v6, p0}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    iput-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->rs:LSQLite/JDBC2y/JDBCResultSet;

    .line 135
    :cond_f4
    iget-object v5, p0, LSQLite/JDBC2y/JDBCStatement;->rs:LSQLite/JDBC2y/JDBCResultSet;

    return-object v5

    .line 111
    .restart local v1       #e:LSQLite/Exception;
    :catch_f7
    move-exception v5

    goto :goto_b8
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/sql/ResultSet;

    .line 204
    iget v0, p0, LSQLite/JDBC2y/JDBCStatement;->updcnt:I

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .registers 5
    .parameter "sql"
    .parameter "autokeys"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    .line 250
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_b
    invoke-virtual {p0, p1}, LSQLite/JDBC2y/JDBCStatement;->executeUpdate(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .registers 5
    .parameter "sql"
    .parameter "colIndexes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "sql"
    .parameter "colIndexes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    return-object v0
.end method

.method public getFetchDirection()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 41
    const/16 v0, 0x3ea

    return v0
.end method

.method public getFetchSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxFieldSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRows()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getMoreResults()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->rs:LSQLite/JDBC2y/JDBCResultSet;

    if-eqz v0, :cond_c

    .line 213
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->rs:LSQLite/JDBC2y/JDBCResultSet;

    invoke-virtual {v0}, LSQLite/JDBC2y/JDBCResultSet;->close()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->rs:LSQLite/JDBC2y/JDBCResultSet;

    .line 216
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getMoreResults(I)Z
    .registers 4
    .parameter "x"
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

.method public getQueryTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget v0, v0, LSQLite/JDBC2y/JDBCConnection;->timeout:I

    return v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->rs:LSQLite/JDBC2y/JDBCResultSet;

    return-object v0
.end method

.method public getResultSetConcurrency()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 45
    const/16 v0, 0x3ef

    return v0
.end method

.method public getResultSetHoldability()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public getResultSetType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 49
    const/16 v0, 0x3ec

    return v0
.end method

.method public getUpdateCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 220
    iget v0, p0, LSQLite/JDBC2y/JDBCStatement;->updcnt:I

    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
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

.method public setCursorName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEscapeProcessing(Z)V
    .registers 4
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFetchDirection(I)V
    .registers 4
    .parameter "fetchDirection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFetchSize(I)V
    .registers 4
    .parameter "fetchSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxFieldSize(I)V
    .registers 4
    .parameter "max"
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

.method public setMaxRows(I)V
    .registers 4
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQueryTimeout(I)V
    .registers 4
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    mul-int/lit16 v1, p1, 0x3e8

    iput v1, v0, LSQLite/JDBC2y/JDBCConnection;->timeout:I

    .line 54
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget v0, v0, LSQLite/JDBC2y/JDBCConnection;->timeout:I

    if-gez v0, :cond_14

    .line 55
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    const v1, 0x1d4c0

    iput v1, v0, LSQLite/JDBC2y/JDBCConnection;->timeout:I

    .line 59
    :cond_13
    :goto_13
    return-void

    .line 56
    :cond_14
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget v0, v0, LSQLite/JDBC2y/JDBCConnection;->timeout:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_13

    .line 57
    iget-object v0, p0, LSQLite/JDBC2y/JDBCStatement;->conn:LSQLite/JDBC2y/JDBCConnection;

    const/16 v1, 0x1388

    iput v1, v0, LSQLite/JDBC2y/JDBCConnection;->timeout:I

    goto :goto_13
.end method
