.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteConnection$Arguments;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_MILLIS:I = 0x3e8

.field private static final MAX_ZYGOTE_ARGC:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final intArray2d:[[I

.field private static sPeerWaitSocket:Landroid/net/LocalSocket;


# instance fields
.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final mSocketReader:Ljava/io/BufferedReader;

.field private final peer:Landroid/net/Credentials;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 44
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->sPeerWaitSocket:Landroid/net/LocalSocket;

    return-void
.end method

.method constructor <init>(Landroid/net/LocalSocket;)V
    .registers 6
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 91
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 94
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    .line 97
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 100
    :try_start_29
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_31} :catch_32

    .line 105
    return-void

    .line 101
    :catch_32
    move-exception v1

    move-object v0, v1

    .line 102
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    throw v0
.end method

.method private static applyCapabilitiesSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .registers 13
    .parameter "args"
    .parameter "peer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, -0x1

    const-wide/16 v7, 0x0

    .line 619
    iget-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_11

    iget-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_11

    .line 659
    :cond_10
    return-void

    .line 625
    :cond_11
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v3

    if-eqz v3, :cond_10

    .line 633
    :try_start_17
    invoke-virtual {p1}, Landroid/net/Credentials;->getPid()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->capgetPermitted(I)J
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_31

    move-result-wide v1

    .line 644
    .local v1, permittedCaps:J
    iget-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    xor-long/2addr v3, v9

    iget-wide v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_3b

    .line 645
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "Effective capabilities cannot be superset of  permitted capabilities"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 634
    .end local v1           #permittedCaps:J
    :catch_31
    move-exception v3

    move-object v0, v3

    .line 635
    .local v0, ex:Ljava/io/IOException;
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "Error retrieving peer\'s capabilities."

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 655
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #permittedCaps:J
    :cond_3b
    xor-long v3, v1, v9

    iget-wide v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_10

    .line 656
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "Peer specified unpermitted capabilities"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static applyDebuggerSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 573
    const-string v0, "1"

    const-string v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 574
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 576
    :cond_14
    return-void
.end method

.method private static applyRlimitSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .registers 5
    .parameter "args"
    .parameter "peer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    .line 594
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    .line 596
    .local v0, peerUid:I
    if-eqz v0, :cond_16

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_16

    .line 598
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v1, :cond_16

    .line 599
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "This UID may not specify rlimits."

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_16
    return-void
.end method

.method private static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .registers 8
    .parameter "args"
    .parameter "peer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x1

    .line 522
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    .line 524
    .local v1, peerUid:I
    if-nez v1, :cond_22

    .line 553
    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v3, :cond_15

    .line 554
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 555
    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 557
    :cond_15
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v3, :cond_21

    .line 558
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 559
    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 561
    :cond_21
    return-void

    .line 526
    :cond_22
    if-ne v1, v5, :cond_50

    .line 528
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, factoryTest:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    move v2, v4

    .line 537
    .local v2, uidRestricted:Z
    :goto_3b
    if-eqz v2, :cond_9

    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-ge v3, v5, :cond_9

    .line 539
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "System UID may not launch process with UID < 1000"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 534
    .end local v2           #uidRestricted:Z
    :cond_4d
    const/4 v3, 0x0

    move v2, v3

    goto :goto_3b

    .line 545
    .end local v0           #factoryTest:Ljava/lang/String;
    :cond_50
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v3, :cond_5c

    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v3, :cond_5c

    iget-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-eqz v3, :cond_9

    .line 547
    :cond_5c
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "App UIDs may not specify uid\'s or gid\'s"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    .registers 16
    .parameter "parsedArgs"
    .parameter "descriptors"
    .parameter "newStderr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 682
    iget v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-eqz v8, :cond_27

    .line 687
    iget v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_10

    iget v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    const/16 v9, 0x3e9

    if-ne v8, v9, :cond_20

    .line 688
    :cond_10
    iget-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    const-wide/32 v10, 0x2000000

    or-long/2addr v8, v10

    iput-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 689
    iget-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    const-wide/32 v10, 0x2000000

    or-long/2addr v8, v10

    iput-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 692
    :cond_20
    :try_start_20
    iget-wide v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    iget-wide v10, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/internal/os/ZygoteInit;->setCapabilities(JJ)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_27} :catch_54

    .line 704
    :cond_27
    :goto_27
    iget-boolean v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->peerWait:Z

    if-eqz v8, :cond_68

    .line 706
    :try_start_2b
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/os/ZygoteInit;->setCloseOnExec(Ljava/io/FileDescriptor;Z)V

    .line 707
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    sput-object v8, Lcom/android/internal/os/ZygoteConnection;->sPeerWaitSocket:Landroid/net/LocalSocket;
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_39} :catch_5e

    .line 717
    :goto_39
    if-eqz p2, :cond_71

    .line 719
    const/4 v8, 0x0

    :try_start_3c
    aget-object v8, p2, v8

    const/4 v9, 0x1

    aget-object v9, p2, v9

    const/4 v10, 0x2

    aget-object v10, p2, v10

    invoke-static {v8, v9, v10}, Lcom/android/internal/os/ZygoteInit;->reopenStdio(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 722
    move-object v0, p2

    .local v0, arr$:[Ljava/io/FileDescriptor;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4a
    if-ge v5, v6, :cond_6f

    aget-object v4, v0, v5

    .line 723
    .local v4, fd:Ljava/io/FileDescriptor;
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->closeDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_51} :catch_7b

    .line 722
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 694
    .end local v0           #arr$:[Ljava/io/FileDescriptor;
    .end local v4           #fd:Ljava/io/FileDescriptor;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_54
    move-exception v8

    move-object v3, v8

    .line 695
    .local v3, ex:Ljava/io/IOException;
    const-string v8, "Zygote"

    const-string v9, "Error setting capabilities"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 708
    .end local v3           #ex:Ljava/io/IOException;
    :catch_5e
    move-exception v8

    move-object v3, v8

    .line 709
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v8, "Zygote"

    const-string v9, "Zygote Child: error setting peer wait socket to be close-on-exec"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 713
    .end local v3           #ex:Ljava/io/IOException;
    :cond_68
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 714
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    goto :goto_39

    .line 725
    .restart local v0       #arr$:[Ljava/io/FileDescriptor;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_6f
    :try_start_6f
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_71} :catch_7b

    .line 731
    .end local v0           #arr$:[Ljava/io/FileDescriptor;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_71
    :goto_71
    iget-boolean v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeInit:Z

    if-eqz v8, :cond_85

    .line 732
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/os/RuntimeInit;->zygoteInit([Ljava/lang/String;)V

    .line 764
    :goto_7a
    return-void

    .line 726
    :catch_7b
    move-exception v8

    move-object v3, v8

    .line 727
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v8, "Zygote"

    const-string v9, "Error reopening stdio"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_71

    .line 736
    .end local v3           #ex:Ljava/io/IOException;
    :cond_85
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    if-eqz v8, :cond_b3

    .line 737
    new-instance v2, Ldalvik/system/PathClassLoader;

    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 746
    .local v2, cloader:Ljava/lang/ClassLoader;
    :goto_94
    :try_start_94
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v1, v8, v9
    :try_end_99
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_94 .. :try_end_99} :catch_b8

    .line 752
    .local v1, className:Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    new-array v7, v8, [Ljava/lang/String;

    .line 755
    .local v7, mainArgs:[Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    array-length v11, v7

    invoke-static {v8, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    :try_start_a8
    invoke-static {v2, v1, v7}, Lcom/android/internal/os/ZygoteInit;->invokeStaticMain(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/RuntimeException; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_7a

    .line 760
    :catch_ac
    move-exception v3

    .line 761
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v8, "Error starting. "

    invoke-static {p3, v8, v3}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 741
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #cloader:Ljava/lang/ClassLoader;
    .end local v3           #ex:Ljava/lang/RuntimeException;
    .end local v7           #mainArgs:[Ljava/lang/String;
    :cond_b3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .restart local v2       #cloader:Ljava/lang/ClassLoader;
    goto :goto_94

    .line 747
    :catch_b8
    move-exception v8

    move-object v3, v8

    .line 748
    .local v3, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v8, "Missing required class name argument"

    const/4 v9, 0x0

    invoke-static {p3, v8, v9}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    .registers 12
    .parameter "pid"
    .parameter "descriptors"
    .parameter "parsedArgs"

    .prologue
    const/4 v7, 0x1

    const-string v6, "Zygote"

    .line 780
    if-lez p1, :cond_12

    .line 783
    :try_start_5
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v5}, Landroid/net/Credentials;->getPid()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/os/ZygoteInit;->getpgid(I)I

    move-result v5

    invoke-static {p1, v5}, Lcom/android/internal/os/ZygoteInit;->setpgid(II)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_21

    .line 795
    :cond_12
    :goto_12
    if-eqz p2, :cond_34

    .line 796
    move-object v0, p2

    .local v0, arr$:[Ljava/io/FileDescriptor;
    :try_start_15
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_17
    if-ge v3, v4, :cond_34

    aget-object v2, v0, v3

    .line 797
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->closeDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1e} :catch_2b

    .line 796
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 784
    .end local v0           #arr$:[Ljava/io/FileDescriptor;
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_21
    move-exception v5

    move-object v1, v5

    .line 789
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "Zygote"

    const-string v5, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 800
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #arr$:[Ljava/io/FileDescriptor;
    :catch_2b
    move-exception v5

    move-object v1, v5

    .line 801
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v5, "Zygote"

    const-string v5, "Error closing passed descriptors in parent process"

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    .end local v0           #arr$:[Ljava/io/FileDescriptor;
    .end local v1           #ex:Ljava/io/IOException;
    :cond_34
    :try_start_34
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_44

    .line 816
    iget-boolean v5, p3, Lcom/android/internal/os/ZygoteConnection$Arguments;->peerWait:Z

    if-eqz v5, :cond_59

    .line 818
    :try_start_3d
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_4f

    :goto_42
    move v5, v7

    .line 824
    :goto_43
    return v5

    .line 807
    :catch_44
    move-exception v5

    move-object v1, v5

    .line 808
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v5, "Zygote"

    const-string v5, "Error reading from command socket"

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v7

    .line 809
    goto :goto_43

    .line 819
    .end local v1           #ex:Ljava/io/IOException;
    :catch_4f
    move-exception v5

    move-object v1, v5

    .line 820
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v5, "Zygote"

    const-string v5, "Zygote: error closing sockets"

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 824
    .end local v1           #ex:Ljava/io/IOException;
    :cond_59
    const/4 v5, 0x0

    goto :goto_43
.end method

.method private static logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "newStderr"
    .parameter "message"
    .parameter "ex"

    .prologue
    .line 837
    const-string v0, "Zygote"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    if-eqz p0, :cond_1f

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_20

    const-string v1, ""

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 841
    :cond_1f
    return-void

    :cond_20
    move-object v1, p2

    .line 839
    goto :goto_14
.end method

.method private readArgumentList()[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, s:Ljava/lang/String;
    if-nez v4, :cond_a

    .line 478
    const/4 v5, 0x0

    .line 500
    :goto_9
    return-object v5

    .line 480
    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_1a

    move-result v0

    .line 487
    .local v0, argc:I
    const/16 v5, 0x400

    if-le v0, v5, :cond_2b

    .line 488
    new-instance v5, Ljava/io/IOException;

    const-string v6, "max arg count exceeded"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 481
    .end local v0           #argc:I
    .end local v4           #s:Ljava/lang/String;
    :catch_1a
    move-exception v5

    move-object v1, v5

    .line 482
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v5, "Zygote"

    const-string v6, "invalid Zygote wire format: non-int at argc"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v5, Ljava/io/IOException;

    const-string v6, "invalid wire format"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 491
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #argc:I
    .restart local v4       #s:Ljava/lang/String;
    :cond_2b
    new-array v3, v0, [Ljava/lang/String;

    .line 492
    .local v3, result:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2e
    if-ge v2, v0, :cond_47

    .line 493
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 494
    aget-object v5, v3, v2

    if-nez v5, :cond_44

    .line 496
    new-instance v5, Ljava/io/IOException;

    const-string v6, "truncated request"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 492
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_47
    move-object v5, v3

    .line 500
    goto :goto_9
.end method


# virtual methods
.method closeSocket()V
    .registers 4

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 244
    :goto_5
    return-void

    .line 240
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 241
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method getFileDesciptor()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method run()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 128
    const/16 v0, 0xa

    .line 140
    .local v0, loopCount:I
    :cond_2
    if-gtz v0, :cond_10

    .line 141
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 142
    const/16 v0, 0xa

    .line 147
    :goto_9
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    return-void

    .line 144
    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method runOnce()Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 170
    const/4 v4, 0x0

    .line 174
    .local v4, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteConnection;->readArgumentList()[Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, args:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_13

    move-result-object v1

    .line 182
    .local v1, descriptors:[Ljava/io/FileDescriptor;
    if-nez v0, :cond_36

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    move v8, v12

    .line 230
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #descriptors:[Ljava/io/FileDescriptor;
    :goto_12
    return v8

    .line 176
    :catch_13
    move-exception v8

    move-object v2, v8

    .line 177
    .local v2, ex:Ljava/io/IOException;
    const-string v8, "Zygote"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException on command socket "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    move v8, v12

    .line 179
    goto :goto_12

    .line 189
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v1       #descriptors:[Ljava/io/FileDescriptor;
    :cond_36
    const/4 v3, 0x0

    .line 191
    .local v3, newStderr:Ljava/io/PrintStream;
    if-eqz v1, :cond_4a

    array-length v8, v1

    const/4 v9, 0x3

    if-lt v8, v9, :cond_4a

    .line 192
    new-instance v3, Ljava/io/PrintStream;

    .end local v3           #newStderr:Ljava/io/PrintStream;
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v8}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 199
    .restart local v3       #newStderr:Ljava/io/PrintStream;
    :cond_4a
    :try_start_4a
    new-instance v5, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v5, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_4f} :catch_86
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_4a .. :try_end_4f} :catch_8f

    .line 201
    .end local v4           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v5, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_4f
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v5, v8}, Lcom/android/internal/os/ZygoteConnection;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 202
    invoke-static {v5}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 203
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v5, v8}, Lcom/android/internal/os/ZygoteConnection;->applyRlimitSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 204
    iget-object v8, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v5, v8}, Lcom/android/internal/os/ZygoteConnection;->applyCapabilitiesSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 206
    const/4 v7, 0x0

    check-cast v7, [[I

    .line 208
    .local v7, rlimits:[[I
    iget-object v8, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v8, :cond_72

    .line 209
    iget-object v8, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7           #rlimits:[[I
    check-cast v7, [[I

    .line 212
    .restart local v7       #rlimits:[[I
    :cond_72
    iget v8, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v9, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v10, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v11, v5, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    invoke-static {v8, v9, v10, v11, v7}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[I)I
    :try_end_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_7d} :catch_a2
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_4f .. :try_end_7d} :catch_9e

    move-result v6

    .local v6, pid:I
    move-object v4, v5

    .line 223
    .end local v5           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v7           #rlimits:[[I
    .restart local v4       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :goto_7f
    if-nez v6, :cond_98

    .line 225
    invoke-direct {p0, v4, v1, v3}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V

    move v8, v12

    .line 227
    goto :goto_12

    .line 214
    .end local v6           #pid:I
    :catch_86
    move-exception v8

    move-object v2, v8

    .line 215
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    :goto_88
    const-string v8, "Invalid zygote arguments"

    invoke-static {v3, v8, v2}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    const/4 v6, -0x1

    .line 221
    .restart local v6       #pid:I
    goto :goto_7f

    .line 217
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    .end local v6           #pid:I
    :catch_8f
    move-exception v8

    move-object v2, v8

    .line 218
    .local v2, ex:Lcom/android/internal/os/ZygoteSecurityException;
    :goto_91
    const-string v8, "Zygote security policy prevents request: "

    invoke-static {v3, v8, v2}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    const/4 v6, -0x1

    .restart local v6       #pid:I
    goto :goto_7f

    .line 230
    .end local v2           #ex:Lcom/android/internal/os/ZygoteSecurityException;
    :cond_98
    invoke-direct {p0, v6, v1, v4}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(I[Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z

    move-result v8

    goto/16 :goto_12

    .line 217
    .end local v4           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v6           #pid:I
    .restart local v5       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_9e
    move-exception v8

    move-object v2, v8

    move-object v4, v5

    .end local v5           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v4       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_91

    .line 214
    .end local v4           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v5       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_a2
    move-exception v8

    move-object v2, v8

    move-object v4, v5

    .end local v5           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v4       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_88
.end method
