.class public Ldalvik/system/TemporaryDirectory;
.super Ljava/lang/Object;
.source "TemporaryDirectory.java"


# static fields
.field private static final PATH_NAME:Ljava/lang/String; = "tmp"

.field private static final PROPERTY:Ljava/lang/String; = "java.io.tmpdir"

.field private static configured:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Ldalvik/system/TemporaryDirectory;->configured:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized setUpDirectory(Ljava/io/File;)V
    .registers 7
    .parameter "baseDir"

    .prologue
    const-string v2, "java.io.tmpdir"

    .line 70
    const-class v2, Ldalvik/system/TemporaryDirectory;

    monitor-enter v2

    :try_start_5
    sget-boolean v3, Ldalvik/system/TemporaryDirectory;->configured:Z

    if-eqz v3, :cond_29

    .line 71
    sget-object v3, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already set to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "java.io.tmpdir"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_59

    .line 98
    :goto_27
    monitor-exit v2

    return-void

    .line 76
    :cond_29
    :try_start_29
    new-instance v1, Ljava/io/File;

    const-string v3, "tmp"

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, absolute:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 81
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name is used by a non-directory file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_59
    .catchall {:try_start_29 .. :try_end_59} :catchall_59

    .line 70
    .end local v0           #absolute:Ljava/lang/String;
    .end local v1           #dir:Ljava/io/File;
    :catchall_59
    move-exception v3

    monitor-exit v2

    throw v3

    .line 84
    .restart local v0       #absolute:Ljava/lang/String;
    .restart local v1       #dir:Ljava/io/File;
    :cond_5c
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_a0

    .line 85
    :cond_68
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing directory is not readable and writable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_81
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_a0

    .line 91
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :cond_a0
    const-string v3, "java.io.tmpdir"

    invoke-static {v3, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/TemporaryDirectory;->configured:Z
    :try_end_a8
    .catchall {:try_start_5c .. :try_end_a8} :catchall_59

    goto/16 :goto_27
.end method

.method public static setUpDirectory(Ljava/lang/String;)V
    .registers 2
    .parameter "baseDir"

    .prologue
    .line 48
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ldalvik/system/TemporaryDirectory;->setUpDirectory(Ljava/io/File;)V

    .line 49
    return-void
.end method
