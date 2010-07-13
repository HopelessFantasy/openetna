.class public Lcom/android/server/EntropyService;
.super Landroid/os/Binder;
.source "EntropyService.java"


# static fields
.field private static final ENTROPY_FILENAME:Ljava/lang/String; = null

.field private static final ENTROPY_WHAT:I = 0x1

.field private static final ENTROPY_WRITE_PERIOD:I = 0xa4cb80

.field private static final RANDOM_DEV:Ljava/lang/String; = "/dev/urandom"

#the value of this static final field might be set in the static constructor
.field private static final START_NANOTIME:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final START_TIME:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "EntropyService"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/EntropyService;->getSystemDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/entropy.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/EntropyService;->ENTROPY_FILENAME:Ljava/lang/String;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyService;->START_TIME:J

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyService;->START_NANOTIME:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    new-instance v0, Lcom/android/server/EntropyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/EntropyService$1;-><init>(Lcom/android/server/EntropyService;)V

    iput-object v0, p0, Lcom/android/server/EntropyService;->mHandler:Landroid/os/Handler;

    .line 75
    invoke-direct {p0}, Lcom/android/server/EntropyService;->loadInitialEntropy()V

    .line 76
    invoke-direct {p0}, Lcom/android/server/EntropyService;->addDeviceSpecificEntropy()V

    .line 77
    invoke-direct {p0}, Lcom/android/server/EntropyService;->writeEntropy()V

    .line 78
    invoke-direct {p0}, Lcom/android/server/EntropyService;->scheduleEntropyWriter()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/EntropyService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/server/EntropyService;->writeEntropy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/EntropyService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/server/EntropyService;->scheduleEntropyWriter()V

    return-void
.end method

.method private addDeviceSpecificEntropy()V
    .registers 6

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, out:Ljava/io/PrintWriter;
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/dev/urandom"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_84
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_75

    .line 120
    .end local v1           #out:Ljava/io/PrintWriter;
    .local v2, out:Ljava/io/PrintWriter;
    :try_start_d
    const-string v3, "Copyright (C) 2009 The Android Open Source Project"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string v3, "All Your Randomness Are Belong To Us"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    sget-wide v3, Lcom/android/server/EntropyService;->START_TIME:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 123
    sget-wide v3, Lcom/android/server/EntropyService;->START_NANOTIME:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 124
    const-string v3, "ro.serialno"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    const-string v3, "ro.bootmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    const-string v3, "ro.baseband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    const-string v3, "ro.carrier"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string v3, "ro.bootloader"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    const-string v3, "ro.hardware"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string v3, "ro.revision"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 132
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V
    :try_end_6e
    .catchall {:try_start_d .. :try_end_6e} :catchall_8b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_6e} :catch_8e

    .line 136
    if-eqz v2, :cond_73

    .line 137
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_73
    move-object v1, v2

    .line 140
    .end local v2           #out:Ljava/io/PrintWriter;
    .restart local v1       #out:Ljava/io/PrintWriter;
    :cond_74
    :goto_74
    return-void

    .line 133
    :catch_75
    move-exception v3

    move-object v0, v3

    .line 134
    .local v0, e:Ljava/io/IOException;
    :goto_77
    :try_start_77
    const-string v3, "EntropyService"

    const-string v4, "Unable to add device specific data to the entropy pool"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_84

    .line 136
    if-eqz v1, :cond_74

    .line 137
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_74

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    :catchall_84
    move-exception v3

    :goto_85
    if-eqz v1, :cond_8a

    .line 137
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 136
    :cond_8a
    throw v3

    .end local v1           #out:Ljava/io/PrintWriter;
    .restart local v2       #out:Ljava/io/PrintWriter;
    :catchall_8b
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/PrintWriter;
    .restart local v1       #out:Ljava/io/PrintWriter;
    goto :goto_85

    .line 133
    .end local v1           #out:Ljava/io/PrintWriter;
    .restart local v2       #out:Ljava/io/PrintWriter;
    :catch_8e
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/PrintWriter;
    .restart local v1       #out:Ljava/io/PrintWriter;
    goto :goto_77
.end method

.method private static getSystemDir()Ljava/lang/String;
    .registers 3

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 144
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .local v1, systemDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadInitialEntropy()V
    .registers 4

    .prologue
    .line 88
    :try_start_0
    sget-object v1, Lcom/android/server/EntropyService;->ENTROPY_FILENAME:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    const-string v2, "/dev/urandom"

    invoke-virtual {v1, v2}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 92
    :goto_b
    return-void

    .line 89
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, e:Ljava/io/IOException;
    const-string v1, "EntropyService"

    const-string v2, "unable to load initial entropy (first boot?)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method private scheduleEntropyWriter()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 82
    iget-object v0, p0, Lcom/android/server/EntropyService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object v0, p0, Lcom/android/server/EntropyService;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xa4cb80

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    return-void
.end method

.method private writeEntropy()V
    .registers 4

    .prologue
    .line 96
    :try_start_0
    const-string v1, "/dev/urandom"

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    sget-object v2, Lcom/android/server/EntropyService;->ENTROPY_FILENAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 100
    :goto_b
    return-void

    .line 97
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 98
    .local v0, e:Ljava/io/IOException;
    const-string v1, "EntropyService"

    const-string v2, "unable to write entropy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method
