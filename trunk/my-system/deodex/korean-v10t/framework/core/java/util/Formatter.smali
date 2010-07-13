.class public final Ljava/util/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$1;,
        Ljava/util/Formatter$ParserStateMachine;,
        Ljava/util/Formatter$DateTimeUtil;,
        Ljava/util/Formatter$FloatUtil;,
        Ljava/util/Formatter$Transformer;,
        Ljava/util/Formatter$FormatToken;,
        Ljava/util/Formatter$BigDecimalLayoutForm;
    }
.end annotation


# instance fields
.field private closed:Z

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private out:Ljava/lang/Appendable;

.field private transformer:Ljava/util/Formatter$Transformer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 428
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 594
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;)V

    .line 595
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .parameter "file"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 623
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 624
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 10
    .parameter "file"
    .parameter "csn"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Formatter;->closed:Z

    .line 653
    const/4 v1, 0x0

    .line 655
    .local v1, fout:Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_c} :catch_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_c} :catch_23

    .line 656
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .local v2, fout:Ljava/io/FileOutputStream;
    :try_start_c
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 658
    .local v3, writer:Ljava/io/OutputStreamWriter;
    new-instance v4, Ljava/io/BufferedWriter;

    const/16 v5, 0x2000

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v4, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_1a} :catch_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_1a} :catch_29

    .line 668
    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 669
    return-void

    .line 660
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .end local v3           #writer:Ljava/io/OutputStreamWriter;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    :catch_1d
    move-exception v4

    move-object v0, v4

    .line 661
    .local v0, e:Ljava/lang/RuntimeException;
    :goto_1f
    invoke-static {v1}, Ljava/util/Formatter;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 662
    throw v0

    .line 663
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_23
    move-exception v4

    move-object v0, v4

    .line 664
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_25
    invoke-static {v1}, Ljava/util/Formatter;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 665
    throw v0

    .line 663
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_29
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_25

    .line 660
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_2d
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_1f
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 5
    .parameter "os"

    .prologue
    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    .line 683
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 686
    .local v0, writer:Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 688
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 689
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .parameter "os"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 708
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    .line 709
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 7
    .parameter "os"
    .parameter "csn"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    .line 729
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 731
    .local v0, writer:Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 734
    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 735
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .registers 3
    .parameter "ps"

    .prologue
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 751
    if-nez p1, :cond_e

    .line 752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 754
    :cond_e
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 755
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 756
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .registers 3
    .parameter "a"

    .prologue
    .line 442
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 443
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .registers 4
    .parameter "a"
    .parameter "l"

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 475
    if-nez p1, :cond_12

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 480
    :goto_f
    iput-object p2, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 481
    return-void

    .line 478
    :cond_12
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    goto :goto_f
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
    .line 506
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;)V

    .line 508
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
    .line 536
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 5
    .parameter "fileName"
    .parameter "csn"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 568
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 569
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 459
    return-void
.end method

.method private checkClosed()V
    .registers 2

    .prologue
    .line 759
    iget-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    if-eqz v0, :cond_a

    .line 760
    new-instance v0, Ljava/util/FormatterClosedException;

    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    throw v0

    .line 762
    :cond_a
    return-void
.end method

.method private static closeOutputStream(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "os"

    .prologue
    .line 985
    if-nez p0, :cond_3

    .line 994
    :goto_2
    return-void

    .line 989
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 991
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatToken;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 8
    .parameter "args"
    .parameter "index"
    .parameter "token"
    .parameter "lastArgument"
    .parameter "hasLastArgumentSet"

    .prologue
    const/4 v1, -0x2

    .line 965
    if-ne p2, v1, :cond_d

    if-nez p5, :cond_d

    .line 966
    new-instance v0, Ljava/util/MissingFormatArgumentException;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_d
    if-nez p1, :cond_11

    .line 970
    const/4 v0, 0x0

    .line 981
    :goto_10
    return-object v0

    .line 973
    :cond_11
    array-length v0, p1

    if-lt p2, v0, :cond_1e

    .line 974
    new-instance v0, Ljava/util/MissingFormatArgumentException;

    invoke-virtual {p3}, Ljava/util/Formatter$FormatToken;->getPlainText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_1e
    if-ne p2, v1, :cond_22

    move-object v0, p4

    .line 978
    goto :goto_10

    .line 981
    :cond_22
    aget-object v0, p1, p2

    goto :goto_10
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 838
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    .line 840
    :try_start_3
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_10

    .line 841
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_10} :catch_11

    .line 847
    :cond_10
    :goto_10
    return-void

    .line 843
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 845
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_10
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 815
    invoke-direct {p0}, Ljava/util/Formatter;->checkClosed()V

    .line 816
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Flushable;

    if-eqz v1, :cond_10

    .line 818
    :try_start_9
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Flushable;

    invoke-interface {v1}, Ljava/io/Flushable;->flush()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_11

    .line 823
    :cond_10
    :goto_10
    return-void

    .line 819
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 820
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_10
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 881
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .registers 22
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 916
    invoke-direct/range {p0 .. p0}, Ljava/util/Formatter;->checkClosed()V

    .line 917
    invoke-static/range {p2 .. p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v13

    .line 918
    .local v13, formatBuffer:Ljava/nio/CharBuffer;
    new-instance v15, Ljava/util/Formatter$ParserStateMachine;

    invoke-direct {v15, v13}, Ljava/util/Formatter$ParserStateMachine;-><init>(Ljava/nio/CharBuffer;)V

    .line 922
    .local v15, parser:Ljava/util/Formatter$ParserStateMachine;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter;->transformer:Ljava/util/Formatter$Transformer;

    move-object v3, v0

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter;->transformer:Ljava/util/Formatter$Transformer;

    move-object v3, v0

    invoke-static {v3}, Ljava/util/Formatter$Transformer;->access$000(Ljava/util/Formatter$Transformer;)Ljava/util/Locale;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 923
    :cond_25
    new-instance v3, Ljava/util/Formatter$Transformer;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$Transformer;-><init>(Ljava/util/Formatter;Ljava/util/Locale;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/Formatter;->transformer:Ljava/util/Formatter$Transformer;

    .line 927
    :cond_34
    const/4 v10, 0x0

    .line 928
    .local v10, currentObjectIndex:I
    const/4 v14, 0x0

    .line 929
    .local v14, lastArgument:Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, hasLastArgumentSet:Z
    move-object v7, v14

    .line 930
    .end local v14           #lastArgument:Ljava/lang/Object;
    :goto_38
    invoke-virtual {v13}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 931
    invoke-virtual {v15}, Ljava/util/Formatter$ParserStateMachine;->reset()V

    .line 932
    invoke-virtual {v15}, Ljava/util/Formatter$ParserStateMachine;->getNextFormatToken()Ljava/util/Formatter$FormatToken;

    move-result-object v6

    .line 934
    .local v6, token:Ljava/util/Formatter$FormatToken;
    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getPlainText()Ljava/lang/String;

    move-result-object v16

    .line 935
    .local v16, plainText:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_64

    .line 936
    move-object/from16 v17, v16

    .local v17, result:Ljava/lang/String;
    move-object v3, v7

    .line 952
    :goto_55
    if-eqz v17, :cond_62

    .line 954
    :try_start_57
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_62} :catch_c1

    :cond_62
    :goto_62
    move-object v7, v3

    .line 959
    goto :goto_38

    .line 938
    .end local v17           #result:Ljava/lang/String;
    :cond_64
    const/4 v3, 0x0

    const/16 v4, 0x25

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move-object/from16 v0, v16

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 939
    const/4 v9, 0x0

    .line 940
    .local v9, argument:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->requireArgument()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 941
    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a1

    add-int/lit8 v11, v10, 0x1

    .end local v10           #currentObjectIndex:I
    .local v11, currentObjectIndex:I
    move v5, v10

    move v10, v11

    .end local v11           #currentObjectIndex:I
    .local v5, index:I
    .restart local v10       #currentObjectIndex:I
    :goto_88
    move-object/from16 v3, p0

    move-object/from16 v4, p3

    .line 943
    invoke-direct/range {v3 .. v8}, Ljava/util/Formatter;->getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatToken;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v9

    .line 945
    move-object v14, v9

    .line 946
    .restart local v14       #lastArgument:Ljava/lang/Object;
    const/4 v8, 0x1

    move-object v3, v14

    .line 948
    .end local v5           #index:I
    .end local v9           #argument:Ljava/lang/Object;
    .end local v14           #lastArgument:Ljava/lang/Object;
    :goto_93
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Formatter;->transformer:Ljava/util/Formatter$Transformer;

    move-object v4, v0

    invoke-virtual {v4, v6, v9}, Ljava/util/Formatter$Transformer;->transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 949
    .restart local v17       #result:Ljava/lang/String;
    if-nez v17, :cond_a7

    move-object/from16 v17, v16

    :goto_a0
    goto :goto_55

    .line 941
    .end local v17           #result:Ljava/lang/String;
    .restart local v9       #argument:Ljava/lang/Object;
    :cond_a1
    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    move-result v3

    move v5, v3

    goto :goto_88

    .line 949
    .end local v9           #argument:Ljava/lang/Object;
    .restart local v17       #result:Ljava/lang/String;
    :cond_a7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_a0

    .line 955
    :catch_c1
    move-exception v4

    move-object v12, v4

    .line 956
    .local v12, e:Ljava/io/IOException;
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_62

    .line 960
    .end local v6           #token:Ljava/util/Formatter$FormatToken;
    .end local v12           #e:Ljava/io/IOException;
    .end local v16           #plainText:Ljava/lang/String;
    .end local v17           #result:Ljava/lang/String;
    :cond_c9
    return-object p0

    .restart local v6       #token:Ljava/util/Formatter$FormatToken;
    .restart local v9       #argument:Ljava/lang/Object;
    .restart local v16       #plainText:Ljava/lang/String;
    :cond_ca
    move-object v3, v7

    goto :goto_93
.end method

.method public ioException()Ljava/io/IOException;
    .registers 2

    .prologue
    .line 859
    iget-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 773
    invoke-direct {p0}, Ljava/util/Formatter;->checkClosed()V

    .line 774
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public out()Ljava/lang/Appendable;
    .registers 2

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/util/Formatter;->checkClosed()V

    .line 787
    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 802
    invoke-direct {p0}, Ljava/util/Formatter;->checkClosed()V

    .line 803
    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
