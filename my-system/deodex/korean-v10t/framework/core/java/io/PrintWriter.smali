.class public Ljava/io/PrintWriter;
.super Ljava/io/Writer;
.source "PrintWriter.java"


# instance fields
.field private autoflush:Z

.field private ioError:Z

.field private final lineSeparator:Ljava/lang/String;

.field protected out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 6
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .parameter "file"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 75
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 4
    .parameter "out"
    .parameter "autoflush"

    .prologue
    .line 94
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3
    .parameter "wr"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .registers 5
    .parameter "wr"
    .parameter "autoflush"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 60
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/PrintWriter;->lineSeparator:Ljava/lang/String;

    .line 129
    iput-boolean p2, p0, Ljava/io/PrintWriter;->autoflush:Z

    .line 130
    iput-object p1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 214
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "fileName"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 247
    return-void
.end method

.method private final doWrite([CII)V
    .registers 7
    .parameter "buf"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 762
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 763
    :try_start_3
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    if-eqz v2, :cond_17

    .line 765
    :try_start_7
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_e

    .line 772
    :goto_c
    :try_start_c
    monitor-exit v1

    .line 773
    return-void

    .line 766
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 767
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    goto :goto_c

    .line 772
    .end local v0           #e:Ljava/io/IOException;
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v2

    .line 770
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    goto :goto_c
.end method

.method private newline()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Ljava/io/PrintWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    iget-boolean v0, p0, Ljava/io/PrintWriter;->autoflush:Z

    if-eqz v0, :cond_c

    .line 422
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 424
    :cond_c
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/PrintWriter;
    .registers 2
    .parameter "c"

    .prologue
    .line 817
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(I)V

    .line 818
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    .registers 5
    .parameter "csq"

    .prologue
    const/4 v1, 0x0

    const-string v2, "null"

    .line 834
    if-nez p1, :cond_11

    .line 835
    const-string v0, "null"

    const-string v0, "null"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    .line 839
    :goto_10
    return-object p0

    .line 837
    :cond_11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    goto :goto_10
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .registers 7
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 866
    if-nez p1, :cond_4

    .line 867
    const-string p1, "null"

    .line 869
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, output:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 871
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
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
    .line 41
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
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
    .line 41
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

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
    .line 41
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

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
    .line 41
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    if-eqz v0, :cond_7

    .line 260
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 262
    :cond_7
    iget-boolean v0, p0, Ljava/io/PrintWriter;->ioError:Z

    return v0
.end method

.method public close()V
    .registers 4

    .prologue
    .line 273
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_3
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v2, :cond_f

    .line 276
    :try_start_7
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_11

    .line 280
    :goto_c
    const/4 v2, 0x0

    :try_start_d
    iput-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    .line 282
    :cond_f
    monitor-exit v1

    .line 283
    return-void

    .line 277
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 278
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    goto :goto_c

    .line 282
    .end local v0           #e:Ljava/io/IOException;
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v2
.end method

.method public flush()V
    .registers 4

    .prologue
    .line 294
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_3
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    if-eqz v2, :cond_17

    .line 297
    :try_start_7
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_e

    .line 304
    :goto_c
    :try_start_c
    monitor-exit v1

    .line 305
    return-void

    .line 298
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 299
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    goto :goto_c

    .line 304
    .end local v0           #e:Ljava/io/IOException;
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v2

    .line 302
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    goto :goto_c
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 329
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 6
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 356
    if-nez p2, :cond_e

    .line 357
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0351"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_e
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-virtual {v0, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 360
    iget-boolean v0, p0, Ljava/io/PrintWriter;->autoflush:Z

    if-eqz v0, :cond_1d

    .line 361
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 363
    :cond_1d
    return-object p0
.end method

.method public print(C)V
    .registers 3
    .parameter "ch"

    .prologue
    .line 449
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public print(D)V
    .registers 4
    .parameter "dnum"

    .prologue
    .line 461
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public print(F)V
    .registers 3
    .parameter "fnum"

    .prologue
    .line 473
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public print(I)V
    .registers 3
    .parameter "inum"

    .prologue
    .line 485
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public print(J)V
    .registers 4
    .parameter "lnum"

    .prologue
    .line 497
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 509
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 526
    if-eqz p1, :cond_7

    move-object v0, p1

    :goto_3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 527
    return-void

    .line 526
    :cond_7
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public print(Z)V
    .registers 3
    .parameter "bool"

    .prologue
    .line 538
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public print([C)V
    .registers 5
    .parameter "charArray"

    .prologue
    .line 436
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 387
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 5
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 413
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public println()V
    .registers 3

    .prologue
    .line 549
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->newline()V

    .line 551
    monitor-exit v0

    .line 552
    return-void

    .line 551
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public println(C)V
    .registers 3
    .parameter "ch"

    .prologue
    .line 579
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public println(D)V
    .registers 4
    .parameter "dnum"

    .prologue
    .line 593
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public println(F)V
    .registers 3
    .parameter "fnum"

    .prologue
    .line 607
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public println(I)V
    .registers 3
    .parameter "inum"

    .prologue
    .line 621
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public println(J)V
    .registers 4
    .parameter "lnum"

    .prologue
    .line 635
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 649
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 668
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    invoke-direct {p0}, Ljava/io/PrintWriter;->newline()V

    .line 671
    monitor-exit v0

    .line 672
    return-void

    .line 671
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public println(Z)V
    .registers 3
    .parameter "bool"

    .prologue
    .line 685
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public println([C)V
    .registers 5
    .parameter "charArray"

    .prologue
    .line 565
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method protected setError()V
    .registers 3

    .prologue
    .line 694
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Ljava/io/PrintWriter;->ioError:Z

    .line 696
    monitor-exit v0

    .line 697
    return-void

    .line 696
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public write(I)V
    .registers 6
    .parameter "oneChar"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 755
    new-array v0, v3, [C

    int-to-char v1, p1

    aput-char v1, v0, v2

    invoke-direct {p0, v0, v2, v3}, Ljava/io/PrintWriter;->doWrite([CII)V

    .line 756
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 784
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write([C)V

    .line 785
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 5
    .parameter "str"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 804
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write([C)V

    .line 805
    return-void
.end method

.method public write([C)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 711
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PrintWriter;->write([CII)V

    .line 712
    return-void
.end method

.method public write([CII)V
    .registers 4
    .parameter "buf"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 738
    invoke-direct {p0, p1, p2, p3}, Ljava/io/PrintWriter;->doWrite([CII)V

    .line 739
    return-void
.end method
