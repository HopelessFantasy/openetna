.class public Lcom/android/commands/monkey/MonkeySourceNetwork;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeySourceNetwork$1;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    }
.end annotation


# static fields
.field private static final COMMAND_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final DONE:Ljava/lang/String; = "done"

.field public static final EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn; = null

.field public static final ERROR:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn; = null

.field private static final ERROR_STR:Ljava/lang/String; = "ERROR"

.field public static final OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn; = null

.field private static final OK_STR:Ljava/lang/String; = "OK"

.field private static final QUIT:Ljava/lang/String; = "quit"

.field private static final TAG:Ljava/lang/String; = "MonkeyStub"


# instance fields
.field private clientSocket:Ljava/net/Socket;

.field private final commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

.field private input:Ljava/io/BufferedReader;

.field private output:Ljava/io/PrintWriter;

.field private serverSocket:Ljava/net/ServerSocket;

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 84
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(Z)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 85
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-direct {v0, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(Z)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->ERROR:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 86
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v1, "Invalid Argument"

    invoke-direct {v0, v2, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    .line 402
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "flip"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "touch"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "trackball"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "key"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "sleep"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "wake"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "tap"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "press"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "type"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "listvar"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getvar"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    .line 460
    iput-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    .line 468
    new-instance v0, Ljava/net/ServerSocket;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->serverSocket:Ljava/net/ServerSocket;

    .line 471
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->getKeyCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->wake()Z

    move-result v0

    return v0
.end method

.method private static commandLineSplit(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .parameter "line"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const-string v10, "\""

    const-string v9, " "

    .line 523
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 526
    .local v4, tok:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 527
    .local v1, insideQuote:Z
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 528
    .local v2, quotedWord:Ljava/lang/StringBuffer;
    :goto_15
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 529
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, cur:Ljava/lang/String;
    if-nez v1, :cond_32

    const-string v6, "\""

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 532
    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    const/4 v1, 0x1

    goto :goto_15

    .line 534
    :cond_32
    if-eqz v1, :cond_69

    .line 536
    const-string v6, "\""

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 537
    const/4 v1, 0x0

    .line 538
    const-string v6, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 542
    .local v5, word:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 544
    .end local v5           #word:Ljava/lang/String;
    :cond_5b
    const-string v6, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 547
    :cond_69
    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 550
    .end local v0           #cur:Ljava/lang/String;
    :cond_71
    return-object v3
.end method

.method private static getKeyCode(Ljava/lang/String;)I
    .registers 5
    .parameter "keyName"

    .prologue
    .line 240
    const/4 v1, -0x1

    .line 242
    .local v1, keyCode:I
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v1

    .line 256
    :cond_5
    :goto_5
    return v1

    .line 243
    :catch_6
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    .line 247
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYCODE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    goto :goto_5
.end method

.method private static replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "input"

    .prologue
    .line 509
    const-string v0, "\\\""

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private returnError()V
    .registers 3

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method private returnError(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method private returnOk()V
    .registers 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method private returnOk(Ljava/lang/String;)V
    .registers 4
    .parameter "returnValue"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method private startServer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    .line 484
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->wake()Z

    .line 486
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    .line 488
    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    .line 489
    return-void
.end method

.method private stopServer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 496
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 497
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    .line 499
    return-void
.end method

.method private translateCommand(Ljava/lang/String;)V
    .registers 8
    .parameter "commandLine"

    .prologue
    .line 559
    const-string v3, "MonkeyStub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "translateCommand: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandLineSplit(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 561
    .local v1, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4a

    .line 562
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;

    .line 563
    .local v0, command:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    if-eqz v0, :cond_4a

    .line 564
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    invoke-interface {v0, v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;->translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v2

    .line 566
    .local v2, ret:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->wasSuccessful()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 567
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->hasMessage()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 568
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk(Ljava/lang/String;)V

    .line 581
    .end local v0           #command:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    .end local v2           #ret:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    :cond_4a
    :goto_4a
    return-void

    .line 570
    .restart local v0       #command:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    .restart local v2       #ret:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    :cond_4b
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk()V

    goto :goto_4a

    .line 573
    :cond_4f
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->hasMessage()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 574
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnError(Ljava/lang/String;)V

    goto :goto_4a

    .line 576
    :cond_5d
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnError()V

    goto :goto_4a
.end method

.method private static final wake()Z
    .registers 7

    .prologue
    const/4 v6, 0x1

    .line 386
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 389
    .local v1, pm:Landroid/os/IPowerManager;
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_16

    move v2, v6

    .line 394
    :goto_15
    return v2

    .line 390
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 391
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MonkeyStub"

    const-string v3, "Got remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    const/4 v2, 0x0

    goto :goto_15
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const-string v5, "MonkeyStub"

    .line 584
    iget-boolean v3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    if-nez v3, :cond_d

    .line 586
    :try_start_7
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->startServer()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_17

    .line 591
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    .line 600
    :cond_d
    :goto_d
    :try_start_d
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    invoke-virtual {v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;->getNextQueuedEvent()Lcom/android/commands/monkey/MonkeyEvent;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_43

    move-result-object v2

    .line 601
    .local v2, queuedEvent:Lcom/android/commands/monkey/MonkeyEvent;
    if-eqz v2, :cond_21

    move-object v3, v2

    .line 649
    .end local v2           #queuedEvent:Lcom/android/commands/monkey/MonkeyEvent;
    :goto_16
    return-object v3

    .line 587
    :catch_17
    move-exception v1

    .line 588
    .local v1, e:Ljava/io/IOException;
    const-string v3, "MonkeyStub"

    const-string v3, "Got IOException from server"

    invoke-static {v5, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 589
    goto :goto_16

    .line 606
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #queuedEvent:Lcom/android/commands/monkey/MonkeyEvent;
    :cond_21
    :try_start_21
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, command:Ljava/lang/String;
    if-nez v0, :cond_32

    .line 608
    const-string v3, "MonkeyStub"

    const-string v4, "Connection dropped."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v0, "done"

    .line 614
    :cond_32
    const-string v3, "done"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_37} :catch_43

    move-result v3

    if-eqz v3, :cond_58

    .line 617
    :try_start_3a
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->stopServer()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_4e

    .line 624
    :try_start_3d
    new-instance v3, Lcom/android/commands/monkey/MonkeyNoopEvent;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeyNoopEvent;-><init>()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_16

    .line 647
    .end local v0           #command:Ljava/lang/String;
    .end local v2           #queuedEvent:Lcom/android/commands/monkey/MonkeyEvent;
    :catch_43
    move-exception v3

    move-object v1, v3

    .line 648
    .restart local v1       #e:Ljava/io/IOException;
    const-string v3, "MonkeyStub"

    const-string v3, "Exception: "

    invoke-static {v5, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 649
    goto :goto_16

    .line 618
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #command:Ljava/lang/String;
    .restart local v2       #queuedEvent:Lcom/android/commands/monkey/MonkeyEvent;
    :catch_4e
    move-exception v1

    .line 619
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_4f
    const-string v3, "MonkeyStub"

    const-string v4, "Got IOException shutting down!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 620
    goto :goto_16

    .line 628
    .end local v1           #e:Ljava/io/IOException;
    :cond_58
    const-string v3, "quit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 630
    const-string v3, "MonkeyStub"

    const-string v4, "Quit requested"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk()V

    move-object v3, v6

    .line 633
    goto :goto_16

    .line 639
    :cond_6c
    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 645
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->translateCommand(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_77} :catch_43

    goto :goto_d
.end method

.method public setVerbose(I)V
    .registers 2
    .parameter "verbose"

    .prologue
    .line 691
    return-void
.end method

.method public validate()Z
    .registers 2

    .prologue
    .line 695
    const/4 v0, 0x1

    return v0
.end method
