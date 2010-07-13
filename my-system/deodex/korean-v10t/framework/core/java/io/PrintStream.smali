.class public Ljava/io/PrintStream;
.super Ljava/io/FilterOutputStream;
.source "PrintStream.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# static fields
.field private static final TOKEN_NULL:Ljava/lang/String; = "null"


# instance fields
.field private autoflush:Z

.field private encoding:Ljava/lang/String;

.field private ioError:Z

.field private final lineSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/PrintStream;->lineSeparator:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .parameter "file"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/PrintStream;->lineSeparator:Ljava/lang/String;

    .line 176
    if-nez p2, :cond_1f

    .line 177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 179
    :cond_1f
    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 180
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v0

    .line 182
    :cond_2b
    iput-object p2, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/PrintStream;->lineSeparator:Ljava/lang/String;

    .line 75
    if-nez p1, :cond_1a

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_1a
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 5
    .parameter "out"
    .parameter "autoflush"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/PrintStream;->lineSeparator:Ljava/lang/String;

    .line 97
    if-nez p1, :cond_1a

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 100
    :cond_1a
    iput-boolean p2, p0, Ljava/io/PrintStream;->autoflush:Z

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    .registers 6
    .parameter "out"
    .parameter "autoflush"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/PrintStream;->lineSeparator:Ljava/lang/String;

    .line 125
    if-eqz p1, :cond_16

    if-nez p3, :cond_1c

    .line 126
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 128
    :cond_1c
    iput-boolean p2, p0, Ljava/io/PrintStream;->autoflush:Z

    .line 129
    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 130
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2a
    iput-object p3, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "fileName"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method private newline()V
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Ljava/io/PrintStream;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 397
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/PrintStream;
    .registers 2
    .parameter "c"

    .prologue
    .line 773
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    .line 774
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .registers 3
    .parameter "csq"

    .prologue
    .line 789
    if-nez p1, :cond_8

    .line 790
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 794
    :goto_7
    return-object p0

    .line 792
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .registers 5
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 820
    if-nez p1, :cond_c

    .line 821
    const-string v0, "null"

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 825
    :goto_b
    return-object p0

    .line 823
    :cond_c
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    .line 241
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 243
    :cond_7
    iget-boolean v0, p0, Ljava/io/PrintStream;->ioError:Z

    return v0
.end method

.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 255
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 256
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_18

    if-eqz v1, :cond_10

    .line 258
    :try_start_8
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_12

    .line 264
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 260
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 261
    .local v0, e:Ljava/io/IOException;
    :try_start_14
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_10

    .line 255
    .end local v0           #e:Ljava/io/IOException;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flush()V
    .registers 2

    .prologue
    .line 275
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_d

    .line 277
    :try_start_5
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_c

    .line 284
    :goto_a
    monitor-exit p0

    return-void

    .line 279
    :catch_c
    move-exception v0

    .line 283
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_a

    .line 275
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 308
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 6
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 334
    if-nez p2, :cond_e

    .line 335
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0351"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_e
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-virtual {v0, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 338
    return-object p0
.end method

.method public print(C)V
    .registers 3
    .parameter "ch"

    .prologue
    .line 422
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public print(D)V
    .registers 4
    .parameter "dnum"

    .prologue
    .line 435
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public print(F)V
    .registers 3
    .parameter "fnum"

    .prologue
    .line 448
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public print(I)V
    .registers 3
    .parameter "inum"

    .prologue
    .line 461
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public print(J)V
    .registers 4
    .parameter "lnum"

    .prologue
    .line 474
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 487
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public declared-synchronized print(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 505
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_a

    .line 506
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 523
    :goto_8
    monitor-exit p0

    return-void

    .line 509
    :cond_a
    if-nez p1, :cond_15

    .line 510
    :try_start_c
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_8

    .line 505
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1

    .line 515
    :cond_15
    :try_start_15
    iget-object v1, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    if-nez v1, :cond_27

    .line 516
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->write([B)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_12
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_8

    .line 520
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 521
    .local v0, e:Ljava/io/IOException;
    :try_start_23
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_12

    goto :goto_8

    .line 518
    .end local v0           #e:Ljava/io/IOException;
    :cond_27
    :try_start_27
    iget-object v1, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->write([B)V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_12
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_30} :catch_21

    goto :goto_8
.end method

.method public print(Z)V
    .registers 3
    .parameter "bool"

    .prologue
    .line 535
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public print([C)V
    .registers 5
    .parameter "charArray"

    .prologue
    .line 409
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 363
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 5
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 389
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public println()V
    .registers 1

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/io/PrintStream;->newline()V

    .line 546
    return-void
.end method

.method public println(C)V
    .registers 3
    .parameter "ch"

    .prologue
    .line 572
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public println(D)V
    .registers 4
    .parameter "dnum"

    .prologue
    .line 585
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public println(F)V
    .registers 3
    .parameter "fnum"

    .prologue
    .line 598
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public println(I)V
    .registers 3
    .parameter "inum"

    .prologue
    .line 611
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public println(J)V
    .registers 4
    .parameter "lnum"

    .prologue
    .line 624
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 637
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public declared-synchronized println(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 655
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 656
    invoke-direct {p0}, Ljava/io/PrintStream;->newline()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 657
    monitor-exit p0

    return-void

    .line 655
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(Z)V
    .registers 3
    .parameter "bool"

    .prologue
    .line 669
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public println([C)V
    .registers 5
    .parameter "charArray"

    .prologue
    .line 559
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method protected setError()V
    .registers 2

    .prologue
    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PrintStream;->ioError:Z

    .line 679
    return-void
.end method

.method public declared-synchronized write(I)V
    .registers 5
    .parameter "oneByte"

    .prologue
    .line 749
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_a

    .line 750
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_23

    .line 761
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 754
    :cond_a
    :try_start_a
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 755
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoflush:Z

    if-eqz v1, :cond_8

    and-int/lit16 v1, p1, 0xff

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    .line 756
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_23
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1c} :catch_1d

    goto :goto_8

    .line 758
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 759
    .local v0, e:Ljava/io/IOException;
    :try_start_1f
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_8

    .line 749
    .end local v0           #e:Ljava/io/IOException;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public write([BII)V
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 705
    if-nez p1, :cond_e

    .line 706
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "K0047"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 713
    :cond_e
    or-int v1, p2, p3

    if-ltz v1, :cond_16

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_22

    .line 714
    :cond_16
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "K002f"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 717
    :cond_22
    monitor-enter p0

    .line 718
    :try_start_23
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_2c

    .line 719
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V

    .line 720
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_3a

    .line 731
    :goto_2b
    return-void

    .line 723
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 724
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoflush:Z

    if-eqz v1, :cond_38

    .line 725
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_38} :catch_3d

    .line 730
    :cond_38
    :goto_38
    :try_start_38
    monitor-exit p0

    goto :goto_2b

    :catchall_3a
    move-exception v1

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v1

    .line 727
    :catch_3d
    move-exception v1

    move-object v0, v1

    .line 728
    .local v0, e:Ljava/io/IOException;
    :try_start_3f
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_3a

    goto :goto_38
.end method
