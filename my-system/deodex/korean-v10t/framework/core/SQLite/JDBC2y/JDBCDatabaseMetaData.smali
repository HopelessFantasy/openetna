.class public LSQLite/JDBC2y/JDBCDatabaseMetaData;
.super Ljava/lang/Object;
.source "JDBCDatabaseMetaData.java"

# interfaces
.implements Ljava/sql/DatabaseMetaData;


# instance fields
.field private conn:LSQLite/JDBC2y/JDBCConnection;


# direct methods
.method public constructor <init>(LSQLite/JDBC2y/JDBCConnection;)V
    .registers 2
    .parameter "conn"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    .line 12
    return-void
.end method

.method static getD(Ljava/lang/String;I)I
    .registers 7
    .parameter "typeStr"
    .parameter "type"

    .prologue
    .line 1478
    const/4 v0, 0x0

    .line 1479
    .local v0, d:I
    packed-switch p1, :pswitch_data_48

    .line 1484
    :pswitch_4
    invoke-static {p0, p1}, LSQLite/JDBC2y/JDBCDatabaseMetaData;->getM(Ljava/lang/String;I)I

    move-result v4

    .line 1504
    :goto_8
    return v4

    .line 1480
    :pswitch_9
    const/16 v0, 0xa

    .line 1486
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1487
    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1488
    .local v1, i1:I
    if-lez v1, :cond_43

    .line 1489
    add-int/lit8 v1, v1, 0x1

    .line 1490
    const/16 v4, 0x2c

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1491
    .local v2, i2:I
    if-gez v2, :cond_2e

    .line 1492
    invoke-static {p0, p1}, LSQLite/JDBC2y/JDBCDatabaseMetaData;->getM(Ljava/lang/String;I)I

    move-result v4

    goto :goto_8

    .line 1481
    .end local v1           #i1:I
    .end local v2           #i2:I
    :pswitch_26
    const/4 v0, 0x5

    goto :goto_b

    .line 1482
    :pswitch_28
    const/16 v0, 0x18

    goto :goto_b

    .line 1483
    :pswitch_2b
    const/16 v0, 0x35

    goto :goto_b

    .line 1494
    .restart local v1       #i1:I
    .restart local v2       #i2:I
    :cond_2e
    move v1, v2

    .line 1495
    const/16 v4, 0x29

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1496
    sub-int v4, v2, v1

    if-lez v4, :cond_43

    .line 1497
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1499
    .local v3, num:Ljava/lang/String;
    const/16 v4, 0xa

    :try_start_3f
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_42} :catch_45

    move-result v0

    .end local v2           #i2:I
    .end local v3           #num:Ljava/lang/String;
    :cond_43
    :goto_43
    move v4, v0

    .line 1504
    goto :goto_8

    .line 1500
    .restart local v2       #i2:I
    .restart local v3       #num:Ljava/lang/String;
    :catch_45
    move-exception v4

    goto :goto_43

    .line 1479
    nop

    :pswitch_data_48
    .packed-switch 0x4
        :pswitch_9
        :pswitch_26
        :pswitch_28
        :pswitch_4
        :pswitch_2b
    .end packed-switch
.end method

.method static getM(Ljava/lang/String;I)I
    .registers 7
    .parameter "typeStr"
    .parameter "type"

    .prologue
    const/16 v4, 0xa

    .line 1448
    const/high16 v2, 0x1

    .line 1449
    .local v2, m:I
    sparse-switch p1, :sswitch_data_46

    .line 1458
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1459
    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1460
    .local v0, i1:I
    if-lez v0, :cond_31

    .line 1461
    add-int/lit8 v0, v0, 0x1

    .line 1462
    const/16 v4, 0x2c

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1463
    .local v1, i2:I
    if-gez v1, :cond_23

    .line 1464
    const/16 v4, 0x29

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1466
    :cond_23
    sub-int v4, v1, v0

    if-lez v4, :cond_31

    .line 1467
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1469
    .local v3, num:Ljava/lang/String;
    const/16 v4, 0xa

    :try_start_2d
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_30} :catch_44

    move-result v2

    .end local v1           #i2:I
    .end local v3           #num:Ljava/lang/String;
    :cond_31
    :goto_31
    move v4, v2

    .line 1474
    .end local v0           #i1:I
    :goto_32
    :sswitch_32
    return v4

    .line 1450
    :sswitch_33
    const/16 v2, 0xb

    goto :goto_7

    .line 1451
    :sswitch_36
    const/4 v2, 0x6

    goto :goto_7

    .line 1452
    :sswitch_38
    const/16 v2, 0x19

    goto :goto_7

    .line 1453
    :sswitch_3b
    const/16 v2, 0x36

    goto :goto_7

    .line 1454
    :sswitch_3e
    const/16 v4, 0x1e

    goto :goto_32

    .line 1456
    :sswitch_41
    const/16 v4, 0x8

    goto :goto_32

    .line 1470
    .restart local v0       #i1:I
    .restart local v1       #i2:I
    .restart local v3       #num:Ljava/lang/String;
    :catch_44
    move-exception v4

    goto :goto_31

    .line 1449
    :sswitch_data_46
    .sparse-switch
        0x4 -> :sswitch_33
        0x5 -> :sswitch_36
        0x6 -> :sswitch_38
        0x8 -> :sswitch_3b
        0x5b -> :sswitch_32
        0x5c -> :sswitch_41
        0x5d -> :sswitch_3e
    .end sparse-switch
.end method

.method private internalImportedKeys(Ljava/lang/String;Ljava/lang/String;LSQLite/JDBC2y/JDBCResultSet;LSQLite/JDBC2y/TableResultX;)V
    .registers 19
    .parameter "table"
    .parameter "pktable"
    .parameter "in"
    .parameter "out"

    .prologue
    .line 964
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 965
    .local v4, h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_6
    move-object/from16 v0, p3

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object v11, v0

    iget v11, v11, LSQLite/TableResult;->ncolumns:I

    if-ge v5, v11, :cond_23

    .line 966
    move-object/from16 v0, p3

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object v11, v0

    iget-object v11, v11, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v11, v11, v5

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 968
    :cond_23
    const/4 v5, 0x0

    .end local p0
    :goto_24
    move-object/from16 v0, p3

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object v11, v0

    iget v11, v11, LSQLite/TableResult;->nrows:I

    if-ge v5, v11, :cond_f1

    .line 969
    move-object/from16 v0, p3

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object v11, v0

    iget-object v11, v11, LSQLite/TableResult;->rows:Ljava/util/Vector;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .line 970
    .local v8, r0:[Ljava/lang/String;
    const-string v11, "table"

    invoke-virtual {v4, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 971
    .local v2, col:I
    aget-object v7, v8, v2

    .line 972
    .local v7, pktab:Ljava/lang/String;
    if-eqz p2, :cond_5a

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5a

    .line 968
    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 975
    :cond_5a
    const-string v11, "from"

    invoke-virtual {v4, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 976
    aget-object v6, v8, v2

    .line 977
    .local v6, pkcol:Ljava/lang/String;
    const-string v11, "to"

    invoke-virtual {v4, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 978
    aget-object v3, v8, v2

    .line 979
    .local v3, fkcol:Ljava/lang/String;
    const-string v11, "seq"

    invoke-virtual {v4, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 980
    aget-object v10, v8, v2

    .line 981
    .local v10, seq:Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, LSQLite/JDBC2y/TableResultX;->ncolumns:I

    move v11, v0

    new-array v9, v11, [Ljava/lang/String;

    .line 982
    .local v9, row:[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v9, v11

    .line 983
    const/4 v11, 0x1

    const-string v12, ""

    aput-object v12, v9, v11

    .line 984
    const/4 v11, 0x2

    aput-object v7, v9, v11

    .line 985
    const/4 v11, 0x3

    aput-object v6, v9, v11

    .line 986
    const/4 v11, 0x4

    const-string v12, ""

    aput-object v12, v9, v11

    .line 987
    const/4 v11, 0x5

    const-string v12, ""

    aput-object v12, v9, v11

    .line 988
    const/4 v11, 0x6

    aput-object p1, v9, v11

    .line 989
    const/4 v11, 0x7

    if-nez v3, :cond_ef

    move-object v12, v6

    :goto_ac
    aput-object v12, v9, v11

    .line 991
    const/16 v11, 0x8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    .line 993
    const/16 v11, 0x9

    const-string v12, "3"

    aput-object v12, v9, v11

    .line 995
    const/16 v11, 0xa

    const-string v12, "3"

    aput-object v12, v9, v11

    .line 997
    const/16 v11, 0xb

    const/4 v12, 0x0

    aput-object v12, v9, v11

    .line 998
    const/16 v11, 0xc

    const/4 v12, 0x0

    aput-object v12, v9, v11

    .line 999
    const/16 v11, 0xd

    const-string v12, "7"

    aput-object v12, v9, v11

    .line 1001
    move-object/from16 v0, p4

    move-object v1, v9

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    goto/16 :goto_57

    :cond_ef
    move-object v12, v3

    .line 989
    goto :goto_ac

    .line 1003
    .end local v2           #col:I
    .end local v3           #fkcol:Ljava/lang/String;
    .end local v6           #pkcol:Ljava/lang/String;
    .end local v7           #pktab:Ljava/lang/String;
    .end local v8           #r0:[Ljava/lang/String;
    .end local v9           #row:[Ljava/lang/String;
    .end local v10           #seq:Ljava/lang/String;
    :cond_f1
    return-void
.end method

.method static mapSqlType(Ljava/lang/String;)I
    .registers 4
    .parameter "type"

    .prologue
    const/4 v2, -0x2

    const/16 v1, 0xc

    .line 1404
    if-nez p0, :cond_7

    move v0, v1

    .line 1444
    :goto_6
    return v0

    .line 1407
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1408
    const-string v0, "inter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    .line 1409
    goto :goto_6

    .line 1411
    :cond_15
    const-string v0, "numeric"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1413
    :cond_25
    const/4 v0, 0x4

    goto :goto_6

    .line 1415
    :cond_27
    const-string v0, "tinyint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "smallint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1417
    :cond_37
    const/4 v0, 0x5

    goto :goto_6

    .line 1419
    :cond_39
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1420
    const/4 v0, 0x6

    goto :goto_6

    .line 1422
    :cond_43
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1423
    const/16 v0, 0x8

    goto :goto_6

    .line 1425
    :cond_4e
    const-string v0, "datetime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "timestamp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1427
    :cond_5e
    const/16 v0, 0x5d

    goto :goto_6

    .line 1429
    :cond_61
    const-string v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1430
    const/16 v0, 0x5b

    goto :goto_6

    .line 1432
    :cond_6c
    const-string v0, "time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1433
    const/16 v0, 0x5c

    goto :goto_6

    .line 1435
    :cond_77
    const-string v0, "blob"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    move v0, v2

    .line 1436
    goto :goto_6

    .line 1438
    :cond_81
    const-string v0, "binary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    move v0, v2

    .line 1439
    goto/16 :goto_6

    .line 1441
    :cond_8c
    const-string v0, "varbinary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1442
    const/4 v0, -0x3

    goto/16 :goto_6

    :cond_97
    move v0, v1

    .line 1444
    goto/16 :goto_6
.end method

.method static mapTypeName(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 1389
    sparse-switch p0, :sswitch_data_22

    .line 1400
    const-string v0, "varchar"

    :goto_5
    return-object v0

    .line 1390
    :sswitch_6
    const-string v0, "integer"

    goto :goto_5

    .line 1391
    :sswitch_9
    const-string v0, "smallint"

    goto :goto_5

    .line 1392
    :sswitch_c
    const-string v0, "float"

    goto :goto_5

    .line 1393
    :sswitch_f
    const-string v0, "double"

    goto :goto_5

    .line 1394
    :sswitch_12
    const-string v0, "timestamp"

    goto :goto_5

    .line 1395
    :sswitch_15
    const-string v0, "date"

    goto :goto_5

    .line 1396
    :sswitch_18
    const-string v0, "time"

    goto :goto_5

    .line 1397
    :sswitch_1b
    const-string v0, "binary"

    goto :goto_5

    .line 1398
    :sswitch_1e
    const-string v0, "varbinary"

    goto :goto_5

    .line 1389
    nop

    :sswitch_data_22
    .sparse-switch
        -0x3 -> :sswitch_1e
        -0x2 -> :sswitch_1b
        0x4 -> :sswitch_6
        0x5 -> :sswitch_9
        0x6 -> :sswitch_c
        0x8 -> :sswitch_f
        0x5b -> :sswitch_15
        0x5c -> :sswitch_18
        0x5d -> :sswitch_12
    .end sparse-switch
.end method


# virtual methods
.method public allProceduresAreCallable()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public allTablesAreSelectable()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public dataDefinitionCausesTransactionCommit()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public dataDefinitionIgnoredInTransactions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public deletesAreDetected(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1367
    const/4 v0, 0x0

    return v0
.end method

.method public doesMaxRowSizeIncludeBlobs()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method public getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 7
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "typeNamePattern"
    .parameter "attributeNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1551
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;
    .registers 37
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .parameter "scope"
    .parameter "nullable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 719
    new-instance v22, LSQLite/JDBC2y/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 720
    .local v22, s0:LSQLite/JDBC2y/JDBCStatement;
    const/16 v19, 0x0

    .line 721
    .local v19, rs0:LSQLite/JDBC2y/JDBCResultSet;
    new-instance v23, LSQLite/JDBC2y/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 722
    .local v23, s1:LSQLite/JDBC2y/JDBCStatement;
    const/16 v20, 0x0

    .line 724
    .local v20, rs1:LSQLite/JDBC2y/JDBCResultSet;
    :try_start_22
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "PRAGMA index_list("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static/range {p3 .. p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .end local p1
    check-cast p1, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v19, v0

    .line 727
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "PRAGMA table_info("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static/range {p3 .. p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    check-cast p1, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v20, v0
    :try_end_7c
    .catchall {:try_start_22 .. :try_end_7c} :catchall_14b
    .catch Ljava/sql/SQLException; {:try_start_22 .. :try_end_7c} :catch_147

    .line 733
    invoke-virtual/range {v22 .. v22}, LSQLite/JDBC2y/JDBCStatement;->close()V

    .line 734
    invoke-virtual/range {v23 .. v23}, LSQLite/JDBC2y/JDBCStatement;->close()V

    .line 736
    const/16 v28, 0x8

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object v5, v0

    const/16 v28, 0x0

    const-string v29, "SCOPE"

    aput-object v29, v5, v28

    const/16 v28, 0x1

    const-string v29, "COLUMN_NAME"

    aput-object v29, v5, v28

    const/16 v28, 0x2

    const-string v29, "DATA_TYPE"

    aput-object v29, v5, v28

    const/16 v28, 0x3

    const-string v29, "TYPE_NAME"

    aput-object v29, v5, v28

    const/16 v28, 0x4

    const-string v29, "COLUMN_SIZE"

    aput-object v29, v5, v28

    const/16 v28, 0x5

    const-string v29, "BUFFER_LENGTH"

    aput-object v29, v5, v28

    const/16 v28, 0x6

    const-string v29, "DECIMAL_DIGITS"

    aput-object v29, v5, v28

    const/16 v28, 0x7

    const-string v29, "PSEUDO_COLUMN"

    aput-object v29, v5, v28

    .line 741
    .local v5, cols:[Ljava/lang/String;
    const/16 v28, 0x8

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_3c4

    .line 746
    .local v26, types:[I
    new-instance v25, LSQLite/JDBC2y/TableResultX;

    invoke-direct/range {v25 .. v25}, LSQLite/JDBC2y/TableResultX;-><init>()V

    .line 747
    .local v25, tr:LSQLite/JDBC2y/TableResultX;
    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/TableResultX;->columns([Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {v25 .. v26}, LSQLite/JDBC2y/TableResultX;->sql_types([I)V

    .line 749
    new-instance v18, LSQLite/JDBC2y/JDBCResultSet;

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 750
    .local v18, rs:LSQLite/JDBC2y/JDBCResultSet;
    if-eqz v19, :cond_365

    move-object/from16 v0, v19

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    if-eqz v28, :cond_365

    move-object/from16 v0, v19

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v28, v0

    if-lez v28, :cond_365

    if-eqz v20, :cond_365

    move-object/from16 v0, v20

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    if-eqz v28, :cond_365

    move-object/from16 v0, v20

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v28, v0

    if-lez v28, :cond_365

    .line 752
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 753
    .local v7, h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_115
    move-object/from16 v0, v19

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v28, v0

    move v0, v10

    move/from16 v1, v28

    if-ge v0, v1, :cond_153

    .line 754
    move-object/from16 v0, v19

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v28, v0

    aget-object v28, v28, v10

    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    move v1, v10

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v7

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    add-int/lit8 v10, v10, 0x1

    goto :goto_115

    .line 730
    .end local v5           #cols:[Ljava/lang/String;
    .end local v7           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10           #i:I
    .end local v18           #rs:LSQLite/JDBC2y/JDBCResultSet;
    .end local v25           #tr:LSQLite/JDBC2y/TableResultX;
    .end local v26           #types:[I
    :catch_147
    move-exception v28

    move-object/from16 v6, v28

    .line 731
    .local v6, e:Ljava/sql/SQLException;
    :try_start_14a
    throw v6
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_14b

    .line 733
    .end local v6           #e:Ljava/sql/SQLException;
    :catchall_14b
    move-exception v28

    invoke-virtual/range {v22 .. v22}, LSQLite/JDBC2y/JDBCStatement;->close()V

    .line 734
    invoke-virtual/range {v23 .. v23}, LSQLite/JDBC2y/JDBCStatement;->close()V

    throw v28

    .line 756
    .restart local v5       #cols:[Ljava/lang/String;
    .restart local v7       #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10       #i:I
    .restart local v18       #rs:LSQLite/JDBC2y/JDBCResultSet;
    .restart local v25       #tr:LSQLite/JDBC2y/TableResultX;
    .restart local v26       #types:[I
    :cond_153
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 757
    .local v8, h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    :goto_159
    move-object/from16 v0, v20

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v28, v0

    move v0, v10

    move/from16 v1, v28

    if-ge v0, v1, :cond_18b

    .line 758
    move-object/from16 v0, v20

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v28, v0

    aget-object v28, v28, v10

    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    move v1, v10

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v8

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    add-int/lit8 v10, v10, 0x1

    goto :goto_159

    .line 760
    :cond_18b
    const/4 v10, 0x0

    :goto_18c
    move-object/from16 v0, v19

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v28, v0

    move v0, v10

    move/from16 v1, v28

    if-ge v0, v1, :cond_365

    .line 761
    move-object/from16 v0, v19

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v14, v0

    .line 762
    .local v14, r0:[Ljava/lang/String;
    const-string v28, "unique"

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 763
    .local v4, col:I
    aget-object v27, v14, v4

    .line 764
    .local v27, uniq:Ljava/lang/String;
    const-string v28, "name"

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 765
    aget-object v11, v14, v4

    .line 766
    .local v11, iname:Ljava/lang/String;
    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x30

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1ea

    .line 760
    :cond_1e7
    add-int/lit8 v10, v10, 0x1

    goto :goto_18c

    .line 769
    :cond_1ea
    new-instance v24, LSQLite/JDBC2y/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 770
    .local v24, s2:LSQLite/JDBC2y/JDBCStatement;
    const/16 v21, 0x0

    .line 772
    .local v21, rs2:LSQLite/JDBC2y/JDBCResultSet;
    :try_start_1fb
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "PRAGMA index_info("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v11}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    check-cast p1, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v21, v0
    :try_end_228
    .catchall {:try_start_1fb .. :try_end_228} :catchall_280
    .catch Ljava/sql/SQLException; {:try_start_1fb .. :try_end_228} :catch_27b

    .line 777
    invoke-virtual/range {v24 .. v24}, LSQLite/JDBC2y/JDBCStatement;->close()V

    .line 779
    :goto_22b
    if-eqz v21, :cond_1e7

    move-object/from16 v0, v21

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1e7

    move-object/from16 v0, v21

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v28, v0

    if-lez v28, :cond_1e7

    .line 782
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 784
    .local v9, h2:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, k:I
    :goto_249
    move-object/from16 v0, v21

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v28, v0

    move v0, v12

    move/from16 v1, v28

    if-ge v0, v1, :cond_285

    .line 785
    move-object/from16 v0, v21

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v28, v0

    aget-object v28, v28, v12

    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    move v1, v12

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v9

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    add-int/lit8 v12, v12, 0x1

    goto :goto_249

    .line 775
    .end local v9           #h2:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12           #k:I
    :catch_27b
    move-exception v28

    .line 777
    invoke-virtual/range {v24 .. v24}, LSQLite/JDBC2y/JDBCStatement;->close()V

    goto :goto_22b

    :catchall_280
    move-exception v28

    invoke-virtual/range {v24 .. v24}, LSQLite/JDBC2y/JDBCStatement;->close()V

    throw v28

    .line 787
    .restart local v9       #h2:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12       #k:I
    :cond_285
    const/4 v12, 0x0

    :goto_286
    move-object/from16 v0, v21

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v28, v0

    move v0, v12

    move/from16 v1, v28

    if-ge v0, v1, :cond_1e7

    .line 788
    move-object/from16 v0, v21

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 789
    .local v16, r2:[Ljava/lang/String;
    const-string v28, "name"

    move-object v0, v9

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 790
    aget-object v3, v16, v4

    .line 791
    .local v3, cname:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, m:I
    :goto_2c4
    move-object/from16 v0, v20

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v28, v0

    move v0, v13

    move/from16 v1, v28

    if-ge v0, v1, :cond_361

    .line 792
    move-object/from16 v0, v20

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v15, v0

    .line 793
    .local v15, r1:[Ljava/lang/String;
    const-string v28, "name"

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 794
    aget-object v28, v15, v4

    move-object v0, v3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_35d

    .line 795
    move-object v0, v5

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 796
    .local v17, row:[Ljava/lang/String;
    const/16 v28, 0x0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v17, v28

    .line 797
    const/16 v28, 0x1

    aput-object v3, v17, v28

    .line 798
    const/16 v28, 0x2

    const-string v29, "12"

    aput-object v29, v17, v28

    .line 799
    const/16 v28, 0x3

    const-string v29, "VARCHAR"

    aput-object v29, v17, v28

    .line 800
    const/16 v28, 0x4

    const-string v29, "65536"

    aput-object v29, v17, v28

    .line 801
    const/16 v28, 0x5

    const-string v29, "0"

    aput-object v29, v17, v28

    .line 802
    const/16 v28, 0x6

    const-string v29, "0"

    aput-object v29, v17, v28

    .line 803
    const/16 v28, 0x7

    const-string v29, "1"

    aput-object v29, v17, v28

    .line 804
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 791
    .end local v17           #row:[Ljava/lang/String;
    :cond_35d
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2c4

    .line 787
    .end local v15           #r1:[Ljava/lang/String;
    :cond_361
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_286

    .line 810
    .end local v3           #cname:Ljava/lang/String;
    .end local v4           #col:I
    .end local v7           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9           #h2:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10           #i:I
    .end local v11           #iname:Ljava/lang/String;
    .end local v12           #k:I
    .end local v13           #m:I
    .end local v14           #r0:[Ljava/lang/String;
    .end local v16           #r2:[Ljava/lang/String;
    .end local v21           #rs2:LSQLite/JDBC2y/JDBCResultSet;
    .end local v24           #s2:LSQLite/JDBC2y/JDBCStatement;
    .end local v27           #uniq:Ljava/lang/String;
    :cond_365
    move-object/from16 v0, v25

    iget v0, v0, LSQLite/JDBC2y/TableResultX;->nrows:I

    move/from16 v28, v0

    if-gtz v28, :cond_3c3

    .line 811
    move-object v0, v5

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 812
    .restart local v17       #row:[Ljava/lang/String;
    const/16 v28, 0x0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v17, v28

    .line 813
    const/16 v28, 0x1

    const-string v29, "_ROWID_"

    aput-object v29, v17, v28

    .line 814
    const/16 v28, 0x2

    const-string v29, "4"

    aput-object v29, v17, v28

    .line 815
    const/16 v28, 0x3

    const-string v29, "INTEGER"

    aput-object v29, v17, v28

    .line 816
    const/16 v28, 0x4

    const-string v29, "10"

    aput-object v29, v17, v28

    .line 817
    const/16 v28, 0x5

    const-string v29, "0"

    aput-object v29, v17, v28

    .line 818
    const/16 v28, 0x6

    const-string v29, "0"

    aput-object v29, v17, v28

    .line 819
    const/16 v28, 0x7

    const-string v29, "2"

    aput-object v29, v17, v28

    .line 820
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 822
    .end local v17           #row:[Ljava/lang/String;
    :cond_3c3
    return-object v18

    .line 741
    :array_3c4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getCatalogSeparator()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 276
    const-string v0, ""

    return-object v0
.end method

.method public getCatalogTerm()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 268
    const-string v0, ""

    return-object v0
.end method

.method public getCatalogs()Ljava/sql/ResultSet;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 564
    new-array v0, v6, [Ljava/lang/String;

    const-string v4, "TABLE_CAT"

    aput-object v4, v0, v5

    .line 565
    .local v0, cols:[Ljava/lang/String;
    new-instance v3, LSQLite/TableResult;

    invoke-direct {v3}, LSQLite/TableResult;-><init>()V

    .line 566
    .local v3, tr:LSQLite/TableResult;
    invoke-virtual {v3, v0}, LSQLite/TableResult;->columns([Ljava/lang/String;)V

    .line 567
    new-array v1, v6, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v1, v5

    .line 568
    .local v1, row:[Ljava/lang/String;
    invoke-virtual {v3, v1}, LSQLite/TableResult;->newrow([Ljava/lang/String;)Z

    .line 569
    new-instance v2, LSQLite/JDBC2y/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 570
    .local v2, rs:LSQLite/JDBC2y/JDBCResultSet;
    return-object v2
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 12
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .parameter "columnNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 678
    new-array v0, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TABLE_CAT"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "TABLE_SCHEM"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "TABLE_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "COLUMN_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "GRANTOR"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "GRANTEE"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "PRIVILEGE"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "IS_GRANTABLE"

    aput-object v5, v0, v4

    .line 683
    .local v0, cols:[Ljava/lang/String;
    new-array v3, v6, [I

    fill-array-data v3, :array_44

    .line 688
    .local v3, types:[I
    new-instance v2, LSQLite/JDBC2y/TableResultX;

    invoke-direct {v2}, LSQLite/JDBC2y/TableResultX;-><init>()V

    .line 689
    .local v2, tr:LSQLite/JDBC2y/TableResultX;
    invoke-virtual {v2, v0}, LSQLite/JDBC2y/TableResultX;->columns([Ljava/lang/String;)V

    .line 690
    invoke-virtual {v2, v3}, LSQLite/JDBC2y/TableResultX;->sql_types([I)V

    .line 691
    new-instance v1, LSQLite/JDBC2y/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 692
    .local v1, rs:LSQLite/JDBC2y/JDBCResultSet;
    return-object v1

    .line 683
    nop

    :array_44
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 26
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "tableNamePattern"
    .parameter "columnNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 591
    new-instance v13, LSQLite/JDBC2y/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    move-object/from16 v18, v0

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 592
    .local v13, s:LSQLite/JDBC2y/JDBCStatement;
    const/4 v12, 0x0

    .line 594
    .local v12, rs0:LSQLite/JDBC2y/JDBCResultSet;
    :try_start_f
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PRAGMA table_info("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p3 .. p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p0

    .end local p0
    check-cast p0, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v0, p0

    check-cast v0, LSQLite/JDBC2y/JDBCResultSet;

    move-object v12, v0

    .line 598
    invoke-virtual {v13}, LSQLite/JDBC2y/JDBCStatement;->close()V
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_127
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_3d} :catch_123

    .line 602
    invoke-virtual {v13}, LSQLite/JDBC2y/JDBCStatement;->close()V

    .line 604
    const/16 v18, 0x12

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v5, v0

    const/16 v18, 0x0

    const-string v19, "TABLE_CAT"

    aput-object v19, v5, v18

    const/16 v18, 0x1

    const-string v19, "TABLE_SCHEM"

    aput-object v19, v5, v18

    const/16 v18, 0x2

    const-string v19, "TABLE_NAME"

    aput-object v19, v5, v18

    const/16 v18, 0x3

    const-string v19, "COLUMN_NAME"

    aput-object v19, v5, v18

    const/16 v18, 0x4

    const-string v19, "DATA_TYPE"

    aput-object v19, v5, v18

    const/16 v18, 0x5

    const-string v19, "TYPE_NAME"

    aput-object v19, v5, v18

    const/16 v18, 0x6

    const-string v19, "COLUMN_SIZE"

    aput-object v19, v5, v18

    const/16 v18, 0x7

    const-string v19, "BUFFER_LENGTH"

    aput-object v19, v5, v18

    const/16 v18, 0x8

    const-string v19, "DECIMAL_POINTS"

    aput-object v19, v5, v18

    const/16 v18, 0x9

    const-string v19, "NUM_PREC_RADIX"

    aput-object v19, v5, v18

    const/16 v18, 0xa

    const-string v19, "NULLABLE"

    aput-object v19, v5, v18

    const/16 v18, 0xb

    const-string v19, "REMARKS"

    aput-object v19, v5, v18

    const/16 v18, 0xc

    const-string v19, "COLUMN_DEF"

    aput-object v19, v5, v18

    const/16 v18, 0xd

    const-string v19, "SQL_DATA_TYPE"

    aput-object v19, v5, v18

    const/16 v18, 0xe

    const-string v19, "SQL_DATETIME_SUB"

    aput-object v19, v5, v18

    const/16 v18, 0xf

    const-string v19, "CHAR_OCTET_LENGTH"

    aput-object v19, v5, v18

    const/16 v18, 0x10

    const-string v19, "ORDINAL_POSITION"

    aput-object v19, v5, v18

    const/16 v18, 0x11

    const-string v19, "IS_NULLABLE"

    aput-object v19, v5, v18

    .line 612
    .local v5, cols:[Ljava/lang/String;
    const/16 v18, 0x12

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_2d4

    .line 620
    .local v17, types:[I
    new-instance v14, LSQLite/JDBC2y/TableResultX;

    invoke-direct {v14}, LSQLite/JDBC2y/TableResultX;-><init>()V

    .line 621
    .local v14, tr:LSQLite/JDBC2y/TableResultX;
    invoke-virtual {v14, v5}, LSQLite/JDBC2y/TableResultX;->columns([Ljava/lang/String;)V

    .line 622
    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/TableResultX;->sql_types([I)V

    .line 623
    new-instance v11, LSQLite/JDBC2y/JDBCResultSet;

    const/16 v18, 0x0

    move-object v0, v11

    move-object v1, v14

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 624
    .local v11, rs:LSQLite/JDBC2y/JDBCResultSet;
    if-eqz v12, :cond_2d3

    move-object v0, v12

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2d3

    move-object v0, v12

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v18, v0

    if-lez v18, :cond_2d3

    .line 625
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 626
    .local v7, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_f3
    move-object v0, v12

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_12c

    .line 627
    move-object v0, v12

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    move v1, v8

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    add-int/lit8 v8, v8, 0x1

    goto :goto_f3

    .line 599
    .end local v5           #cols:[Ljava/lang/String;
    .end local v7           #h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #i:I
    .end local v11           #rs:LSQLite/JDBC2y/JDBCResultSet;
    .end local v14           #tr:LSQLite/JDBC2y/TableResultX;
    .end local v17           #types:[I
    :catch_123
    move-exception v18

    move-object/from16 v6, v18

    .line 600
    .local v6, e:Ljava/sql/SQLException;
    :try_start_126
    throw v6
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_127

    .line 602
    .end local v6           #e:Ljava/sql/SQLException;
    :catchall_127
    move-exception v18

    invoke-virtual {v13}, LSQLite/JDBC2y/JDBCStatement;->close()V

    throw v18

    .line 629
    .restart local v5       #cols:[Ljava/lang/String;
    .restart local v7       #h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8       #i:I
    .restart local v11       #rs:LSQLite/JDBC2y/JDBCResultSet;
    .restart local v14       #tr:LSQLite/JDBC2y/TableResultX;
    .restart local v17       #types:[I
    :cond_12c
    if-eqz p4, :cond_142

    const/16 v18, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x25

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_142

    .line 631
    const/16 p4, 0x0

    .line 633
    :cond_142
    const/4 v8, 0x0

    :goto_143
    move-object v0, v12

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_2d3

    .line 634
    move-object v0, v12

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    .line 635
    .local v9, r0:[Ljava/lang/String;
    const-string v18, "name"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 636
    .local v4, col:I
    if-eqz p4, :cond_18c

    .line 637
    aget-object v18, v9, v4

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_18c

    .line 633
    :goto_189
    add-int/lit8 v8, v8, 0x1

    goto :goto_143

    .line 641
    :cond_18c
    move-object v0, v5

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v10, v0

    .line 642
    .local v10, row:[Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v10, v18

    .line 643
    const/16 v18, 0x1

    const-string v19, ""

    aput-object v19, v10, v18

    .line 644
    const/16 v18, 0x2

    aput-object p3, v10, v18

    .line 645
    const/16 v18, 0x3

    aget-object v19, v9, v4

    aput-object v19, v10, v18

    .line 646
    const-string v18, "type"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 647
    aget-object v16, v9, v4

    .line 648
    .local v16, typeStr:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, LSQLite/JDBC2y/JDBCDatabaseMetaData;->mapSqlType(Ljava/lang/String;)I

    move-result v15

    .line 649
    .local v15, type:I
    const/16 v18, 0x4

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .line 650
    const/16 v18, 0x5

    invoke-static {v15}, LSQLite/JDBC2y/JDBCDatabaseMetaData;->mapTypeName(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .line 651
    const/16 v18, 0x6

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, LSQLite/JDBC2y/JDBCDatabaseMetaData;->getD(Ljava/lang/String;I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .line 652
    const/16 v18, 0x7

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, LSQLite/JDBC2y/JDBCDatabaseMetaData;->getM(Ljava/lang/String;I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .line 653
    const/16 v18, 0x8

    const-string v19, "10"

    aput-object v19, v10, v18

    .line 654
    const/16 v18, 0x9

    const-string v19, "0"

    aput-object v19, v10, v18

    .line 655
    const/16 v18, 0xb

    const/16 v19, 0x0

    aput-object v19, v10, v18

    .line 656
    const-string v18, "dflt_value"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 657
    const/16 v18, 0xc

    aget-object v19, v9, v4

    aput-object v19, v10, v18

    .line 658
    const/16 v18, 0xd

    const-string v19, "0"

    aput-object v19, v10, v18

    .line 659
    const/16 v18, 0xe

    const-string v19, "0"

    aput-object v19, v10, v18

    .line 660
    const/16 v18, 0xf

    const-string v19, "65536"

    aput-object v19, v10, v18

    .line 661
    const-string v18, "cid"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 662
    new-instance v3, Ljava/lang/Integer;

    aget-object v18, v9, v4

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 663
    .local v3, cid:Ljava/lang/Integer;
    const/16 v18, 0x10

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .line 664
    const-string v18, "notnull"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 665
    const/16 v18, 0x11

    aget-object v19, v9, v4

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2cd

    const-string v19, "YES"

    :goto_2b0
    aput-object v19, v10, v18

    .line 666
    const/16 v18, 0xa

    aget-object v19, v9, v4

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d0

    const-string v19, "1"

    :goto_2c6
    aput-object v19, v10, v18

    .line 668
    invoke-virtual {v14, v10}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    goto/16 :goto_189

    .line 665
    :cond_2cd
    const-string v19, "NO"

    goto :goto_2b0

    .line 666
    :cond_2d0
    const-string v19, "0"

    goto :goto_2c6

    .line 671
    .end local v3           #cid:Ljava/lang/Integer;
    .end local v4           #col:I
    .end local v7           #h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #i:I
    .end local v9           #r0:[Ljava/lang/String;
    .end local v10           #row:[Ljava/lang/String;
    .end local v15           #type:I
    .end local v16           #typeStr:Ljava/lang/String;
    :cond_2d3
    return-object v11

    .line 612
    :array_2d4
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getConnection()Ljava/sql/Connection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1385
    iget-object v0, p0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    return-object v0
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 22
    .parameter "primaryCatalog"
    .parameter "primarySchema"
    .parameter "primaryTable"
    .parameter "foreignCatalog"
    .parameter "foreignSchema"
    .parameter "foreignTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1072
    const/4 v9, 0x0

    .line 1073
    .local v9, rs0:LSQLite/JDBC2y/JDBCResultSet;
    if-eqz p6, :cond_41

    const/4 v13, 0x0

    move-object/from16 v0, p6

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x25

    if-eq v13, v14, :cond_41

    .line 1074
    new-instance v10, LSQLite/JDBC2y/JDBCStatement;

    iget-object v13, p0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    invoke-direct {v10, v13}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 1076
    .local v10, s0:LSQLite/JDBC2y/JDBCStatement;
    :try_start_16
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PRAGMA foreign_key_list("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p6 .. p6}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .end local p1
    check-cast p1, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2y/JDBCResultSet;

    move-object v9, v0
    :try_end_3e
    .catchall {:try_start_16 .. :try_end_3e} :catchall_d3
    .catch Ljava/sql/SQLException; {:try_start_16 .. :try_end_3e} :catch_d0

    .line 1082
    invoke-virtual {v10}, LSQLite/JDBC2y/JDBCStatement;->close()V

    .line 1085
    .end local v10           #s0:LSQLite/JDBC2y/JDBCStatement;
    :cond_41
    const/16 v13, 0xe

    new-array v5, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "PKTABLE_CAT"

    aput-object v14, v5, v13

    const/4 v13, 0x1

    const-string v14, "PKTABLE_SCHEM"

    aput-object v14, v5, v13

    const/4 v13, 0x2

    const-string v14, "PKTABLE_NAME"

    aput-object v14, v5, v13

    const/4 v13, 0x3

    const-string v14, "PKCOLUMN_NAME"

    aput-object v14, v5, v13

    const/4 v13, 0x4

    const-string v14, "FKTABLE_CAT"

    aput-object v14, v5, v13

    const/4 v13, 0x5

    const-string v14, "FKTABLE_SCHEM"

    aput-object v14, v5, v13

    const/4 v13, 0x6

    const-string v14, "FKTABLE_NAME"

    aput-object v14, v5, v13

    const/4 v13, 0x7

    const-string v14, "FKCOLUMN_NAME"

    aput-object v14, v5, v13

    const/16 v13, 0x8

    const-string v14, "KEY_SEQ"

    aput-object v14, v5, v13

    const/16 v13, 0x9

    const-string v14, "UPDATE_RULE"

    aput-object v14, v5, v13

    const/16 v13, 0xa

    const-string v14, "DELETE_RULE"

    aput-object v14, v5, v13

    const/16 v13, 0xb

    const-string v14, "FK_NAME"

    aput-object v14, v5, v13

    const/16 v13, 0xc

    const-string v14, "PK_NAME"

    aput-object v14, v5, v13

    const/16 v13, 0xd

    const-string v14, "DEFERRABILITY"

    aput-object v14, v5, v13

    .line 1092
    .local v5, cols:[Ljava/lang/String;
    const/16 v13, 0xe

    new-array v12, v13, [I

    fill-array-data v12, :array_d8

    .line 1099
    .local v12, types:[I
    new-instance v11, LSQLite/JDBC2y/TableResultX;

    invoke-direct {v11}, LSQLite/JDBC2y/TableResultX;-><init>()V

    .line 1100
    .local v11, tr:LSQLite/JDBC2y/TableResultX;
    invoke-virtual {v11, v5}, LSQLite/JDBC2y/TableResultX;->columns([Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v11, v12}, LSQLite/JDBC2y/TableResultX;->sql_types([I)V

    .line 1102
    new-instance v8, LSQLite/JDBC2y/JDBCResultSet;

    const/4 v13, 0x0

    invoke-direct {v8, v11, v13}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 1103
    .local v8, rs:LSQLite/JDBC2y/JDBCResultSet;
    if-eqz v9, :cond_cf

    iget-object v13, v9, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v13, :cond_cf

    iget-object v13, v9, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v13, v13, LSQLite/TableResult;->nrows:I

    if-lez v13, :cond_cf

    .line 1104
    const/4 v7, 0x0

    .line 1105
    .local v7, pktable:Ljava/lang/String;
    if-eqz p3, :cond_c6

    const/4 v13, 0x0

    move-object/from16 v0, p3

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x25

    if-eq v13, v14, :cond_c6

    .line 1106
    move-object/from16 v7, p3

    .line 1108
    :cond_c6
    move-object v0, p0

    move-object/from16 v1, p6

    move-object v2, v7

    move-object v3, v9

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, LSQLite/JDBC2y/JDBCDatabaseMetaData;->internalImportedKeys(Ljava/lang/String;Ljava/lang/String;LSQLite/JDBC2y/JDBCResultSet;LSQLite/JDBC2y/TableResultX;)V

    .line 1110
    .end local v7           #pktable:Ljava/lang/String;
    :cond_cf
    return-object v8

    .line 1079
    .end local v5           #cols:[Ljava/lang/String;
    .end local v8           #rs:LSQLite/JDBC2y/JDBCResultSet;
    .end local v11           #tr:LSQLite/JDBC2y/TableResultX;
    .end local v12           #types:[I
    .restart local v10       #s0:LSQLite/JDBC2y/JDBCStatement;
    :catch_d0
    move-exception v13

    move-object v6, v13

    .line 1080
    .local v6, e:Ljava/sql/SQLException;
    :try_start_d2
    throw v6
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d3

    .line 1082
    .end local v6           #e:Ljava/sql/SQLException;
    :catchall_d3
    move-exception v13

    invoke-virtual {v10}, LSQLite/JDBC2y/JDBCStatement;->close()V

    throw v13

    .line 1092
    :array_d8
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getDatabaseMajorVersion()I
    .registers 2

    .prologue
    .line 1559
    const/4 v0, 0x1

    return v0
.end method

.method public getDatabaseMinorVersion()I
    .registers 2

    .prologue
    .line 1563
    const/4 v0, 0x2

    return v0
.end method

.method public getDatabaseProductName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "SQLite"

    return-object v0
.end method

.method public getDatabaseProductVersion()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, LSQLite/Database;->version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTransactionIsolation()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 466
    const/16 v0, 0x8

    return v0
.end method

.method public getDriverMajorVersion()I
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public getDriverMinorVersion()I
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x2

    return v0
.end method

.method public getDriverName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "SQLite/JDBC"

    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, "1.2"

    return-object v0
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 11
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xe

    .line 1044
    new-array v0, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "PKTABLE_CAT"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "PKTABLE_SCHEM"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "PKTABLE_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "PKCOLUMN_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "FKTABLE_CAT"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "FKTABLE_SCHEM"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "FKTABLE_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "FKCOLUMN_NAME"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "KEY_SEQ"

    aput-object v5, v0, v4

    const/16 v4, 0x9

    const-string v5, "UPDATE_RULE"

    aput-object v5, v0, v4

    const/16 v4, 0xa

    const-string v5, "DELETE_RULE"

    aput-object v5, v0, v4

    const/16 v4, 0xb

    const-string v5, "FK_NAME"

    aput-object v5, v0, v4

    const/16 v4, 0xc

    const-string v5, "PK_NAME"

    aput-object v5, v0, v4

    const/16 v4, 0xd

    const-string v5, "DEFERRABILITY"

    aput-object v5, v0, v4

    .line 1051
    .local v0, cols:[Ljava/lang/String;
    new-array v3, v6, [I

    fill-array-data v3, :array_68

    .line 1058
    .local v3, types:[I
    new-instance v2, LSQLite/JDBC2y/TableResultX;

    invoke-direct {v2}, LSQLite/JDBC2y/TableResultX;-><init>()V

    .line 1059
    .local v2, tr:LSQLite/JDBC2y/TableResultX;
    invoke-virtual {v2, v0}, LSQLite/JDBC2y/TableResultX;->columns([Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v2, v3}, LSQLite/JDBC2y/TableResultX;->sql_types([I)V

    .line 1061
    new-instance v1, LSQLite/JDBC2y/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 1062
    .local v1, rs:LSQLite/JDBC2y/JDBCResultSet;
    return-object v1

    .line 1051
    nop

    :array_68
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getExtraNameCharacters()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 145
    const-string v0, ""

    return-object v0
.end method

.method public getIdentifierQuoteString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v0, "\""

    return-object v0
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 16
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xe

    .line 1007
    new-instance v5, LSQLite/JDBC2y/JDBCStatement;

    iget-object v8, p0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    invoke-direct {v5, v8}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 1008
    .local v5, s0:LSQLite/JDBC2y/JDBCStatement;
    const/4 v4, 0x0

    .line 1010
    .local v4, rs0:LSQLite/JDBC2y/JDBCResultSet;
    :try_start_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PRAGMA foreign_key_list("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v8

    check-cast v8, LSQLite/JDBC2y/JDBCResultSet;

    move-object v0, v8

    check-cast v0, LSQLite/JDBC2y/JDBCResultSet;

    move-object v4, v0
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_ab
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_32} :catch_a8

    .line 1016
    invoke-virtual {v5}, LSQLite/JDBC2y/JDBCStatement;->close()V

    .line 1018
    new-array v1, v10, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "PKTABLE_CAT"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "PKTABLE_SCHEM"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string v9, "PKTABLE_NAME"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const-string v9, "PKCOLUMN_NAME"

    aput-object v9, v1, v8

    const/4 v8, 0x4

    const-string v9, "FKTABLE_CAT"

    aput-object v9, v1, v8

    const/4 v8, 0x5

    const-string v9, "FKTABLE_SCHEM"

    aput-object v9, v1, v8

    const/4 v8, 0x6

    const-string v9, "FKTABLE_NAME"

    aput-object v9, v1, v8

    const/4 v8, 0x7

    const-string v9, "FKCOLUMN_NAME"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string v9, "KEY_SEQ"

    aput-object v9, v1, v8

    const/16 v8, 0x9

    const-string v9, "UPDATE_RULE"

    aput-object v9, v1, v8

    const/16 v8, 0xa

    const-string v9, "DELETE_RULE"

    aput-object v9, v1, v8

    const/16 v8, 0xb

    const-string v9, "FK_NAME"

    aput-object v9, v1, v8

    const/16 v8, 0xc

    const-string v9, "PK_NAME"

    aput-object v9, v1, v8

    const/16 v8, 0xd

    const-string v9, "DEFERRABILITY"

    aput-object v9, v1, v8

    .line 1025
    .local v1, cols:[Ljava/lang/String;
    new-array v7, v10, [I

    fill-array-data v7, :array_b0

    .line 1032
    .local v7, types:[I
    new-instance v6, LSQLite/JDBC2y/TableResultX;

    invoke-direct {v6}, LSQLite/JDBC2y/TableResultX;-><init>()V

    .line 1033
    .local v6, tr:LSQLite/JDBC2y/TableResultX;
    invoke-virtual {v6, v1}, LSQLite/JDBC2y/TableResultX;->columns([Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v6, v7}, LSQLite/JDBC2y/TableResultX;->sql_types([I)V

    .line 1035
    new-instance v3, LSQLite/JDBC2y/JDBCResultSet;

    invoke-direct {v3, v6, v11}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 1036
    .local v3, rs:LSQLite/JDBC2y/JDBCResultSet;
    if-eqz v4, :cond_a7

    iget-object v8, v4, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v8, :cond_a7

    iget-object v8, v4, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v8, v8, LSQLite/TableResult;->nrows:I

    if-lez v8, :cond_a7

    .line 1037
    invoke-direct {p0, p3, v11, v4, v6}, LSQLite/JDBC2y/JDBCDatabaseMetaData;->internalImportedKeys(Ljava/lang/String;Ljava/lang/String;LSQLite/JDBC2y/JDBCResultSet;LSQLite/JDBC2y/TableResultX;)V

    .line 1039
    :cond_a7
    return-object v3

    .line 1013
    .end local v1           #cols:[Ljava/lang/String;
    .end local v3           #rs:LSQLite/JDBC2y/JDBCResultSet;
    .end local v6           #tr:LSQLite/JDBC2y/TableResultX;
    .end local v7           #types:[I
    :catch_a8
    move-exception v8

    move-object v2, v8

    .line 1014
    .local v2, e:Ljava/sql/SQLException;
    :try_start_aa
    throw v2
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    .line 1016
    .end local v2           #e:Ljava/sql/SQLException;
    :catchall_ab
    move-exception v8

    invoke-virtual {v5}, LSQLite/JDBC2y/JDBCStatement;->close()V

    throw v8

    .line 1025
    :array_b0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .registers 31
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .parameter "unique"
    .parameter "approximate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1239
    new-instance v17, LSQLite/JDBC2y/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 1240
    .local v17, s0:LSQLite/JDBC2y/JDBCStatement;
    const/4 v15, 0x0

    .line 1242
    .local v15, rs0:LSQLite/JDBC2y/JDBCResultSet;
    :try_start_10
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "PRAGMA index_list("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {p3 .. p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .end local p1
    check-cast p1, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2y/JDBCResultSet;

    move-object v15, v0
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_109
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_3c} :catch_105

    .line 1248
    invoke-virtual/range {v17 .. v17}, LSQLite/JDBC2y/JDBCStatement;->close()V

    .line 1250
    const/16 v22, 0xd

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    const/16 v22, 0x0

    const-string v23, "TABLE_CAT"

    aput-object v23, v4, v22

    const/16 v22, 0x1

    const-string v23, "TABLE_SCHEM"

    aput-object v23, v4, v22

    const/16 v22, 0x2

    const-string v23, "TABLE_NAME"

    aput-object v23, v4, v22

    const/16 v22, 0x3

    const-string v23, "NON_UNIQUE"

    aput-object v23, v4, v22

    const/16 v22, 0x4

    const-string v23, "INDEX_QUALIFIER"

    aput-object v23, v4, v22

    const/16 v22, 0x5

    const-string v23, "INDEX_NAME"

    aput-object v23, v4, v22

    const/16 v22, 0x6

    const-string v23, "TYPE"

    aput-object v23, v4, v22

    const/16 v22, 0x7

    const-string v23, "ORDINAL_POSITION"

    aput-object v23, v4, v22

    const/16 v22, 0x8

    const-string v23, "COLUMN_NAME"

    aput-object v23, v4, v22

    const/16 v22, 0x9

    const-string v23, "ASC_OR_DESC"

    aput-object v23, v4, v22

    const/16 v22, 0xa

    const-string v23, "CARDINALITY"

    aput-object v23, v4, v22

    const/16 v22, 0xb

    const-string v23, "PAGES"

    aput-object v23, v4, v22

    const/16 v22, 0xc

    const-string v23, "FILTER_CONDITION"

    aput-object v23, v4, v22

    .line 1257
    .local v4, cols:[Ljava/lang/String;
    const/16 v22, 0xd

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_2fa

    .line 1264
    .local v20, types:[I
    new-instance v19, LSQLite/JDBC2y/TableResultX;

    invoke-direct/range {v19 .. v19}, LSQLite/JDBC2y/TableResultX;-><init>()V

    .line 1265
    .local v19, tr:LSQLite/JDBC2y/TableResultX;
    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/TableResultX;->columns([Ljava/lang/String;)V

    .line 1266
    invoke-virtual/range {v19 .. v20}, LSQLite/JDBC2y/TableResultX;->sql_types([I)V

    .line 1267
    new-instance v14, LSQLite/JDBC2y/JDBCResultSet;

    const/16 v22, 0x0

    move-object v0, v14

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 1268
    .local v14, rs:LSQLite/JDBC2y/JDBCResultSet;
    if-eqz v15, :cond_2f9

    move-object v0, v15

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2f9

    move-object v0, v15

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v22, v0

    if-lez v22, :cond_2f9

    .line 1269
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 1270
    .local v6, h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_d5
    move-object v0, v15

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v22, v0

    move v0, v8

    move/from16 v1, v22

    if-ge v0, v1, :cond_10e

    .line 1271
    move-object v0, v15

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v8

    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v23

    move v1, v8

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    add-int/lit8 v8, v8, 0x1

    goto :goto_d5

    .line 1245
    .end local v4           #cols:[Ljava/lang/String;
    .end local v6           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #i:I
    .end local v14           #rs:LSQLite/JDBC2y/JDBCResultSet;
    .end local v19           #tr:LSQLite/JDBC2y/TableResultX;
    .end local v20           #types:[I
    :catch_105
    move-exception v22

    move-object/from16 v5, v22

    .line 1246
    .local v5, e:Ljava/sql/SQLException;
    :try_start_108
    throw v5
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_109

    .line 1248
    .end local v5           #e:Ljava/sql/SQLException;
    :catchall_109
    move-exception v22

    invoke-virtual/range {v17 .. v17}, LSQLite/JDBC2y/JDBCStatement;->close()V

    throw v22

    .line 1273
    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v6       #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8       #i:I
    .restart local v14       #rs:LSQLite/JDBC2y/JDBCResultSet;
    .restart local v19       #tr:LSQLite/JDBC2y/TableResultX;
    .restart local v20       #types:[I
    :cond_10e
    const/4 v8, 0x0

    :goto_10f
    move-object v0, v15

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v22, v0

    move v0, v8

    move/from16 v1, v22

    if-ge v0, v1, :cond_2f9

    .line 1274
    move-object v0, v15

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v11, v0

    .line 1275
    .local v11, r0:[Ljava/lang/String;
    const-string v22, "unique"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1276
    .local v3, col:I
    aget-object v21, v11, v3

    .line 1277
    .local v21, uniq:Ljava/lang/String;
    const-string v22, "name"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1278
    aget-object v9, v11, v3

    .line 1279
    .local v9, iname:Ljava/lang/String;
    if-eqz p4, :cond_16d

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x30

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16d

    .line 1273
    :cond_16a
    add-int/lit8 v8, v8, 0x1

    goto :goto_10f

    .line 1282
    :cond_16d
    new-instance v18, LSQLite/JDBC2y/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 1283
    .local v18, s1:LSQLite/JDBC2y/JDBCStatement;
    const/16 v16, 0x0

    .line 1285
    .local v16, rs1:LSQLite/JDBC2y/JDBCResultSet;
    :try_start_17e
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "PRAGMA index_info("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v9}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    check-cast p1, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v16, v0
    :try_end_1ab
    .catchall {:try_start_17e .. :try_end_1ab} :catchall_203
    .catch Ljava/sql/SQLException; {:try_start_17e .. :try_end_1ab} :catch_1fe

    .line 1290
    invoke-virtual/range {v18 .. v18}, LSQLite/JDBC2y/JDBCStatement;->close()V

    .line 1292
    :goto_1ae
    if-eqz v16, :cond_16a

    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16a

    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v22, v0

    if-lez v22, :cond_16a

    .line 1295
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 1297
    .local v7, h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, k:I
    :goto_1cc
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v22, v0

    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_208

    .line 1298
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v23

    move v1, v10

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    add-int/lit8 v10, v10, 0x1

    goto :goto_1cc

    .line 1288
    .end local v7           #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10           #k:I
    :catch_1fe
    move-exception v22

    .line 1290
    invoke-virtual/range {v18 .. v18}, LSQLite/JDBC2y/JDBCStatement;->close()V

    goto :goto_1ae

    :catchall_203
    move-exception v22

    invoke-virtual/range {v18 .. v18}, LSQLite/JDBC2y/JDBCStatement;->close()V

    throw v22

    .line 1300
    .restart local v7       #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10       #k:I
    :cond_208
    const/4 v10, 0x0

    :goto_209
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v22, v0

    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_16a

    .line 1301
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v12, v0

    .line 1302
    .local v12, r1:[Ljava/lang/String;
    move-object v0, v4

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1303
    .local v13, row:[Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, ""

    aput-object v23, v13, v22

    .line 1304
    const/16 v22, 0x1

    const-string v23, ""

    aput-object v23, v13, v22

    .line 1305
    const/16 v22, 0x2

    aput-object p3, v13, v22

    .line 1306
    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_27d

    const/16 v23, 0x0

    move-object v0, v9

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x28

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2f6

    const-string v23, " autoindex "

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    if-lez v23, :cond_2f6

    :cond_27d
    const-string v23, "0"

    :goto_27f
    aput-object v23, v13, v22

    .line 1309
    const/16 v22, 0x4

    const-string v23, ""

    aput-object v23, v13, v22

    .line 1310
    const/16 v22, 0x5

    aput-object v9, v13, v22

    .line 1311
    const/16 v22, 0x6

    const-string v23, "3"

    aput-object v23, v13, v22

    .line 1312
    const-string v22, "seqno"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1314
    const/16 v22, 0x7

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, v12, v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v13, v22

    .line 1316
    const-string v22, "name"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1317
    const/16 v22, 0x8

    aget-object v23, v12, v3

    aput-object v23, v13, v22

    .line 1318
    const/16 v22, 0x9

    const-string v23, "A"

    aput-object v23, v13, v22

    .line 1319
    const/16 v22, 0xa

    const-string v23, "0"

    aput-object v23, v13, v22

    .line 1320
    const/16 v22, 0xb

    const-string v23, "0"

    aput-object v23, v13, v22

    .line 1321
    const/16 v22, 0xc

    const/16 v23, 0x0

    aput-object v23, v13, v22

    .line 1322
    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1300
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_209

    .line 1306
    :cond_2f6
    const-string v23, "1"

    goto :goto_27f

    .line 1326
    .end local v3           #col:I
    .end local v6           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7           #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #i:I
    .end local v9           #iname:Ljava/lang/String;
    .end local v10           #k:I
    .end local v11           #r0:[Ljava/lang/String;
    .end local v12           #r1:[Ljava/lang/String;
    .end local v13           #row:[Ljava/lang/String;
    .end local v16           #rs1:LSQLite/JDBC2y/JDBCResultSet;
    .end local v18           #s1:LSQLite/JDBC2y/JDBCStatement;
    .end local v21           #uniq:Ljava/lang/String;
    :cond_2f9
    return-object v14

    .line 1257
    :array_2fa
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xf9t 0xfft 0xfft 0xfft
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getJDBCMajorVersion()I
    .registers 2

    .prologue
    .line 1567
    const/4 v0, 0x1

    return v0
.end method

.method public getJDBCMinorVersion()I
    .registers 2

    .prologue
    .line 1571
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxBinaryLiteralLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCatalogNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCharLiteralLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInGroupBy()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInIndex()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInOrderBy()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInSelect()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInTable()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxConnections()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCursorNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 418
    const/16 v0, 0x8

    return v0
.end method

.method public getMaxIndexLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxProcedureNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRowSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSchemaNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatementLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatements()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTableNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTablesInSelect()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxUserNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public getNumericFunctions()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 125
    const-string v0, ""

    return-object v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 31
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 846
    new-instance v18, LSQLite/JDBC2y/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 847
    .local v18, s0:LSQLite/JDBC2y/JDBCStatement;
    const/16 v16, 0x0

    .line 849
    .local v16, rs0:LSQLite/JDBC2y/JDBCResultSet;
    :try_start_11
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "PRAGMA index_list("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p3 .. p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .end local p1
    check-cast p1, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v16, v0
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_e9
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_3e} :catch_e5

    .line 855
    invoke-virtual/range {v18 .. v18}, LSQLite/JDBC2y/JDBCStatement;->close()V

    .line 857
    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    const/16 v24, 0x0

    const-string v25, "TABLE_CAT"

    aput-object v25, v4, v24

    const/16 v24, 0x1

    const-string v25, "TABLE_SCHEM"

    aput-object v25, v4, v24

    const/16 v24, 0x2

    const-string v25, "TABLE_NAME"

    aput-object v25, v4, v24

    const/16 v24, 0x3

    const-string v25, "COLUMN_NAME"

    aput-object v25, v4, v24

    const/16 v24, 0x4

    const-string v25, "KEY_SEQ"

    aput-object v25, v4, v24

    const/16 v24, 0x5

    const-string v25, "PK_NAME"

    aput-object v25, v4, v24

    .line 861
    .local v4, cols:[Ljava/lang/String;
    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_3f0

    .line 865
    .local v22, types:[I
    new-instance v20, LSQLite/JDBC2y/TableResultX;

    invoke-direct/range {v20 .. v20}, LSQLite/JDBC2y/TableResultX;-><init>()V

    .line 866
    .local v20, tr:LSQLite/JDBC2y/TableResultX;
    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/TableResultX;->columns([Ljava/lang/String;)V

    .line 867
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/TableResultX;->sql_types([I)V

    .line 868
    new-instance v15, LSQLite/JDBC2y/JDBCResultSet;

    const/16 v24, 0x0

    move-object v0, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 869
    .local v15, rs:LSQLite/JDBC2y/JDBCResultSet;
    if-eqz v16, :cond_27e

    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    if-eqz v24, :cond_27e

    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v24, v0

    if-lez v24, :cond_27e

    .line 870
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 871
    .local v6, h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_b3
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v24, v0

    move v0, v8

    move/from16 v1, v24

    if-ge v0, v1, :cond_ee

    .line 872
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v8

    new-instance v25, Ljava/lang/Integer;

    move-object/from16 v0, v25

    move v1, v8

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    add-int/lit8 v8, v8, 0x1

    goto :goto_b3

    .line 852
    .end local v4           #cols:[Ljava/lang/String;
    .end local v6           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #i:I
    .end local v15           #rs:LSQLite/JDBC2y/JDBCResultSet;
    .end local v20           #tr:LSQLite/JDBC2y/TableResultX;
    .end local v22           #types:[I
    :catch_e5
    move-exception v24

    move-object/from16 v5, v24

    .line 853
    .local v5, e:Ljava/sql/SQLException;
    :try_start_e8
    throw v5
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e9

    .line 855
    .end local v5           #e:Ljava/sql/SQLException;
    :catchall_e9
    move-exception v24

    invoke-virtual/range {v18 .. v18}, LSQLite/JDBC2y/JDBCStatement;->close()V

    throw v24

    .line 874
    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v6       #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8       #i:I
    .restart local v15       #rs:LSQLite/JDBC2y/JDBCResultSet;
    .restart local v20       #tr:LSQLite/JDBC2y/TableResultX;
    .restart local v22       #types:[I
    :cond_ee
    const/4 v8, 0x0

    :goto_ef
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v24, v0

    move v0, v8

    move/from16 v1, v24

    if-ge v0, v1, :cond_27e

    .line 875
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v12, v0

    .line 876
    .local v12, r0:[Ljava/lang/String;
    const-string v24, "unique"

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 877
    .local v3, col:I
    aget-object v23, v12, v3

    .line 878
    .local v23, uniq:Ljava/lang/String;
    const-string v24, "name"

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 879
    aget-object v9, v12, v3

    .line 880
    .local v9, iname:Ljava/lang/String;
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x30

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_14d

    .line 874
    :cond_14a
    add-int/lit8 v8, v8, 0x1

    goto :goto_ef

    .line 883
    :cond_14d
    new-instance v19, LSQLite/JDBC2y/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 884
    .local v19, s1:LSQLite/JDBC2y/JDBCStatement;
    const/16 v17, 0x0

    .line 886
    .local v17, rs1:LSQLite/JDBC2y/JDBCResultSet;
    :try_start_15e
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "PRAGMA index_info("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v9}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    check-cast p1, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v17, v0
    :try_end_18b
    .catchall {:try_start_15e .. :try_end_18b} :catchall_1e3
    .catch Ljava/sql/SQLException; {:try_start_15e .. :try_end_18b} :catch_1de

    .line 891
    invoke-virtual/range {v19 .. v19}, LSQLite/JDBC2y/JDBCStatement;->close()V

    .line 893
    :goto_18e
    if-eqz v17, :cond_14a

    move-object/from16 v0, v17

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14a

    move-object/from16 v0, v17

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v24, v0

    if-lez v24, :cond_14a

    .line 896
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 898
    .local v7, h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, k:I
    :goto_1ac
    move-object/from16 v0, v17

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v24, v0

    move v0, v10

    move/from16 v1, v24

    if-ge v0, v1, :cond_1e8

    .line 899
    move-object/from16 v0, v17

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    new-instance v25, Ljava/lang/Integer;

    move-object/from16 v0, v25

    move v1, v10

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v7

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    add-int/lit8 v10, v10, 0x1

    goto :goto_1ac

    .line 889
    .end local v7           #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10           #k:I
    :catch_1de
    move-exception v24

    .line 891
    invoke-virtual/range {v19 .. v19}, LSQLite/JDBC2y/JDBCStatement;->close()V

    goto :goto_18e

    :catchall_1e3
    move-exception v24

    invoke-virtual/range {v19 .. v19}, LSQLite/JDBC2y/JDBCStatement;->close()V

    throw v24

    .line 901
    .restart local v7       #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10       #k:I
    :cond_1e8
    const/4 v10, 0x0

    :goto_1e9
    move-object/from16 v0, v17

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v24, v0

    move v0, v10

    move/from16 v1, v24

    if-ge v0, v1, :cond_14a

    .line 902
    move-object/from16 v0, v17

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 903
    .local v13, r1:[Ljava/lang/String;
    move-object v0, v4

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object v14, v0

    .line 904
    .local v14, row:[Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, ""

    aput-object v25, v14, v24

    .line 905
    const/16 v24, 0x1

    const-string v25, ""

    aput-object v25, v14, v24

    .line 906
    const/16 v24, 0x2

    aput-object p3, v14, v24

    .line 907
    const-string v24, "name"

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 908
    const/16 v24, 0x3

    aget-object v25, v13, v3

    aput-object v25, v14, v24

    .line 909
    const-string v24, "seqno"

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 911
    const/16 v24, 0x4

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v13, v3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v14, v24

    .line 913
    const/16 v24, 0x5

    aput-object v9, v14, v24

    .line 914
    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 901
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1e9

    .line 918
    .end local v3           #col:I
    .end local v6           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7           #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #i:I
    .end local v9           #iname:Ljava/lang/String;
    .end local v10           #k:I
    .end local v12           #r0:[Ljava/lang/String;
    .end local v13           #r1:[Ljava/lang/String;
    .end local v14           #row:[Ljava/lang/String;
    .end local v17           #rs1:LSQLite/JDBC2y/JDBCResultSet;
    .end local v19           #s1:LSQLite/JDBC2y/JDBCStatement;
    .end local v23           #uniq:Ljava/lang/String;
    :cond_27e
    new-instance v19, LSQLite/JDBC2y/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 920
    .restart local v19       #s1:LSQLite/JDBC2y/JDBCStatement;
    :try_start_28d
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "PRAGMA table_info("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p3 .. p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p0

    .end local p0
    check-cast p0, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v0, p0

    check-cast v0, LSQLite/JDBC2y/JDBCResultSet;

    move-object/from16 v16, v0
    :try_end_2ba
    .catchall {:try_start_28d .. :try_end_2ba} :catchall_311
    .catch Ljava/sql/SQLException; {:try_start_28d .. :try_end_2ba} :catch_30d

    .line 926
    invoke-virtual/range {v19 .. v19}, LSQLite/JDBC2y/JDBCStatement;->close()V

    .line 928
    if-eqz v16, :cond_3ee

    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3ee

    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v24, v0

    if-lez v24, :cond_3ee

    .line 929
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 930
    .restart local v6       #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2db
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v24, v0

    move v0, v8

    move/from16 v1, v24

    if-ge v0, v1, :cond_316

    .line 931
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v8

    new-instance v25, Ljava/lang/Integer;

    move-object/from16 v0, v25

    move v1, v8

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    add-int/lit8 v8, v8, 0x1

    goto :goto_2db

    .line 923
    .end local v6           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #i:I
    :catch_30d
    move-exception v24

    move-object/from16 v5, v24

    .line 924
    .restart local v5       #e:Ljava/sql/SQLException;
    :try_start_310
    throw v5
    :try_end_311
    .catchall {:try_start_310 .. :try_end_311} :catchall_311

    .line 926
    .end local v5           #e:Ljava/sql/SQLException;
    :catchall_311
    move-exception v24

    invoke-virtual/range {v19 .. v19}, LSQLite/JDBC2y/JDBCStatement;->close()V

    throw v24

    .line 933
    .restart local v6       #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8       #i:I
    :cond_316
    const/4 v8, 0x0

    :goto_317
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v24, v0

    move v0, v8

    move/from16 v1, v24

    if-ge v0, v1, :cond_3ee

    .line 934
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2y/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v12, v0

    .line 935
    .restart local v12       #r0:[Ljava/lang/String;
    const-string v24, "type"

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 936
    .restart local v3       #col:I
    aget-object v21, v12, v3

    .line 937
    .local v21, type:Ljava/lang/String;
    const-string v24, "integer"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_362

    .line 933
    :cond_35f
    :goto_35f
    add-int/lit8 v8, v8, 0x1

    goto :goto_317

    .line 940
    :cond_362
    const-string v24, "pk"

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 941
    aget-object v11, v12, v3

    .line 942
    .local v11, pk:Ljava/lang/String;
    const/16 v24, 0x0

    move-object v0, v11

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x30

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_35f

    .line 945
    move-object v0, v4

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object v14, v0

    .line 946
    .restart local v14       #row:[Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, ""

    aput-object v25, v14, v24

    .line 947
    const/16 v24, 0x1

    const-string v25, ""

    aput-object v25, v14, v24

    .line 948
    const/16 v24, 0x2

    aput-object p3, v14, v24

    .line 949
    const-string v24, "name"

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 950
    const/16 v24, 0x3

    aget-object v25, v12, v3

    aput-object v25, v14, v24

    .line 951
    const-string v24, "cid"

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 953
    const/16 v24, 0x4

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v12, v3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v14, v24

    .line 955
    const/16 v24, 0x5

    const-string v25, ""

    aput-object v25, v14, v24

    .line 956
    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    goto/16 :goto_35f

    .line 959
    .end local v3           #col:I
    .end local v6           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #i:I
    .end local v11           #pk:Ljava/lang/String;
    .end local v12           #r0:[Ljava/lang/String;
    .end local v14           #row:[Ljava/lang/String;
    .end local v21           #type:Ljava/lang/String;
    :cond_3ee
    return-object v15

    .line 861
    nop

    :array_3f0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 6
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "procedureNamePattern"
    .parameter "columnNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 508
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcedureTerm()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 264
    const-string v0, ""

    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 5
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "procedureNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 500
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResultSetHoldability()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1555
    const/4 v0, 0x1

    return v0
.end method

.method public getSQLKeywords()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 120
    const-string v0, "SELECT,UPDATE,CREATE,TABLE,VIEW,DELETE,FROM,WHERE,COMMIT,ROLLBACK,TRIGGER"

    return-object v0
.end method

.method public getSQLStateType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1575
    const/4 v0, 0x1

    return v0
.end method

.method public getSchemaTerm()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 260
    const-string v0, ""

    return-object v0
.end method

.method public getSchemas()Ljava/sql/ResultSet;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 554
    new-array v0, v6, [Ljava/lang/String;

    const-string v4, "TABLE_SCHEM"

    aput-object v4, v0, v5

    .line 555
    .local v0, cols:[Ljava/lang/String;
    new-instance v3, LSQLite/TableResult;

    invoke-direct {v3}, LSQLite/TableResult;-><init>()V

    .line 556
    .local v3, tr:LSQLite/TableResult;
    invoke-virtual {v3, v0}, LSQLite/TableResult;->columns([Ljava/lang/String;)V

    .line 557
    new-array v1, v6, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v1, v5

    .line 558
    .local v1, row:[Ljava/lang/String;
    invoke-virtual {v3, v1}, LSQLite/TableResult;->newrow([Ljava/lang/String;)Z

    .line 559
    new-instance v2, LSQLite/JDBC2y/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 560
    .local v2, rs:LSQLite/JDBC2y/JDBCResultSet;
    return-object v2
.end method

.method public getSearchStringEscape()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v0, "\\"

    return-object v0
.end method

.method public getStringFunctions()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v0, ""

    return-object v0
.end method

.method public getSuperTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 6
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "tableNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1544
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuperTypes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 6
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "typeNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1538
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSystemFunctions()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 133
    const-string v0, ""

    return-object v0
.end method

.method public getTablePrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 11
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "tableNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 698
    new-array v0, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TABLE_CAT"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "TABLE_SCHEM"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "TABLE_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "COLUMN_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "GRANTOR"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "GRANTEE"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "PRIVILEGE"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "IS_GRANTABLE"

    aput-object v5, v0, v4

    .line 703
    .local v0, cols:[Ljava/lang/String;
    new-array v3, v6, [I

    fill-array-data v3, :array_44

    .line 708
    .local v3, types:[I
    new-instance v2, LSQLite/JDBC2y/TableResultX;

    invoke-direct {v2}, LSQLite/JDBC2y/TableResultX;-><init>()V

    .line 709
    .local v2, tr:LSQLite/JDBC2y/TableResultX;
    invoke-virtual {v2, v0}, LSQLite/JDBC2y/TableResultX;->columns([Ljava/lang/String;)V

    .line 710
    invoke-virtual {v2, v3}, LSQLite/JDBC2y/TableResultX;->sql_types([I)V

    .line 711
    new-instance v1, LSQLite/JDBC2y/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 712
    .local v1, rs:LSQLite/JDBC2y/JDBCResultSet;
    return-object v1

    .line 703
    nop

    :array_44
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getTableTypes()Ljava/sql/ResultSet;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 574
    new-array v0, v6, [Ljava/lang/String;

    const-string v4, "TABLE_TYPE"

    aput-object v4, v0, v5

    .line 575
    .local v0, cols:[Ljava/lang/String;
    new-instance v3, LSQLite/TableResult;

    invoke-direct {v3}, LSQLite/TableResult;-><init>()V

    .line 576
    .local v3, tr:LSQLite/TableResult;
    invoke-virtual {v3, v0}, LSQLite/TableResult;->columns([Ljava/lang/String;)V

    .line 577
    new-array v1, v6, [Ljava/lang/String;

    .line 578
    .local v1, row:[Ljava/lang/String;
    const-string v4, "TABLE"

    aput-object v4, v1, v5

    .line 579
    invoke-virtual {v3, v1}, LSQLite/TableResult;->newrow([Ljava/lang/String;)Z

    .line 580
    new-array v1, v6, [Ljava/lang/String;

    .line 581
    const-string v4, "VIEW"

    aput-object v4, v1, v5

    .line 582
    invoke-virtual {v3, v1}, LSQLite/TableResult;->newrow([Ljava/lang/String;)Z

    .line 583
    new-instance v2, LSQLite/JDBC2y/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 584
    .local v2, rs:LSQLite/JDBC2y/JDBCResultSet;
    return-object v2
.end method

.method public getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 12
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "tableNamePattern"
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 514
    new-instance v3, LSQLite/JDBC2y/JDBCStatement;

    iget-object v6, p0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    invoke-direct {v3, v6}, LSQLite/JDBC2y/JDBCStatement;-><init>(LSQLite/JDBC2y/JDBCConnection;)V

    .line 515
    .local v3, s:LSQLite/JDBC2y/JDBCStatement;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 516
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v6, "SELECT \'\' AS \'TABLE_CAT\', \'\' AS \'TABLE_SCHEM\', tbl_name AS \'TABLE_NAME\', upper(type) AS \'TABLE_TYPE\', \'\' AS REMARKS FROM sqlite_master WHERE tbl_name like "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    if-eqz p3, :cond_39

    .line 523
    invoke-static {p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    :goto_1a
    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    if-eqz p4, :cond_24

    array-length v6, p4

    if-nez v6, :cond_3f

    .line 529
    :cond_24
    const-string v6, "(type = \'table\' or type = \'view\')"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    :goto_29
    const/4 v2, 0x0

    .line 543
    .local v2, rs:Ljava/sql/ResultSet;
    :try_start_2a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, LSQLite/JDBC2y/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 544
    invoke-virtual {v3}, LSQLite/JDBC2y/JDBCStatement;->close()V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_6d
    .catch Ljava/sql/SQLException; {:try_start_2a .. :try_end_35} :catch_6a

    .line 548
    invoke-virtual {v3}, LSQLite/JDBC2y/JDBCStatement;->close()V

    .line 550
    return-object v2

    .line 525
    .end local v2           #rs:Ljava/sql/ResultSet;
    :cond_39
    const-string v6, "\'%\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 531
    :cond_3f
    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    const-string v5, ""

    .line 533
    .local v5, sep:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_47
    array-length v6, p4

    if-ge v1, v6, :cond_64

    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    const-string v6, "type = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    aget-object v6, p4, v1

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    const-string v5, " or "

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 539
    :cond_64
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 545
    .end local v1           #i:I
    .end local v5           #sep:Ljava/lang/String;
    .restart local v2       #rs:Ljava/sql/ResultSet;
    :catch_6a
    move-exception v6

    move-object v0, v6

    .line 546
    .local v0, e:Ljava/sql/SQLException;
    :try_start_6c
    throw v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 548
    .end local v0           #e:Ljava/sql/SQLException;
    :catchall_6d
    move-exception v6

    invoke-virtual {v3}, LSQLite/JDBC2y/JDBCStatement;->close()V

    throw v6
.end method

.method public getTimeDateFunctions()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, ""

    return-object v0
.end method

.method public getTypeInfo()Ljava/sql/ResultSet;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1114
    const/16 v15, 0x12

    new-array v0, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "TYPE_NAME"

    aput-object v16, v0, v15

    const/4 v15, 0x1

    const-string v16, "DATA_TYPE"

    aput-object v16, v0, v15

    const/4 v15, 0x2

    const-string v16, "PRECISION"

    aput-object v16, v0, v15

    const/4 v15, 0x3

    const-string v16, "LITERAL_PREFIX"

    aput-object v16, v0, v15

    const/4 v15, 0x4

    const-string v16, "LITERAL_SUFFIX"

    aput-object v16, v0, v15

    const/4 v15, 0x5

    const-string v16, "CREATE_PARAMS"

    aput-object v16, v0, v15

    const/4 v15, 0x6

    const-string v16, "NULLABLE"

    aput-object v16, v0, v15

    const/4 v15, 0x7

    const-string v16, "CASE_SENSITIVE"

    aput-object v16, v0, v15

    const/16 v15, 0x8

    const-string v16, "SEARCHABLE"

    aput-object v16, v0, v15

    const/16 v15, 0x9

    const-string v16, "UNSIGNED_ATTRIBUTE"

    aput-object v16, v0, v15

    const/16 v15, 0xa

    const-string v16, "FIXED_PREC_SCALE"

    aput-object v16, v0, v15

    const/16 v15, 0xb

    const-string v16, "AUTO_INCREMENT"

    aput-object v16, v0, v15

    const/16 v15, 0xc

    const-string v16, "LOCAL_TYPE_NAME"

    aput-object v16, v0, v15

    const/16 v15, 0xd

    const-string v16, "MINIMUM_SCALE"

    aput-object v16, v0, v15

    const/16 v15, 0xe

    const-string v16, "MAXIMUM_SCALE"

    aput-object v16, v0, v15

    const/16 v15, 0xf

    const-string v16, "SQL_DATA_TYPE"

    aput-object v16, v0, v15

    const/16 v15, 0x10

    const-string v16, "SQL_DATETIME_SUB"

    aput-object v16, v0, v15

    const/16 v15, 0x11

    const-string v16, "NUM_PREC_RADIX"

    aput-object v16, v0, v15

    .line 1122
    .local v0, cols:[Ljava/lang/String;
    const/16 v15, 0x12

    new-array v14, v15, [I

    fill-array-data v14, :array_51a

    .line 1130
    .local v14, types:[I
    new-instance v13, LSQLite/JDBC2y/TableResultX;

    invoke-direct {v13}, LSQLite/JDBC2y/TableResultX;-><init>()V

    .line 1131
    .local v13, tr:LSQLite/JDBC2y/TableResultX;
    invoke-virtual {v13, v0}, LSQLite/JDBC2y/TableResultX;->columns([Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v13, v14}, LSQLite/JDBC2y/TableResultX;->sql_types([I)V

    .line 1133
    new-instance v12, LSQLite/JDBC2y/JDBCResultSet;

    const/4 v15, 0x0

    invoke-direct {v12, v13, v15}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 1134
    .local v12, rs:LSQLite/JDBC2y/JDBCResultSet;
    const/16 v15, 0x12

    new-array v1, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "VARCHAR"

    aput-object v16, v1, v15

    const/4 v15, 0x1

    const-string v16, "12"

    aput-object v16, v1, v15

    const/4 v15, 0x2

    const-string v16, "65536"

    aput-object v16, v1, v15

    const/4 v15, 0x3

    const-string v16, "\'"

    aput-object v16, v1, v15

    const/4 v15, 0x4

    const-string v16, "\'"

    aput-object v16, v1, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput-object v16, v1, v15

    const/4 v15, 0x6

    const-string v16, "1"

    aput-object v16, v1, v15

    const/4 v15, 0x7

    const-string v16, "1"

    aput-object v16, v1, v15

    const/16 v15, 0x8

    const-string v16, "3"

    aput-object v16, v1, v15

    const/16 v15, 0x9

    const-string v16, "0"

    aput-object v16, v1, v15

    const/16 v15, 0xa

    const-string v16, "0"

    aput-object v16, v1, v15

    const/16 v15, 0xb

    const-string v16, "0"

    aput-object v16, v1, v15

    const/16 v15, 0xc

    const/16 v16, 0x0

    aput-object v16, v1, v15

    const/16 v15, 0xd

    const-string v16, "0"

    aput-object v16, v1, v15

    const/16 v15, 0xe

    const-string v16, "0"

    aput-object v16, v1, v15

    const/16 v15, 0xf

    const-string v16, "0"

    aput-object v16, v1, v15

    const/16 v15, 0x10

    const-string v16, "0"

    aput-object v16, v1, v15

    const/16 v15, 0x11

    const-string v16, "0"

    aput-object v16, v1, v15

    .line 1142
    .local v1, row1:[Ljava/lang/String;
    invoke-virtual {v13, v1}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1143
    const/16 v15, 0x12

    new-array v4, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "INTEGER"

    aput-object v16, v4, v15

    const/4 v15, 0x1

    const-string v16, "4"

    aput-object v16, v4, v15

    const/4 v15, 0x2

    const-string v16, "32"

    aput-object v16, v4, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v4, v15

    const/4 v15, 0x4

    const/16 v16, 0x0

    aput-object v16, v4, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput-object v16, v4, v15

    const/4 v15, 0x6

    const-string v16, "1"

    aput-object v16, v4, v15

    const/4 v15, 0x7

    const-string v16, "0"

    aput-object v16, v4, v15

    const/16 v15, 0x8

    const-string v16, "3"

    aput-object v16, v4, v15

    const/16 v15, 0x9

    const-string v16, "0"

    aput-object v16, v4, v15

    const/16 v15, 0xa

    const-string v16, "0"

    aput-object v16, v4, v15

    const/16 v15, 0xb

    const-string v16, "1"

    aput-object v16, v4, v15

    const/16 v15, 0xc

    const/16 v16, 0x0

    aput-object v16, v4, v15

    const/16 v15, 0xd

    const-string v16, "0"

    aput-object v16, v4, v15

    const/16 v15, 0xe

    const-string v16, "0"

    aput-object v16, v4, v15

    const/16 v15, 0xf

    const-string v16, "0"

    aput-object v16, v4, v15

    const/16 v15, 0x10

    const-string v16, "0"

    aput-object v16, v4, v15

    const/16 v15, 0x11

    const-string v16, "2"

    aput-object v16, v4, v15

    .line 1151
    .local v4, row2:[Ljava/lang/String;
    invoke-virtual {v13, v4}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1152
    const/16 v15, 0x12

    new-array v5, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "DOUBLE"

    aput-object v16, v5, v15

    const/4 v15, 0x1

    const-string v16, "8"

    aput-object v16, v5, v15

    const/4 v15, 0x2

    const-string v16, "16"

    aput-object v16, v5, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v5, v15

    const/4 v15, 0x4

    const/16 v16, 0x0

    aput-object v16, v5, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput-object v16, v5, v15

    const/4 v15, 0x6

    const-string v16, "1"

    aput-object v16, v5, v15

    const/4 v15, 0x7

    const-string v16, "0"

    aput-object v16, v5, v15

    const/16 v15, 0x8

    const-string v16, "3"

    aput-object v16, v5, v15

    const/16 v15, 0x9

    const-string v16, "0"

    aput-object v16, v5, v15

    const/16 v15, 0xa

    const-string v16, "0"

    aput-object v16, v5, v15

    const/16 v15, 0xb

    const-string v16, "1"

    aput-object v16, v5, v15

    const/16 v15, 0xc

    const/16 v16, 0x0

    aput-object v16, v5, v15

    const/16 v15, 0xd

    const-string v16, "0"

    aput-object v16, v5, v15

    const/16 v15, 0xe

    const-string v16, "0"

    aput-object v16, v5, v15

    const/16 v15, 0xf

    const-string v16, "0"

    aput-object v16, v5, v15

    const/16 v15, 0x10

    const-string v16, "0"

    aput-object v16, v5, v15

    const/16 v15, 0x11

    const-string v16, "10"

    aput-object v16, v5, v15

    .line 1160
    .local v5, row3:[Ljava/lang/String;
    invoke-virtual {v13, v5}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1161
    const/16 v15, 0x12

    new-array v6, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "FLOAT"

    aput-object v16, v6, v15

    const/4 v15, 0x1

    const-string v16, "6"

    aput-object v16, v6, v15

    const/4 v15, 0x2

    const-string v16, "7"

    aput-object v16, v6, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v6, v15

    const/4 v15, 0x4

    const/16 v16, 0x0

    aput-object v16, v6, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput-object v16, v6, v15

    const/4 v15, 0x6

    const-string v16, "1"

    aput-object v16, v6, v15

    const/4 v15, 0x7

    const-string v16, "0"

    aput-object v16, v6, v15

    const/16 v15, 0x8

    const-string v16, "3"

    aput-object v16, v6, v15

    const/16 v15, 0x9

    const-string v16, "0"

    aput-object v16, v6, v15

    const/16 v15, 0xa

    const-string v16, "0"

    aput-object v16, v6, v15

    const/16 v15, 0xb

    const-string v16, "1"

    aput-object v16, v6, v15

    const/16 v15, 0xc

    const/16 v16, 0x0

    aput-object v16, v6, v15

    const/16 v15, 0xd

    const-string v16, "0"

    aput-object v16, v6, v15

    const/16 v15, 0xe

    const-string v16, "0"

    aput-object v16, v6, v15

    const/16 v15, 0xf

    const-string v16, "0"

    aput-object v16, v6, v15

    const/16 v15, 0x10

    const-string v16, "0"

    aput-object v16, v6, v15

    const/16 v15, 0x11

    const-string v16, "10"

    aput-object v16, v6, v15

    .line 1169
    .local v6, row4:[Ljava/lang/String;
    invoke-virtual {v13, v6}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1170
    const/16 v15, 0x12

    new-array v7, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "SMALLINT"

    aput-object v16, v7, v15

    const/4 v15, 0x1

    const-string v16, "5"

    aput-object v16, v7, v15

    const/4 v15, 0x2

    const-string v16, "16"

    aput-object v16, v7, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v7, v15

    const/4 v15, 0x4

    const/16 v16, 0x0

    aput-object v16, v7, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput-object v16, v7, v15

    const/4 v15, 0x6

    const-string v16, "1"

    aput-object v16, v7, v15

    const/4 v15, 0x7

    const-string v16, "0"

    aput-object v16, v7, v15

    const/16 v15, 0x8

    const-string v16, "3"

    aput-object v16, v7, v15

    const/16 v15, 0x9

    const-string v16, "0"

    aput-object v16, v7, v15

    const/16 v15, 0xa

    const-string v16, "0"

    aput-object v16, v7, v15

    const/16 v15, 0xb

    const-string v16, "1"

    aput-object v16, v7, v15

    const/16 v15, 0xc

    const/16 v16, 0x0

    aput-object v16, v7, v15

    const/16 v15, 0xd

    const-string v16, "0"

    aput-object v16, v7, v15

    const/16 v15, 0xe

    const-string v16, "0"

    aput-object v16, v7, v15

    const/16 v15, 0xf

    const-string v16, "0"

    aput-object v16, v7, v15

    const/16 v15, 0x10

    const-string v16, "0"

    aput-object v16, v7, v15

    const/16 v15, 0x11

    const-string v16, "2"

    aput-object v16, v7, v15

    .line 1178
    .local v7, row5:[Ljava/lang/String;
    invoke-virtual {v13, v7}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1179
    const/16 v15, 0x12

    new-array v8, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "BIT"

    aput-object v16, v8, v15

    const/4 v15, 0x1

    const-string v16, "-7"

    aput-object v16, v8, v15

    const/4 v15, 0x2

    const-string v16, "1"

    aput-object v16, v8, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v8, v15

    const/4 v15, 0x4

    const/16 v16, 0x0

    aput-object v16, v8, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput-object v16, v8, v15

    const/4 v15, 0x6

    const-string v16, "1"

    aput-object v16, v8, v15

    const/4 v15, 0x7

    const-string v16, "0"

    aput-object v16, v8, v15

    const/16 v15, 0x8

    const-string v16, "3"

    aput-object v16, v8, v15

    const/16 v15, 0x9

    const-string v16, "0"

    aput-object v16, v8, v15

    const/16 v15, 0xa

    const-string v16, "0"

    aput-object v16, v8, v15

    const/16 v15, 0xb

    const-string v16, "1"

    aput-object v16, v8, v15

    const/16 v15, 0xc

    const/16 v16, 0x0

    aput-object v16, v8, v15

    const/16 v15, 0xd

    const-string v16, "0"

    aput-object v16, v8, v15

    const/16 v15, 0xe

    const-string v16, "0"

    aput-object v16, v8, v15

    const/16 v15, 0xf

    const-string v16, "0"

    aput-object v16, v8, v15

    const/16 v15, 0x10

    const-string v16, "0"

    aput-object v16, v8, v15

    const/16 v15, 0x11

    const-string v16, "2"

    aput-object v16, v8, v15

    .line 1187
    .local v8, row6:[Ljava/lang/String;
    invoke-virtual {v13, v8}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1188
    const/16 v15, 0x12

    new-array v9, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "TIMESTAMP"

    aput-object v16, v9, v15

    const/4 v15, 0x1

    const-string v16, "93"

    aput-object v16, v9, v15

    const/4 v15, 0x2

    const-string v16, "30"

    aput-object v16, v9, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v9, v15

    const/4 v15, 0x4

    const/16 v16, 0x0

    aput-object v16, v9, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput-object v16, v9, v15

    const/4 v15, 0x6

    const-string v16, "1"

    aput-object v16, v9, v15

    const/4 v15, 0x7

    const-string v16, "0"

    aput-object v16, v9, v15

    const/16 v15, 0x8

    const-string v16, "3"

    aput-object v16, v9, v15

    const/16 v15, 0x9

    const-string v16, "0"

    aput-object v16, v9, v15

    const/16 v15, 0xa

    const-string v16, "0"

    aput-object v16, v9, v15

    const/16 v15, 0xb

    const-string v16, "1"

    aput-object v16, v9, v15

    const/16 v15, 0xc

    const/16 v16, 0x0

    aput-object v16, v9, v15

    const/16 v15, 0xd

    const-string v16, "0"

    aput-object v16, v9, v15

    const/16 v15, 0xe

    const-string v16, "0"

    aput-object v16, v9, v15

    const/16 v15, 0xf

    const-string v16, "0"

    aput-object v16, v9, v15

    const/16 v15, 0x10

    const-string v16, "0"

    aput-object v16, v9, v15

    const/16 v15, 0x11

    const-string v16, "0"

    aput-object v16, v9, v15

    .line 1196
    .local v9, row7:[Ljava/lang/String;
    invoke-virtual {v13, v9}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1197
    const/16 v15, 0x12

    new-array v10, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "DATE"

    aput-object v16, v10, v15

    const/4 v15, 0x1

    const-string v16, "91"

    aput-object v16, v10, v15

    const/4 v15, 0x2

    const-string v16, "10"

    aput-object v16, v10, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v10, v15

    const/4 v15, 0x4

    const/16 v16, 0x0

    aput-object v16, v10, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput-object v16, v10, v15

    const/4 v15, 0x6

    const-string v16, "1"

    aput-object v16, v10, v15

    const/4 v15, 0x7

    const-string v16, "0"

    aput-object v16, v10, v15

    const/16 v15, 0x8

    const-string v16, "3"

    aput-object v16, v10, v15

    const/16 v15, 0x9

    const-string v16, "0"

    aput-object v16, v10, v15

    const/16 v15, 0xa

    const-string v16, "0"

    aput-object v16, v10, v15

    const/16 v15, 0xb

    const-string v16, "1"

    aput-object v16, v10, v15

    const/16 v15, 0xc

    const/16 v16, 0x0

    aput-object v16, v10, v15

    const/16 v15, 0xd

    const-string v16, "0"

    aput-object v16, v10, v15

    const/16 v15, 0xe

    const-string v16, "0"

    aput-object v16, v10, v15

    const/16 v15, 0xf

    const-string v16, "0"

    aput-object v16, v10, v15

    const/16 v15, 0x10

    const-string v16, "0"

    aput-object v16, v10, v15

    const/16 v15, 0x11

    const-string v16, "0"

    aput-object v16, v10, v15

    .line 1205
    .local v10, row8:[Ljava/lang/String;
    invoke-virtual {v13, v10}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1206
    const/16 v15, 0x12

    new-array v11, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "TIME"

    aput-object v16, v11, v15

    const/4 v15, 0x1

    const-string v16, "92"

    aput-object v16, v11, v15

    const/4 v15, 0x2

    const-string v16, "8"

    aput-object v16, v11, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v11, v15

    const/4 v15, 0x4

    const/16 v16, 0x0

    aput-object v16, v11, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput-object v16, v11, v15

    const/4 v15, 0x6

    const-string v16, "1"

    aput-object v16, v11, v15

    const/4 v15, 0x7

    const-string v16, "0"

    aput-object v16, v11, v15

    const/16 v15, 0x8

    const-string v16, "3"

    aput-object v16, v11, v15

    const/16 v15, 0x9

    const-string v16, "0"

    aput-object v16, v11, v15

    const/16 v15, 0xa

    const-string v16, "0"

    aput-object v16, v11, v15

    const/16 v15, 0xb

    const-string v16, "1"

    aput-object v16, v11, v15

    const/16 v15, 0xc

    const/16 v16, 0x0

    aput-object v16, v11, v15

    const/16 v15, 0xd

    const-string v16, "0"

    aput-object v16, v11, v15

    const/16 v15, 0xe

    const-string v16, "0"

    aput-object v16, v11, v15

    const/16 v15, 0xf

    const-string v16, "0"

    aput-object v16, v11, v15

    const/16 v15, 0x10

    const-string v16, "0"

    aput-object v16, v11, v15

    const/16 v15, 0x11

    const-string v16, "0"

    aput-object v16, v11, v15

    .line 1214
    .local v11, row9:[Ljava/lang/String;
    invoke-virtual {v13, v11}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1215
    const/16 v15, 0x12

    new-array v2, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "BINARY"

    aput-object v16, v2, v15

    const/4 v15, 0x1

    const-string v16, "-2"

    aput-object v16, v2, v15

    const/4 v15, 0x2

    const-string v16, "65536"

    aput-object v16, v2, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v2, v15

    const/4 v15, 0x4

    const/16 v16, 0x0

    aput-object v16, v2, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput-object v16, v2, v15

    const/4 v15, 0x6

    const-string v16, "1"

    aput-object v16, v2, v15

    const/4 v15, 0x7

    const-string v16, "0"

    aput-object v16, v2, v15

    const/16 v15, 0x8

    const-string v16, "3"

    aput-object v16, v2, v15

    const/16 v15, 0x9

    const-string v16, "0"

    aput-object v16, v2, v15

    const/16 v15, 0xa

    const-string v16, "0"

    aput-object v16, v2, v15

    const/16 v15, 0xb

    const-string v16, "1"

    aput-object v16, v2, v15

    const/16 v15, 0xc

    const/16 v16, 0x0

    aput-object v16, v2, v15

    const/16 v15, 0xd

    const-string v16, "0"

    aput-object v16, v2, v15

    const/16 v15, 0xe

    const-string v16, "0"

    aput-object v16, v2, v15

    const/16 v15, 0xf

    const-string v16, "0"

    aput-object v16, v2, v15

    const/16 v15, 0x10

    const-string v16, "0"

    aput-object v16, v2, v15

    const/16 v15, 0x11

    const-string v16, "0"

    aput-object v16, v2, v15

    .line 1223
    .local v2, row10:[Ljava/lang/String;
    invoke-virtual {v13, v2}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1224
    const/16 v15, 0x12

    new-array v3, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "VARBINARY"

    aput-object v16, v3, v15

    const/4 v15, 0x1

    const-string v16, "-3"

    aput-object v16, v3, v15

    const/4 v15, 0x2

    const-string v16, "65536"

    aput-object v16, v3, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v3, v15

    const/4 v15, 0x4

    const/16 v16, 0x0

    aput-object v16, v3, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput-object v16, v3, v15

    const/4 v15, 0x6

    const-string v16, "1"

    aput-object v16, v3, v15

    const/4 v15, 0x7

    const-string v16, "0"

    aput-object v16, v3, v15

    const/16 v15, 0x8

    const-string v16, "3"

    aput-object v16, v3, v15

    const/16 v15, 0x9

    const-string v16, "0"

    aput-object v16, v3, v15

    const/16 v15, 0xa

    const-string v16, "0"

    aput-object v16, v3, v15

    const/16 v15, 0xb

    const-string v16, "1"

    aput-object v16, v3, v15

    const/16 v15, 0xc

    const/16 v16, 0x0

    aput-object v16, v3, v15

    const/16 v15, 0xd

    const-string v16, "0"

    aput-object v16, v3, v15

    const/16 v15, 0xe

    const-string v16, "0"

    aput-object v16, v3, v15

    const/16 v15, 0xf

    const-string v16, "0"

    aput-object v16, v3, v15

    const/16 v15, 0x10

    const-string v16, "0"

    aput-object v16, v3, v15

    const/16 v15, 0x11

    const-string v16, "0"

    aput-object v16, v3, v15

    .line 1232
    .local v3, row11:[Ljava/lang/String;
    invoke-virtual {v13, v3}, LSQLite/JDBC2y/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1233
    return-object v12

    .line 1122
    :array_51a
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xf9t 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0xf9t 0xfft 0xfft 0xfft
        0xf9t 0xfft 0xfft 0xfft
        0xf9t 0xfft 0xfft 0xfft
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getUDTs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/sql/ResultSet;
    .registers 6
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "typeNamePattern"
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1381
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, LSQLite/JDBC2y/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2y/JDBCConnection;

    iget-object v0, v0, LSQLite/JDBC2y/JDBCConnection;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 27
    const-string v0, ""

    return-object v0
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 11
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 827
    new-array v0, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SCOPE"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "COLUMN_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "DATA_TYPE"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "TYPE_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "COLUMN_SIZE"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "BUFFER_LENGTH"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "DECIMAL_DIGITS"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "PSEUDO_COLUMN"

    aput-object v5, v0, v4

    .line 832
    .local v0, cols:[Ljava/lang/String;
    new-array v3, v6, [I

    fill-array-data v3, :array_44

    .line 837
    .local v3, types:[I
    new-instance v2, LSQLite/JDBC2y/TableResultX;

    invoke-direct {v2}, LSQLite/JDBC2y/TableResultX;-><init>()V

    .line 838
    .local v2, tr:LSQLite/JDBC2y/TableResultX;
    invoke-virtual {v2, v0}, LSQLite/JDBC2y/TableResultX;->columns([Ljava/lang/String;)V

    .line 839
    invoke-virtual {v2, v3}, LSQLite/JDBC2y/TableResultX;->sql_types([I)V

    .line 840
    new-instance v1, LSQLite/JDBC2y/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, LSQLite/JDBC2y/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2y/JDBCStatement;)V

    .line 841
    .local v1, rs:LSQLite/JDBC2y/JDBCResultSet;
    return-object v1

    .line 832
    nop

    :array_44
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public insertsAreDetected(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method public isCatalogAtStart()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public locatorsUpdateCopy()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1532
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nullPlusNonNullIsNull()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedAtEnd()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedAtStart()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedHigh()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedLow()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public othersDeletesAreVisible(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1355
    const/4 v0, 0x0

    return v0
.end method

.method public othersInsertsAreVisible(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1359
    const/4 v0, 0x0

    return v0
.end method

.method public othersUpdatesAreVisible(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1351
    const/4 v0, 0x0

    return v0
.end method

.method public ownDeletesAreVisible(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1343
    const/4 v0, 0x0

    return v0
.end method

.method public ownInsertsAreVisible(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1347
    const/4 v0, 0x0

    return v0
.end method

.method public ownUpdatesAreVisible(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1339
    const/4 v0, 0x0

    return v0
.end method

.method public storesLowerCaseIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public storesLowerCaseQuotedIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public storesMixedCaseIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public storesMixedCaseQuotedIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public storesUpperCaseIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public storesUpperCaseQuotedIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92EntryLevelSQL()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public supportsANSI92FullSQL()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92IntermediateSQL()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithAddColumn()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithDropColumn()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public supportsBatchUpdates()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1375
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInDataManipulation()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInIndexDefinitions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInPrivilegeDefinitions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInProcedureCalls()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInTableDefinitions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public supportsColumnAliasing()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public supportsConvert(II)Z
    .registers 4
    .parameter "fromType"
    .parameter "toType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCoreSQLGrammar()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCorrelatedSubqueries()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDataDefinitionAndDataManipulationTransactions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method public supportsDataManipulationTransactionsOnly()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDifferentTableCorrelationNames()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public supportsExpressionsInOrderBy()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public supportsExtendedSQLGrammar()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public supportsFullOuterJoins()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public supportsGetGeneratedKeys()Z
    .registers 2

    .prologue
    .line 1520
    const/4 v0, 0x0

    return v0
.end method

.method public supportsGroupBy()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByBeyondSelect()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public supportsGroupByUnrelated()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public supportsIntegrityEnhancementFacility()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public supportsLikeEscapeClause()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public supportsLimitedOuterJoins()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMinimumSQLGrammar()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMixedCaseIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMixedCaseQuotedIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleOpenResults()Z
    .registers 2

    .prologue
    .line 1516
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleResultSets()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleTransactions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public supportsNamedParameters()Z
    .registers 2

    .prologue
    .line 1512
    const/4 v0, 0x0

    return v0
.end method

.method public supportsNonNullableColumns()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public supportsOpenCursorsAcrossCommit()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenCursorsAcrossRollback()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossCommit()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossRollback()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOrderByUnrelated()Z
    .registers 2
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

.method public supportsOuterJoins()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public supportsPositionedDelete()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public supportsPositionedUpdate()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public supportsResultSetConcurrency(II)Z
    .registers 4
    .parameter "type"
    .parameter "concurrency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1335
    const/4 v0, 0x0

    return v0
.end method

.method public supportsResultSetHoldability(I)Z
    .registers 3
    .parameter "x"

    .prologue
    .line 1524
    const/4 v0, 0x0

    return v0
.end method

.method public supportsResultSetType(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1330
    const/16 v0, 0x3ef

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public supportsSavepoints()Z
    .registers 2

    .prologue
    .line 1508
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInDataManipulation()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInIndexDefinitions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInPrivilegeDefinitions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInProcedureCalls()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInTableDefinitions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSelectForUpdate()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public supportsStatementPooling()Z
    .registers 2

    .prologue
    .line 1528
    const/4 v0, 0x0

    return v0
.end method

.method public supportsStoredProcedures()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSubqueriesInComparisons()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInExists()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInIns()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInQuantifieds()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public supportsTableCorrelationNames()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public supportsTransactionIsolationLevel(I)Z
    .registers 3
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 475
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public supportsTransactions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnion()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public supportsUnionAll()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public updatesAreDetected(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1363
    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFilePerTable()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFiles()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method
