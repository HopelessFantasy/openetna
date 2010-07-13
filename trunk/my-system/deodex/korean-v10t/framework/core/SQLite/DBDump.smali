.class LSQLite/DBDump;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements LSQLite/Callback;


# instance fields
.field s:LSQLite/Shell;


# direct methods
.method constructor <init>(LSQLite/Shell;[Ljava/lang/String;)V
    .registers 10
    .parameter "s"
    .parameter "tables"

    .prologue
    const-string v6, "SQL Error: "

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p1, p0, LSQLite/DBDump;->s:LSQLite/Shell;

    .line 587
    iget-object v3, p1, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v4, "BEGIN TRANSACTION;"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    if-eqz p2, :cond_13

    array-length v3, p2

    if-nez v3, :cond_42

    .line 590
    :cond_13
    :try_start_13
    iget-object v3, p1, LSQLite/Shell;->db:LSQLite/Database;

    const-string v4, "SELECT name, type, sql FROM sqlite_master WHERE type!=\'meta\' AND sql NOT NULL ORDER BY substr(type,2,1), name"

    invoke-virtual {v3, v4, p0}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_1a
    .catch LSQLite/Exception; {:try_start_13 .. :try_end_1a} :catch_22

    .line 613
    :cond_1a
    :goto_1a
    iget-object v3, p1, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v4, "COMMIT;"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    return-void

    .line 593
    :catch_22
    move-exception v3

    move-object v1, v3

    .line 594
    .local v1, e:LSQLite/Exception;
    iget-object v3, p1, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL Error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    iget-object v3, p1, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    goto :goto_1a

    .line 598
    .end local v1           #e:LSQLite/Exception;
    :cond_42
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 599
    .local v0, arg:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_46
    array-length v3, p2

    if-ge v2, v3, :cond_1a

    .line 600
    const/4 v3, 0x0

    aget-object v4, p2, v2

    aput-object v4, v0, v3

    .line 602
    :try_start_4e
    iget-object v3, p1, LSQLite/Shell;->db:LSQLite/Database;

    const-string v4, "SELECT name, type, sql FROM sqlite_master WHERE tbl_name LIKE \'%q\' AND type!=\'meta\'  AND sql NOT NULL  ORDER BY substr(type,2,1), name"

    invoke-virtual {v3, v4, p0, v0}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    :try_end_55
    .catch LSQLite/Exception; {:try_start_4e .. :try_end_55} :catch_58

    .line 599
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 607
    :catch_58
    move-exception v3

    move-object v1, v3

    .line 608
    .restart local v1       #e:LSQLite/Exception;
    iget-object v3, p1, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL Error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    iget-object v3, p1, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    goto :goto_55
.end method


# virtual methods
.method public columns([Ljava/lang/String;)V
    .registers 2
    .parameter "col"

    .prologue
    .line 618
    return-void
.end method

.method public newrow([Ljava/lang/String;)Z
    .registers 16
    .parameter "args"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 625
    array-length v9, p1

    const/4 v10, 0x3

    if-eq v9, v10, :cond_8

    move v9, v12

    .line 667
    :goto_7
    return v9

    .line 628
    :cond_8
    iget-object v9, p0, LSQLite/DBDump;->s:LSQLite/Shell;

    iget-object v9, v9, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x2

    aget-object v11, p1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    aget-object v9, p1, v12

    const-string v10, "table"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_b0

    .line 630
    iget-object v9, p0, LSQLite/DBDump;->s:LSQLite/Shell;

    invoke-virtual {v9}, LSQLite/Shell;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LSQLite/Shell;

    .line 631
    .local v5, s2:LSQLite/Shell;
    const/4 v9, 0x5

    iput v9, v5, LSQLite/Shell;->mode:I

    .line 632
    aget-object v9, p1, v13

    invoke-virtual {v5, v9}, LSQLite/Shell;->set_table_name(Ljava/lang/String;)V

    .line 633
    new-array v3, v12, [Ljava/lang/String;

    .line 634
    .local v3, qargs:[Ljava/lang/String;
    aget-object v9, p1, v13

    aput-object v9, v3, v13

    .line 636
    :try_start_45
    iget-object v9, v5, LSQLite/Shell;->db:LSQLite/Database;

    invoke-virtual {v9}, LSQLite/Database;->is3()Z

    move-result v9

    if-eqz v9, :cond_b6

    .line 637
    const/4 v8, 0x0

    .line 638
    .local v8, t:LSQLite/TableResult;
    iget-object v9, v5, LSQLite/Shell;->db:LSQLite/Database;

    const-string v10, "PRAGMA table_info(\'%q\')"

    invoke-virtual {v9, v10, v3}, LSQLite/Database;->get_table(Ljava/lang/String;[Ljava/lang/String;)LSQLite/TableResult;

    move-result-object v8

    .line 640
    if-eqz v8, :cond_b3

    .line 641
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 642
    .local v6, sb:Ljava/lang/StringBuffer;
    const-string v7, ""

    .line 644
    .local v7, sep:Ljava/lang/String;
    const-string v9, "SELECT "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    const/4 v2, 0x0

    .local v2, i:I
    :goto_65
    iget v9, v8, LSQLite/TableResult;->nrows:I

    if-ge v2, v9, :cond_9f

    .line 646
    iget-object v9, v8, LSQLite/TableResult;->rows:Ljava/util/Vector;

    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v0, v9, v10

    .line 647
    .local v0, col:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "quote("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, LSQLite/Shell;->sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    const-string v7, ","

    .line 645
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 651
    .end local v0           #col:Ljava/lang/String;
    :cond_9f
    const-string v9, " from \'%q\'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 653
    .local v4, query:Ljava/lang/String;
    const/4 v9, 0x6

    iput v9, v5, LSQLite/Shell;->mode:I

    .line 657
    .end local v2           #i:I
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #sep:Ljava/lang/String;
    :goto_ab
    iget-object v9, v5, LSQLite/Shell;->db:LSQLite/Database;

    invoke-virtual {v9, v4, v5, v3}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V

    .end local v3           #qargs:[Ljava/lang/String;
    .end local v4           #query:Ljava/lang/String;
    .end local v5           #s2:LSQLite/Shell;
    .end local v8           #t:LSQLite/TableResult;
    :cond_b0
    :goto_b0
    move v9, v13

    .line 667
    goto/16 :goto_7

    .line 655
    .restart local v3       #qargs:[Ljava/lang/String;
    .restart local v5       #s2:LSQLite/Shell;
    .restart local v8       #t:LSQLite/TableResult;
    :cond_b3
    const-string v4, "SELECT * from \'%q\'"

    .restart local v4       #query:Ljava/lang/String;
    goto :goto_ab

    .line 659
    .end local v4           #query:Ljava/lang/String;
    .end local v8           #t:LSQLite/TableResult;
    :cond_b6
    iget-object v9, v5, LSQLite/Shell;->db:LSQLite/Database;

    const-string v10, "SELECT * from \'%q\'"

    invoke-virtual {v9, v10, v5, v3}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    :try_end_bd
    .catch LSQLite/Exception; {:try_start_45 .. :try_end_bd} :catch_be

    goto :goto_b0

    .line 661
    :catch_be
    move-exception v9

    move-object v1, v9

    .line 662
    .local v1, e:LSQLite/Exception;
    iget-object v9, p0, LSQLite/DBDump;->s:LSQLite/Shell;

    iget-object v9, v9, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SQL Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    iget-object v9, p0, LSQLite/DBDump;->s:LSQLite/Shell;

    iget-object v9, v9, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    move v9, v12

    .line 664
    goto/16 :goto_7
.end method

.method public types([Ljava/lang/String;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 622
    return-void
.end method
