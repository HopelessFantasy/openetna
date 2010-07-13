.class public LSQLite/Shell;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements LSQLite/Callback;


# static fields
.field static final MODE_Column:I = 0x1

.field static final MODE_Html:I = 0x4

.field static final MODE_Insert:I = 0x5

.field static final MODE_Insert2:I = 0x6

.field static final MODE_Line:I = 0x0

.field static final MODE_List:I = 0x2

.field static final MODE_Semi:I = 0x3


# instance fields
.field cols:[Ljava/lang/String;

.field colwidth:[I

.field count:I

.field db:LSQLite/Database;

.field destTable:Ljava/lang/String;

.field echo:Z

.field err:Ljava/io/PrintWriter;

.field mode:I

.field pw:Ljava/io/PrintWriter;

.field sep:Ljava/lang/String;

.field showHeader:Z

.field tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;Ljava/io/PrintStream;)V
    .registers 4
    .parameter "ps"
    .parameter "errs"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    .line 47
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V
    .registers 3
    .parameter "pw"
    .parameter "err"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    .line 42
    iput-object p2, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    .line 43
    return-void
.end method

.method static html_quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "str"

    .prologue
    .line 121
    if-nez p0, :cond_5

    .line 122
    const-string v4, "NULL"

    .line 142
    :goto_4
    return-object v4

    .line 124
    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5f

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 127
    .local v0, c:C
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_21

    .line 128
    const-string v4, "&lt;"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 129
    :cond_21
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_2b

    .line 130
    const-string v4, "&gt;"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 131
    :cond_2b
    const/16 v4, 0x26

    if-ne v0, v4, :cond_35

    .line 132
    const-string v4, "&amp;"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 134
    :cond_35
    move v3, v0

    .line 135
    .local v3, x:I
    const/16 v4, 0x20

    if-lt v3, v4, :cond_3e

    const/16 v4, 0x7f

    if-le v3, v4, :cond_5b

    .line 136
    :cond_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 138
    :cond_5b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 142
    .end local v0           #c:C
    .end local v3           #x:I
    :cond_5f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method static is_numeric(Ljava/lang/String;)Z
    .registers 3
    .parameter "str"

    .prologue
    .line 147
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 151
    const/4 v1, 0x1

    :goto_4
    return v1

    .line 148
    :catch_5
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static main([Ljava/lang/String;)V
    .registers 12
    .parameter "args"

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 517
    new-instance v4, LSQLite/Shell;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v4, v6, v7}, LSQLite/Shell;-><init>(Ljava/io/PrintStream;Ljava/io/PrintStream;)V

    .line 518
    .local v4, s:LSQLite/Shell;
    iput v10, v4, LSQLite/Shell;->mode:I

    .line 519
    const-string v6, "|"

    iput-object v6, v4, LSQLite/Shell;->sep:Ljava/lang/String;

    .line 520
    iput-boolean v8, v4, LSQLite/Shell;->showHeader:Z

    .line 521
    new-instance v6, LSQLite/Database;

    invoke-direct {v6}, LSQLite/Database;-><init>()V

    iput-object v6, v4, LSQLite/Shell;->db:LSQLite/Database;

    .line 522
    const/4 v0, 0x0

    .local v0, dbname:Ljava/lang/String;
    const/4 v5, 0x0

    .line 523
    .local v5, sql:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1e
    array-length v6, p0

    if-ge v2, v6, :cond_9c

    .line 524
    aget-object v6, p0, v2

    const-string v7, "-html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_31

    .line 525
    const/4 v6, 0x4

    iput v6, v4, LSQLite/Shell;->mode:I

    .line 523
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 526
    :cond_31
    aget-object v6, p0, v2

    const-string v7, "-list"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3e

    .line 527
    iput v10, v4, LSQLite/Shell;->mode:I

    goto :goto_2e

    .line 528
    :cond_3e
    aget-object v6, p0, v2

    const-string v7, "-line"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4b

    .line 529
    iput v8, v4, LSQLite/Shell;->mode:I

    goto :goto_2e

    .line 530
    :cond_4b
    array-length v6, p0

    sub-int/2addr v6, v9

    if-ge v2, v6, :cond_60

    aget-object v6, p0, v2

    const-string v7, "-separator"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_60

    .line 532
    add-int/lit8 v2, v2, 0x1

    .line 533
    aget-object v6, p0, v2

    iput-object v6, v4, LSQLite/Shell;->sep:Ljava/lang/String;

    goto :goto_2e

    .line 534
    :cond_60
    aget-object v6, p0, v2

    const-string v7, "-header"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6d

    .line 535
    iput-boolean v9, v4, LSQLite/Shell;->showHeader:Z

    goto :goto_2e

    .line 536
    :cond_6d
    aget-object v6, p0, v2

    const-string v7, "-noheader"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7a

    .line 537
    iput-boolean v8, v4, LSQLite/Shell;->showHeader:Z

    goto :goto_2e

    .line 538
    :cond_7a
    aget-object v6, p0, v2

    const-string v7, "-echo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_87

    .line 539
    iput-boolean v9, v4, LSQLite/Shell;->echo:Z

    goto :goto_2e

    .line 540
    :cond_87
    if-nez v0, :cond_8c

    .line 541
    aget-object v0, p0, v2

    goto :goto_2e

    .line 542
    :cond_8c
    if-nez v5, :cond_91

    .line 543
    aget-object v5, p0, v2

    goto :goto_2e

    .line 545
    :cond_91
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Arguments: ?OPTIONS? FILENAME ?SQL?"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 546
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto :goto_2e

    .line 549
    :cond_9c
    if-nez v0, :cond_a8

    .line 550
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "No database file given"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 551
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 554
    :cond_a8
    :try_start_a8
    iget-object v6, v4, LSQLite/Shell;->db:LSQLite/Database;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, LSQLite/Database;->open(Ljava/lang/String;I)V
    :try_end_ae
    .catch LSQLite/Exception; {:try_start_a8 .. :try_end_ae} :catch_b9

    .line 559
    :goto_ae
    if-eqz v5, :cond_d7

    .line 560
    invoke-virtual {v4, v5}, LSQLite/Shell;->do_cmd(Ljava/lang/String;)V

    .line 569
    :goto_b3
    :try_start_b3
    iget-object v6, v4, LSQLite/Shell;->db:LSQLite/Database;

    invoke-virtual {v6}, LSQLite/Database;->close()V
    :try_end_b8
    .catch LSQLite/Exception; {:try_start_b3 .. :try_end_b8} :catch_e9

    .line 572
    :goto_b8
    return-void

    .line 555
    :catch_b9
    move-exception v6

    move-object v1, v6

    .line 556
    .local v1, e:LSQLite/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open database: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto :goto_ae

    .line 563
    .end local v1           #e:LSQLite/Exception;
    :cond_d7
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 566
    .local v3, is:Ljava/io/BufferedReader;
    invoke-virtual {v4, v3}, LSQLite/Shell;->do_input(Ljava/io/BufferedReader;)V

    goto :goto_b3

    .line 570
    .end local v3           #is:Ljava/io/BufferedReader;
    :catch_e9
    move-exception v6

    goto :goto_b8
.end method

.method public static sql_quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "str"

    .prologue
    const/16 v8, 0x27

    const-string v9, "\""

    const-string v7, "\'"

    .line 91
    if-nez p0, :cond_b

    .line 92
    const-string v5, "NULL"

    .line 117
    :goto_a
    return-object v5

    .line 94
    :cond_b
    const/4 v4, 0x0

    .local v4, single:I
    const/4 v1, 0x0

    .line 95
    .local v1, dbl:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2a

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_1f

    .line 97
    add-int/lit8 v4, v4, 0x1

    .line 95
    :cond_1c
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 98
    :cond_1f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_1c

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 102
    :cond_2a
    if-nez v4, :cond_46

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    .line 105
    :cond_46
    if-nez v1, :cond_62

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    .line 108
    :cond_62
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "\'"

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :goto_6a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_82

    .line 110
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 111
    .local v0, c:C
    if-ne v0, v8, :cond_7e

    .line 112
    const-string v5, "\'\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :goto_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 114
    :cond_7e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7b

    .line 117
    .end local v0           #c:C
    :cond_82
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a
.end method

.method public static sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "str"

    .prologue
    const/16 v8, 0x22

    const-string v7, "\""

    .line 64
    if-nez p0, :cond_9

    .line 65
    const-string v5, "NULL"

    .line 87
    :goto_8
    return-object v5

    .line 67
    :cond_9
    const/4 v4, 0x0

    .local v4, single:I
    const/4 v1, 0x0

    .line 68
    .local v1, dbl:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_28

    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_1f

    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 68
    :cond_1c
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 71
    :cond_1f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_1c

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 75
    :cond_28
    if-nez v1, :cond_44

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 78
    :cond_44
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "\""

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :goto_4c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_64

    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 81
    .local v0, c:C
    if-ne v0, v8, :cond_60

    .line 82
    const-string v5, "\"\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 84
    :cond_60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5d

    .line 87
    .end local v0           #c:C
    :cond_64
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 51
    new-instance v0, LSQLite/Shell;

    iget-object v1, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    iget-object v2, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-direct {v0, v1, v2}, LSQLite/Shell;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V

    .line 52
    .local v0, s:LSQLite/Shell;
    iget-object v1, p0, LSQLite/Shell;->db:LSQLite/Database;

    iput-object v1, v0, LSQLite/Shell;->db:LSQLite/Database;

    .line 53
    iget-boolean v1, p0, LSQLite/Shell;->echo:Z

    iput-boolean v1, v0, LSQLite/Shell;->echo:Z

    .line 54
    iget v1, p0, LSQLite/Shell;->mode:I

    iput v1, v0, LSQLite/Shell;->mode:I

    .line 55
    const/4 v1, 0x0

    iput v1, v0, LSQLite/Shell;->count:I

    .line 56
    iget-boolean v1, p0, LSQLite/Shell;->showHeader:Z

    iput-boolean v1, v0, LSQLite/Shell;->showHeader:Z

    .line 57
    iget-object v1, p0, LSQLite/Shell;->tableName:Ljava/lang/String;

    iput-object v1, v0, LSQLite/Shell;->tableName:Ljava/lang/String;

    .line 58
    iget-object v1, p0, LSQLite/Shell;->sep:Ljava/lang/String;

    iput-object v1, v0, LSQLite/Shell;->sep:Ljava/lang/String;

    .line 59
    iget-object v1, p0, LSQLite/Shell;->colwidth:[I

    iput-object v1, v0, LSQLite/Shell;->colwidth:[I

    .line 60
    return-object v0
.end method

.method public columns([Ljava/lang/String;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 163
    iput-object p1, p0, LSQLite/Shell;->cols:[Ljava/lang/String;

    .line 164
    return-void
.end method

.method do_cmd(Ljava/lang/String;)V
    .registers 6
    .parameter "sql"

    .prologue
    .line 501
    iget-object v1, p0, LSQLite/Shell;->db:LSQLite/Database;

    if-nez v1, :cond_5

    .line 514
    :goto_4
    return-void

    .line 504
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_18

    .line 505
    invoke-virtual {p0, p1}, LSQLite/Shell;->do_meta(Ljava/lang/String;)V

    goto :goto_4

    .line 508
    :cond_18
    :try_start_18
    iget-object v1, p0, LSQLite/Shell;->db:LSQLite/Database;

    invoke-virtual {v1, p1, p0}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_1d
    .catch LSQLite/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_4

    .line 509
    :catch_1e
    move-exception v1

    move-object v0, v1

    .line 510
    .local v0, e:LSQLite/Exception;
    iget-object v1, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_4
.end method

.method do_input(Ljava/io/BufferedReader;)V
    .registers 9
    .parameter "is"

    .prologue
    .line 462
    const/4 v3, 0x0

    .line 463
    .local v3, sql:Ljava/lang/String;
    const-string v2, "SQLITE> "

    .line 464
    .local v2, prompt:Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, p1, v2}, LSQLite/Shell;->read_line(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_80

    .line 465
    iget-boolean v4, p0, LSQLite/Shell;->echo:Z

    if-eqz v4, :cond_12

    .line 466
    iget-object v4, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2a

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_2a

    .line 469
    invoke-virtual {p0, v1}, LSQLite/Shell;->do_meta(Ljava/lang/String;)V

    .line 492
    :goto_24
    iget-object v4, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    goto :goto_3

    .line 471
    :cond_2a
    if-nez v3, :cond_3c

    .line 472
    move-object v3, v1

    .line 476
    :goto_2d
    invoke-static {v3}, LSQLite/Database;->complete(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 478
    :try_start_33
    iget-object v4, p0, LSQLite/Shell;->db:LSQLite/Database;

    invoke-virtual {v4, v3, p0}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_38
    .catch LSQLite/Exception; {:try_start_33 .. :try_end_38} :catch_54

    .line 486
    :goto_38
    const/4 v3, 0x0

    .line 487
    const-string v2, "SQLITE> "

    goto :goto_24

    .line 474
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 479
    :catch_54
    move-exception v4

    move-object v0, v4

    .line 480
    .local v0, e:LSQLite/Exception;
    iget-boolean v4, p0, LSQLite/Shell;->echo:Z

    if-nez v4, :cond_5f

    .line 481
    iget-object v4, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    :cond_5f
    iget-object v4, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQL Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    iget-object v4, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    goto :goto_38

    .line 489
    .end local v0           #e:LSQLite/Exception;
    :cond_7d
    const-string v2, "SQLITE? "

    goto :goto_24

    .line 494
    :cond_80
    if-eqz v3, :cond_9f

    .line 495
    iget-object v4, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete SQL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    iget-object v4, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 498
    :cond_9f
    return-void
.end method

.method do_meta(Ljava/lang/String;)V
    .registers 14
    .parameter "line"

    .prologue
    .line 295
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 296
    .local v6, st:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    .line 297
    .local v4, n:I
    if-gtz v4, :cond_10

    .line 446
    .end local p1
    :cond_f
    :goto_f
    return-void

    .line 300
    .restart local p1
    :cond_10
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, cmd:Ljava/lang/String;
    const/4 v9, 0x1

    sub-int v9, v4, v9

    new-array v0, v9, [Ljava/lang/String;

    .line 302
    .local v0, args:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 303
    .local v3, i:I
    :goto_1a
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 304
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v3

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 307
    :cond_29
    const-string v9, ".dump"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_37

    .line 308
    new-instance v9, LSQLite/DBDump;

    invoke-direct {v9, p0, v0}, LSQLite/DBDump;-><init>(LSQLite/Shell;[Ljava/lang/String;)V

    goto :goto_f

    .line 311
    :cond_37
    const-string v9, ".echo"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5c

    .line 312
    array-length v9, v0

    if-lez v9, :cond_f

    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-string v10, "y"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_58

    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-string v10, "on"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 314
    :cond_58
    const/4 v9, 0x1

    iput-boolean v9, p0, LSQLite/Shell;->echo:Z

    goto :goto_f

    .line 318
    :cond_5c
    const-string v9, ".exit"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_6d

    .line 320
    :try_start_64
    iget-object v9, p0, LSQLite/Shell;->db:LSQLite/Database;

    invoke-virtual {v9}, LSQLite/Database;->close()V
    :try_end_69
    .catch LSQLite/Exception; {:try_start_64 .. :try_end_69} :catch_2a9

    .line 323
    :goto_69
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 325
    :cond_6d
    const-string v9, ".header"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_93

    .line 326
    array-length v9, v0

    if-lez v9, :cond_f

    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-string v10, "y"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8e

    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-string v10, "on"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 328
    :cond_8e
    const/4 v9, 0x1

    iput-boolean v9, p0, LSQLite/Shell;->showHeader:Z

    goto/16 :goto_f

    .line 332
    :cond_93
    const-string v9, ".help"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_ea

    .line 333
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".dump ?TABLE? ...  Dump database in text fmt"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".echo ON|OFF       Command echo on or off"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".enc ?NAME?        Change encoding"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".exit              Exit program"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".header ON|OFF     Display headers on or off"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".help              This message"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".mode MODE         Set output mode to\n                   line, column, insert\n                   list, or html"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".mode insert TABLE Generate SQL insert stmts"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".schema ?PATTERN?  List table schema"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".separator STRING  Set separator string"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v10, ".tables ?PATTERN?  List table names"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 348
    :cond_ea
    const-string v9, ".mode"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_14e

    .line 349
    array-length v9, v0

    if-lez v9, :cond_f

    .line 350
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-string v10, "line"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_105

    .line 351
    const/4 v9, 0x0

    iput v9, p0, LSQLite/Shell;->mode:I

    goto/16 :goto_f

    .line 352
    :cond_105
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-string v10, "column"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_115

    .line 353
    const/4 v9, 0x1

    iput v9, p0, LSQLite/Shell;->mode:I

    goto/16 :goto_f

    .line 354
    :cond_115
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-string v10, "list"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_125

    .line 355
    const/4 v9, 0x2

    iput v9, p0, LSQLite/Shell;->mode:I

    goto/16 :goto_f

    .line 356
    :cond_125
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-string v10, "html"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_135

    .line 357
    const/4 v9, 0x4

    iput v9, p0, LSQLite/Shell;->mode:I

    goto/16 :goto_f

    .line 358
    :cond_135
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-string v10, "insert"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_f

    .line 359
    const/4 v9, 0x5

    iput v9, p0, LSQLite/Shell;->mode:I

    .line 360
    array-length v9, v0

    const/4 v10, 0x1

    if-le v9, v10, :cond_f

    .line 361
    const/4 v9, 0x1

    aget-object v9, v0, v9

    iput-object v9, p0, LSQLite/Shell;->destTable:Ljava/lang/String;

    goto/16 :goto_f

    .line 367
    :cond_14e
    const-string v9, ".separator"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_160

    .line 368
    array-length v9, v0

    if-lez v9, :cond_f

    .line 369
    const/4 v9, 0x0

    aget-object v9, v0, v9

    iput-object v9, p0, LSQLite/Shell;->sep:Ljava/lang/String;

    goto/16 :goto_f

    .line 373
    :cond_160
    const-string v9, ".tables"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1e4

    .line 374
    const/4 v7, 0x0

    .line 375
    .local v7, t:LSQLite/TableResult;
    array-length v9, v0

    if-lez v9, :cond_1bb

    .line 377
    const/4 v9, 0x1

    :try_start_16d
    new-array v5, v9, [Ljava/lang/String;

    .line 378
    .local v5, qarg:[Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v0, v10

    aput-object v10, v5, v9

    .line 379
    iget-object v9, p0, LSQLite/Shell;->db:LSQLite/Database;

    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name LIKE \'%%%q%%\' ORDER BY name"

    invoke-virtual {v9, v10, v5}, LSQLite/Database;->get_table(Ljava/lang/String;[Ljava/lang/String;)LSQLite/TableResult;
    :try_end_17c
    .catch LSQLite/Exception; {:try_start_16d .. :try_end_17c} :catch_19b

    move-result-object v7

    .line 396
    .end local v5           #qarg:[Ljava/lang/String;
    :goto_17d
    if-eqz v7, :cond_f

    .line 397
    const/4 v3, 0x0

    .end local p1
    :goto_180
    iget v9, v7, LSQLite/TableResult;->nrows:I

    if-ge v3, v9, :cond_f

    .line 398
    iget-object v9, v7, LSQLite/TableResult;->rows:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, p1, v9

    .line 399
    .local v8, tab:Ljava/lang/String;
    if-eqz v8, :cond_198

    .line 400
    iget-object v9, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    :cond_198
    add-int/lit8 v3, v3, 0x1

    goto :goto_180

    .line 383
    .end local v8           #tab:Ljava/lang/String;
    .restart local p1
    :catch_19b
    move-exception v9

    move-object v2, v9

    .line 384
    .local v2, e:LSQLite/Exception;
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SQL Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    goto :goto_17d

    .line 389
    .end local v2           #e:LSQLite/Exception;
    :cond_1bb
    :try_start_1bb
    iget-object v9, p0, LSQLite/Shell;->db:LSQLite/Database;

    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\' ORDER BY name"

    invoke-virtual {v9, v10}, LSQLite/Database;->get_table(Ljava/lang/String;)LSQLite/TableResult;
    :try_end_1c2
    .catch LSQLite/Exception; {:try_start_1bb .. :try_end_1c2} :catch_1c4

    move-result-object v7

    goto :goto_17d

    .line 391
    :catch_1c4
    move-exception v9

    move-object v2, v9

    .line 392
    .restart local v2       #e:LSQLite/Exception;
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SQL Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    goto :goto_17d

    .line 406
    .end local v2           #e:LSQLite/Exception;
    .end local v7           #t:LSQLite/TableResult;
    :cond_1e4
    const-string v9, ".schema"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_24c

    .line 407
    array-length v9, v0

    if-lez v9, :cond_222

    .line 409
    const/4 v9, 0x1

    :try_start_1f0
    new-array v5, v9, [Ljava/lang/String;

    .line 410
    .restart local v5       #qarg:[Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v0, v10

    aput-object v10, v5, v9

    .line 411
    iget-object v9, p0, LSQLite/Shell;->db:LSQLite/Database;

    const-string v10, "SELECT sql FROM sqlite_master WHERE type!=\'meta\' AND name LIKE \'%%%q%%\' AND sql NOTNULL ORDER BY type DESC, name"

    invoke-virtual {v9, v10, p0, v5}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    :try_end_1ff
    .catch LSQLite/Exception; {:try_start_1f0 .. :try_end_1ff} :catch_201

    goto/16 :goto_f

    .line 417
    .end local v5           #qarg:[Ljava/lang/String;
    :catch_201
    move-exception v9

    move-object v2, v9

    .line 418
    .restart local v2       #e:LSQLite/Exception;
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SQL Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_f

    .line 423
    .end local v2           #e:LSQLite/Exception;
    :cond_222
    :try_start_222
    iget-object v9, p0, LSQLite/Shell;->db:LSQLite/Database;

    const-string v10, "SELECT sql FROM sqlite_master WHERE type!=\'meta\' AND sql NOTNULL ORDER BY tbl_name, type DESC, name"

    invoke-virtual {v9, v10, p0}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_229
    .catch LSQLite/Exception; {:try_start_222 .. :try_end_229} :catch_22b

    goto/16 :goto_f

    .line 428
    :catch_22b
    move-exception v9

    move-object v2, v9

    .line 429
    .restart local v2       #e:LSQLite/Exception;
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SQL Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_f

    .line 435
    .end local v2           #e:LSQLite/Exception;
    :cond_24c
    const-string v9, ".enc"

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_284

    .line 437
    :try_start_254
    iget-object v9, p0, LSQLite/Shell;->db:LSQLite/Database;

    array-length v10, v0

    if-lez v10, :cond_282

    const/4 v10, 0x0

    aget-object v10, v0, v10

    :goto_25c
    invoke-virtual {v9, v10}, LSQLite/Database;->set_encoding(Ljava/lang/String;)V
    :try_end_25f
    .catch LSQLite/Exception; {:try_start_254 .. :try_end_25f} :catch_261

    goto/16 :goto_f

    .line 438
    :catch_261
    move-exception v9

    move-object v2, v9

    .line 439
    .restart local v2       #e:LSQLite/Exception;
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_f

    .line 437
    .end local v2           #e:LSQLite/Exception;
    :cond_282
    const/4 v10, 0x0

    goto :goto_25c

    .line 444
    :cond_284
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown command \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    iget-object v9, p0, LSQLite/Shell;->err:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_f

    .line 321
    :catch_2a9
    move-exception v9

    goto/16 :goto_69
.end method

.method public newrow([Ljava/lang/String;)Z
    .registers 15
    .parameter "args"

    .prologue
    const/4 v10, 0x1

    const-string v12, ");"

    const-string v11, " VALUES("

    const-string v9, "NULL"

    const-string v8, ""

    .line 173
    iget v5, p0, LSQLite/Shell;->mode:I

    packed-switch v5, :pswitch_data_2c8

    .line 291
    :cond_e
    :goto_e
    const/4 v5, 0x0

    return v5

    .line 175
    :pswitch_10
    array-length v5, p1

    if-eqz v5, :cond_e

    .line 178
    iget v5, p0, LSQLite/Shell;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, LSQLite/Shell;->count:I

    if-lez v5, :cond_22

    .line 179
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ""

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    :cond_22
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    array-length v5, p1

    if-ge v1, v5, :cond_e

    .line 182
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, LSQLite/Shell;->cols:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_50

    const-string v6, "NULL"

    move-object v6, v9

    :goto_4a
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 182
    :cond_50
    aget-object v6, p1, v1

    goto :goto_4a

    .line 187
    .end local v1           #i:I
    :pswitch_53
    const-string v0, ""

    .line 188
    .local v0, csep:Ljava/lang/String;
    iget v5, p0, LSQLite/Shell;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, LSQLite/Shell;->count:I

    if-nez v5, :cond_a6

    .line 189
    array-length v5, p1

    new-array v5, v5, [I

    iput-object v5, p0, LSQLite/Shell;->colwidth:[I

    .line 190
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_63
    array-length v5, p1

    if-ge v1, v5, :cond_9b

    .line 192
    iget-object v5, p0, LSQLite/Shell;->cols:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 193
    .local v4, w:I
    const/16 v5, 0xa

    if-ge v4, v5, :cond_74

    .line 194
    const/16 v4, 0xa

    .line 196
    :cond_74
    iget-object v5, p0, LSQLite/Shell;->colwidth:[I

    aput v4, v5, v1

    .line 197
    iget-boolean v5, p0, LSQLite/Shell;->showHeader:Z

    if-eqz v5, :cond_98

    .line 198
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, LSQLite/Shell;->cols:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    const-string v0, " "

    .line 190
    :cond_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 202
    .end local v4           #w:I
    :cond_9b
    iget-boolean v5, p0, LSQLite/Shell;->showHeader:Z

    if-eqz v5, :cond_a6

    .line 203
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ""

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    .end local v1           #i:I
    :cond_a6
    array-length v5, p1

    if-eqz v5, :cond_e

    .line 209
    const-string v0, ""

    .line 210
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_ac
    array-length v5, p1

    if-ge v1, v5, :cond_d4

    .line 211
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    if-nez v7, :cond_d1

    const-string v7, "NULL"

    move-object v7, v9

    :goto_c1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    const-string v0, " "

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    .line 211
    :cond_d1
    aget-object v7, p1, v1

    goto :goto_c1

    .line 214
    :cond_d4
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ""

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 218
    .end local v0           #csep:Ljava/lang/String;
    .end local v1           #i:I
    :pswitch_dd
    iget v5, p0, LSQLite/Shell;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, LSQLite/Shell;->count:I

    if-nez v5, :cond_113

    iget-boolean v5, p0, LSQLite/Shell;->showHeader:Z

    if-eqz v5, :cond_113

    .line 219
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_ea
    array-length v5, p1

    if-ge v1, v5, :cond_113

    .line 220
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, LSQLite/Shell;->cols:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    sub-int/2addr v7, v10

    if-ne v1, v7, :cond_110

    const-string v7, "\n"

    :goto_102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_ea

    .line 220
    :cond_110
    iget-object v7, p0, LSQLite/Shell;->sep:Ljava/lang/String;

    goto :goto_102

    .line 224
    .end local v1           #i:I
    :cond_113
    array-length v5, p1

    if-eqz v5, :cond_e

    .line 227
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_117
    array-length v5, p1

    if-ge v1, v5, :cond_144

    .line 228
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    aget-object v6, p1, v1

    if-nez v6, :cond_135

    const-string v6, "NULL"

    move-object v6, v9

    :goto_123
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    iget v5, p0, LSQLite/Shell;->mode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_138

    .line 230
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    :cond_132
    :goto_132
    add-int/lit8 v1, v1, 0x1

    goto :goto_117

    .line 228
    :cond_135
    aget-object v6, p1, v1

    goto :goto_123

    .line 231
    :cond_138
    array-length v5, p1

    sub-int/2addr v5, v10

    if-ge v1, v5, :cond_132

    .line 232
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    iget-object v6, p0, LSQLite/Shell;->sep:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_132

    .line 235
    :cond_144
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ""

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 238
    .end local v1           #i:I
    :pswitch_14d
    iget v5, p0, LSQLite/Shell;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, LSQLite/Shell;->count:I

    if-nez v5, :cond_194

    iget-boolean v5, p0, LSQLite/Shell;->showHeader:Z

    if-eqz v5, :cond_194

    .line 239
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, "<TR>"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_161
    array-length v5, p1

    if-ge v1, v5, :cond_18d

    .line 241
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<TH>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, LSQLite/Shell;->cols:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v7}, LSQLite/Shell;->html_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</TH>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_161

    .line 243
    :cond_18d
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, "</TR>"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    .end local v1           #i:I
    :cond_194
    array-length v5, p1

    if-eqz v5, :cond_e

    .line 248
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, "<TR>"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_19f
    array-length v5, p1

    if-ge v1, v5, :cond_1c9

    .line 250
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<TD>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-static {v7}, LSQLite/Shell;->html_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</TD>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_19f

    .line 252
    :cond_1c9
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, "</TR>"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 255
    .end local v1           #i:I
    :pswitch_1d2
    array-length v5, p1

    if-eqz v5, :cond_e

    .line 258
    iget-object v2, p0, LSQLite/Shell;->tableName:Ljava/lang/String;

    .line 259
    .local v2, tname:Ljava/lang/String;
    iget-object v5, p0, LSQLite/Shell;->destTable:Ljava/lang/String;

    if-eqz v5, :cond_1dd

    .line 260
    iget-object v2, p0, LSQLite/Shell;->destTable:Ljava/lang/String;

    .line 262
    :cond_1dd
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VALUES("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1fc
    array-length v5, p1

    if-ge v1, v5, :cond_265

    .line 264
    if-lez v1, :cond_223

    const-string v5, ","

    move-object v3, v5

    .line 265
    .local v3, tsep:Ljava/lang/String;
    :goto_204
    aget-object v5, p1, v1

    if-nez v5, :cond_227

    .line 266
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "NULL"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    :goto_220
    add-int/lit8 v1, v1, 0x1

    goto :goto_1fc

    .line 264
    .end local v3           #tsep:Ljava/lang/String;
    :cond_223
    const-string v5, ""

    move-object v3, v8

    goto :goto_204

    .line 267
    .restart local v3       #tsep:Ljava/lang/String;
    :cond_227
    aget-object v5, p1, v1

    invoke-static {v5}, LSQLite/Shell;->is_numeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_248

    .line 268
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_220

    .line 270
    :cond_248
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-static {v7}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_220

    .line 273
    .end local v3           #tsep:Ljava/lang/String;
    :cond_265
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ");"

    invoke-virtual {v5, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 276
    .end local v1           #i:I
    .end local v2           #tname:Ljava/lang/String;
    :pswitch_26e
    array-length v5, p1

    if-eqz v5, :cond_e

    .line 279
    iget-object v2, p0, LSQLite/Shell;->tableName:Ljava/lang/String;

    .line 280
    .restart local v2       #tname:Ljava/lang/String;
    iget-object v5, p0, LSQLite/Shell;->destTable:Ljava/lang/String;

    if-eqz v5, :cond_279

    .line 281
    iget-object v2, p0, LSQLite/Shell;->destTable:Ljava/lang/String;

    .line 283
    :cond_279
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VALUES("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_298
    array-length v5, p1

    if-ge v1, v5, :cond_2bf

    .line 285
    if-lez v1, :cond_2bb

    const-string v5, ","

    move-object v3, v5

    .line 286
    .restart local v3       #tsep:Ljava/lang/String;
    :goto_2a0
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_298

    .line 285
    .end local v3           #tsep:Ljava/lang/String;
    :cond_2bb
    const-string v5, ""

    move-object v3, v8

    goto :goto_2a0

    .line 288
    :cond_2bf
    iget-object v5, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    const-string v6, ");"

    invoke-virtual {v5, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 173
    :pswitch_data_2c8
    .packed-switch 0x0
        :pswitch_10
        :pswitch_53
        :pswitch_dd
        :pswitch_dd
        :pswitch_14d
        :pswitch_1d2
        :pswitch_26e
    .end packed-switch
.end method

.method read_line(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "is"
    .parameter "prompt"

    .prologue
    .line 450
    if-eqz p2, :cond_c

    .line 451
    :try_start_2
    iget-object v2, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    iget-object v2, p0, LSQLite/Shell;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 454
    :cond_c
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_12

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    move-object v2, v1

    .line 457
    .end local v1           #line:Ljava/lang/String;
    :goto_11
    return-object v2

    .line 456
    :catch_12
    move-exception v2

    move-object v0, v2

    .line 457
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_11
.end method

.method set_table_name(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 155
    if-nez p1, :cond_7

    .line 156
    const-string v0, ""

    iput-object v0, p0, LSQLite/Shell;->tableName:Ljava/lang/String;

    .line 160
    :goto_6
    return-void

    .line 159
    :cond_7
    invoke-static {p1}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LSQLite/Shell;->tableName:Ljava/lang/String;

    goto :goto_6
.end method

.method public types([Ljava/lang/String;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 168
    return-void
.end method
