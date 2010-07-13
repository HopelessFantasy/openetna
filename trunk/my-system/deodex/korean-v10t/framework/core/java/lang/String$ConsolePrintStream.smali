.class Ljava/lang/String$ConsolePrintStream;
.super Ljava/io/PrintStream;
.source "String.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConsolePrintStream"
.end annotation


# static fields
.field private static charset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 73
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "console.encoding"

    const-string v2, "ISO8859_1"

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Ljava/lang/String$ConsolePrintStream;->charset:Ljava/lang/String;

    .line 75
    sget-object v0, Ljava/lang/String$ConsolePrintStream;->charset:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 76
    const-string v0, "ISO-8859-1"

    sput-object v0, Ljava/lang/String$ConsolePrintStream;->charset:Ljava/lang/String;

    .line 78
    :cond_1d
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 90
    return-void
.end method


# virtual methods
.method public print(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 101
    if-nez p1, :cond_4

    .line 102
    const-string p1, "null"

    .line 106
    :cond_4
    :try_start_4
    sget-object v1, Ljava/lang/String$ConsolePrintStream;->charset:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String$ConsolePrintStream;->write([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_e

    .line 110
    :goto_d
    return-void

    .line 107
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 108
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/String$ConsolePrintStream;->setError()V

    goto :goto_d
.end method
