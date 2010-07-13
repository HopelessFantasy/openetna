.class public final Lcom/android/commands/bmgr/Bmgr;
.super Ljava/lang/Object;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    }
.end annotation


# static fields
.field static final BMGR_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Backup Manager.  Is the system running?"

.field static final TRANSPORT_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the backup transport.  Is the system running?"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field mBmgr:Landroid/backup/IBackupManager;

.field private mCurArgData:Ljava/lang/String;

.field private mNextArg:I

.field mRestore:Landroid/backup/IRestoreSession;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method

.method private doBackup()V
    .registers 6

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, isFull:Z
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, pkg:Ljava/lang/String;
    const-string v3, "-f"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 157
    const/4 v1, 0x1

    .line 158
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 161
    :cond_12
    if-eqz v2, :cond_1c

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 162
    :cond_1c
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 173
    :goto_1f
    return-void

    .line 168
    :cond_20
    :try_start_20
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    invoke-interface {v3, v2}, Landroid/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_1f

    .line 169
    :catch_26
    move-exception v3

    move-object v0, v3

    .line 170
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private doEnable()V
    .registers 7

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 127
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 142
    :goto_9
    return-void

    .line 132
    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 133
    .local v2, enable:Z
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    invoke-interface {v3, v2}, Landroid/backup/IBackupManager;->setBackupEnabled(Z)V

    .line 134
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup Manager now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_2f} :catch_30
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2f} :catch_36

    goto :goto_9

    .line 135
    .end local v2           #enable:Z
    :catch_30
    move-exception v3

    move-object v1, v3

    .line 136
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    goto :goto_9

    .line 138
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_36
    move-exception v3

    move-object v1, v3

    .line 139
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private doEnabled()V
    .registers 6

    .prologue
    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    invoke-interface {v2}, Landroid/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    .line 116
    .local v1, isEnabled:Z
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup Manager currently "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    .line 122
    .end local v1           #isEnabled:Z
    :goto_22
    return-void

    .line 118
    :catch_23
    move-exception v2

    move-object v0, v2

    .line 119
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_22
.end method

.method private doList()V
    .registers 7

    .prologue
    const-string v4, "transports"

    const-string v5, "Error: Could not access the Backup Manager.  Is the system running?"

    .line 208
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, arg:Ljava/lang/String;
    const-string v3, "transports"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 210
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListTransports()V

    .line 234
    :goto_13
    return-void

    .line 216
    :cond_14
    :try_start_14
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    invoke-interface {v3}, Landroid/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, curTransport:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    invoke-interface {v3, v1}, Landroid/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;)Landroid/backup/IRestoreSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/backup/IRestoreSession;

    .line 218
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/backup/IRestoreSession;

    if-nez v3, :cond_41

    .line 219
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2d} :catch_2e

    goto :goto_13

    .line 230
    .end local v1           #curTransport:Ljava/lang/String;
    :catch_2e
    move-exception v3

    move-object v2, v3

    .line 231
    .local v2, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_13

    .line 223
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v1       #curTransport:Ljava/lang/String;
    :cond_41
    :try_start_41
    const-string v3, "sets"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 224
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListRestoreSets()V

    .line 229
    :cond_4c
    :goto_4c
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/backup/IRestoreSession;

    invoke-interface {v3}, Landroid/backup/IRestoreSession;->endRestoreSession()V

    goto :goto_13

    .line 225
    :cond_52
    const-string v3, "transports"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 226
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListTransports()V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_5d} :catch_2e

    goto :goto_4c
.end method

.method private doListRestoreSets()V
    .registers 5

    .prologue
    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/backup/IRestoreSession;

    invoke-interface {v2}, Landroid/backup/IRestoreSession;->getAvailableRestoreSets()[Landroid/backup/RestoreSet;

    move-result-object v1

    .line 258
    .local v1, sets:[Landroid/backup/RestoreSet;
    if-eqz v1, :cond_b

    array-length v2, v1

    if-nez v2, :cond_13

    .line 259
    :cond_b
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "No restore sets available"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    .end local v1           #sets:[Landroid/backup/RestoreSet;
    :goto_12
    return-void

    .line 261
    .restart local v1       #sets:[Landroid/backup/RestoreSet;
    :cond_13
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/backup/RestoreSet;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_12

    .line 263
    .end local v1           #sets:[Landroid/backup/RestoreSet;
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 264
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the backup transport.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12
.end method

.method private doListTransports()V
    .registers 11

    .prologue
    .line 238
    :try_start_0
    iget-object v8, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    invoke-interface {v8}, Landroid/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, current:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    invoke-interface {v8}, Landroid/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, transports:[Ljava/lang/String;
    if-eqz v7, :cond_11

    array-length v8, v7

    if-nez v8, :cond_19

    .line 241
    :cond_11
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "No transports available."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    .end local v1           #current:Ljava/lang/String;
    .end local v7           #transports:[Ljava/lang/String;
    :cond_18
    :goto_18
    return-void

    .line 245
    .restart local v1       #current:Ljava/lang/String;
    .restart local v7       #transports:[Ljava/lang/String;
    :cond_19
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1c
    if-ge v3, v4, :cond_18

    aget-object v6, v0, v3

    .line 246
    .local v6, t:Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    const-string v8, "  * "

    move-object v5, v8

    .line 247
    .local v5, pad:Ljava/lang/String;
    :goto_29
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 246
    .end local v5           #pad:Ljava/lang/String;
    :cond_42
    const-string v8, "    "
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_44} :catch_46

    move-object v5, v8

    goto :goto_29

    .line 249
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #current:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #t:Ljava/lang/String;
    .end local v7           #transports:[Ljava/lang/String;
    :catch_46
    move-exception v8

    move-object v2, v8

    .line 250
    .local v2, e:Landroid/os/RemoteException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_18
.end method

.method private doRestore()V
    .registers 16

    .prologue
    const-string v14, "Error: Could not access the Backup Manager.  Is the system running?"

    .line 297
    :try_start_2
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_9} :catch_2a

    move-result-wide v9

    .line 303
    .local v9, token:J
    new-instance v6, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v6, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    .line 306
    .local v6, observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    const/4 v2, 0x0

    .line 307
    .local v2, didRestore:Z
    :try_start_10
    iget-object v11, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    invoke-interface {v11}, Landroid/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, curTransport:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    invoke-interface {v11, v1}, Landroid/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;)Landroid/backup/IRestoreSession;

    move-result-object v11

    iput-object v11, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/backup/IRestoreSession;

    .line 309
    iget-object v11, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/backup/IRestoreSession;

    if-nez v11, :cond_30

    .line 310
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v12, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_29} :catch_8f

    .line 346
    .end local v1           #curTransport:Ljava/lang/String;
    .end local v2           #didRestore:Z
    .end local v6           #observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    .end local v9           #token:J
    :goto_29
    return-void

    .line 298
    :catch_2a
    move-exception v11

    move-object v3, v11

    .line 299
    .local v3, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    goto :goto_29

    .line 313
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #curTransport:Ljava/lang/String;
    .restart local v2       #didRestore:Z
    .restart local v6       #observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    .restart local v9       #token:J
    :cond_30
    :try_start_30
    iget-object v11, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/backup/IRestoreSession;

    invoke-interface {v11}, Landroid/backup/IRestoreSession;->getAvailableRestoreSets()[Landroid/backup/RestoreSet;

    move-result-object v8

    .line 314
    .local v8, sets:[Landroid/backup/RestoreSet;
    move-object v0, v8

    .local v0, arr$:[Landroid/backup/RestoreSet;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_39
    if-ge v4, v5, :cond_63

    aget-object v7, v0, v4

    .line 315
    .local v7, s:Landroid/backup/RestoreSet;
    iget-wide v11, v7, Landroid/backup/RestoreSet;->token:J

    cmp-long v11, v11, v9

    if-nez v11, :cond_81

    .line 316
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Scheduling restore: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Landroid/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    iget-object v11, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/backup/IRestoreSession;

    invoke-interface {v11, v9, v10, v6}, Landroid/backup/IRestoreSession;->performRestore(JLandroid/backup/IRestoreObserver;)I

    .line 318
    const/4 v2, 0x1

    .line 322
    .end local v7           #s:Landroid/backup/RestoreSet;
    :cond_63
    if-nez v2, :cond_71

    .line 323
    if-eqz v8, :cond_6a

    array-length v11, v8

    if-nez v11, :cond_84

    .line 324
    :cond_6a
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "No available restore sets; no restore performed"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    :cond_71
    :goto_71
    iget-object v11, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/backup/IRestoreSession;

    invoke-interface {v11}, Landroid/backup/IRestoreSession;->endRestoreSession()V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_76} :catch_8f

    .line 337
    .end local v0           #arr$:[Landroid/backup/RestoreSet;
    .end local v1           #curTransport:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #sets:[Landroid/backup/RestoreSet;
    :goto_76
    monitor-enter v6

    .line 338
    :goto_77
    :try_start_77
    iget-boolean v11, v6, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->done:Z
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_ac

    if-nez v11, :cond_a2

    .line 340
    :try_start_7b
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_ac
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_77

    .line 341
    :catch_7f
    move-exception v11

    goto :goto_77

    .line 314
    .restart local v0       #arr$:[Landroid/backup/RestoreSet;
    .restart local v1       #curTransport:Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #s:Landroid/backup/RestoreSet;
    .restart local v8       #sets:[Landroid/backup/RestoreSet;
    :cond_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 326
    .end local v7           #s:Landroid/backup/RestoreSet;
    :cond_84
    :try_start_84
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "No matching restore set token.  Available sets:"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, v8}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/backup/RestoreSet;)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_8e} :catch_8f

    goto :goto_71

    .line 331
    .end local v0           #arr$:[Landroid/backup/RestoreSet;
    .end local v1           #curTransport:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #sets:[Landroid/backup/RestoreSet;
    :catch_8f
    move-exception v11

    move-object v3, v11

    .line 332
    .local v3, e:Landroid/os/RemoteException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v12, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_76

    .line 344
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_a2
    :try_start_a2
    monitor-exit v6
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_ac

    .line 345
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "done"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_29

    .line 344
    :catchall_ac
    move-exception v11

    :try_start_ad
    monitor-exit v6
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v11
.end method

.method private doRun()V
    .registers 4

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    invoke-interface {v1}, Landroid/backup/IBackupManager;->backupNow()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 151
    :goto_5
    return-void

    .line 147
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private doTransport()V
    .registers 7

    .prologue
    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, which:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    invoke-interface {v3, v2}, Landroid/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, old:Ljava/lang/String;
    if-nez v1, :cond_2b

    .line 180
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown transport \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' specified; no changes made."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    .end local v1           #old:Ljava/lang/String;
    .end local v2           #which:Ljava/lang/String;
    :goto_2a
    return-void

    .line 183
    .restart local v1       #old:Ljava/lang/String;
    .restart local v2       #which:Ljava/lang/String;
    :cond_2b
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (formerly "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_2a

    .line 185
    .end local v1           #old:Ljava/lang/String;
    .end local v2           #which:Ljava/lang/String;
    :catch_54
    move-exception v3

    move-object v0, v3

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private doWipe()V
    .registers 6

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, pkg:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 194
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 205
    :goto_9
    return-void

    .line 199
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/backup/IBackupManager;->clearBackupData(Ljava/lang/String;)V

    .line 200
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wiped backup data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_27} :catch_28

    goto :goto_9

    .line 201
    :catch_28
    move-exception v2

    move-object v0, v2

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private enableToString(Z)Ljava/lang/String;
    .registers 3
    .parameter "enabled"

    .prologue
    .line 110
    if-eqz p1, :cond_5

    const-string v0, "enabled"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "disabled"

    goto :goto_4
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .parameter "args"

    .prologue
    .line 41
    :try_start_0
    new-instance v1, Lcom/android/commands/bmgr/Bmgr;

    invoke-direct {v1}, Lcom/android/commands/bmgr/Bmgr;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/commands/bmgr/Bmgr;->run([Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 46
    :goto_8
    return-void

    .line 42
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 43
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exception caught:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 349
    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    .line 350
    const/4 v1, 0x0

    .line 354
    :goto_8
    return-object v1

    .line 352
    :cond_9
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    aget-object v0, v1, v2

    .line 353
    .local v0, arg:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    move-object v1, v0

    .line 354
    goto :goto_8
.end method

.method private printRestoreSets([Landroid/backup/RestoreSet;)V
    .registers 10
    .parameter "sets"

    .prologue
    .line 270
    move-object v0, p1

    .local v0, arr$:[Landroid/backup/RestoreSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_30

    aget-object v3, v0, v1

    .line 271
    .local v3, s:Landroid/backup/RestoreSet;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Landroid/backup/RestoreSet;->token:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 273
    .end local v3           #s:Landroid/backup/RestoreSet;
    :cond_30
    return-void
.end method

.method private static showUsage()V
    .registers 3

    .prologue
    const-string v2, ""

    .line 358
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: bmgr [backup|restore|list|transport|run]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 359
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr backup PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr enable BOOL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr list transports"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr list sets"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr transport WHICH"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr restore TOKEN"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr run"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr wipe PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'backup\' command schedules a backup pass for the named package."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Note that the backup pass will effectively be a no-op if the package"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "does not actually have changed data to store."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'enable\' command enables or disables the entire backup mechanism."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "If the argument is \'true\' it will be enabled, otherwise it will be"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "disabled.  When disabled, neither backup or restore operations will"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "be performed."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'enabled\' command reports the current enabled/disabled state of"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "the backup mechanism."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 380
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'list transports\' command reports the names of the backup transports"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "currently available on the device.  These names can be passed as arguments"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "to the \'transport\' command.  The currently selected transport is indicated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "with a \'*\' character."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'list sets\' command reports the token and name of each restore set"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "available to the device via the current transport."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 389
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'transport\' command designates the named transport as the currently"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "active one.  This setting is persistent across reboots."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 391
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'restore\' command initiates a restore operation, using the restore set"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "from the current transport whose token matches the argument."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 394
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 395
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'run\' command causes any scheduled backup operation to be initiated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 396
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "immediately, without the usual waiting period for batching together"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "data changes."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 398
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 399
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'wipe\' command causes all backed-up data for the given package to be"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "erased from the current transport\'s storage.  The next backup operation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "that the given application performs will rewrite its entire data set."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .registers 7
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const-string v4, "backup"

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, validCommand:Z
    array-length v2, p1

    if-ge v2, v3, :cond_b

    .line 51
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 107
    :goto_a
    return-void

    .line 55
    :cond_b
    const-string v2, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/backup/IBackupManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    .line 56
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/backup/IBackupManager;

    if-nez v2, :cond_23

    .line 57
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 61
    :cond_23
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    .line 62
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 63
    .local v0, op:Ljava/lang/String;
    iput v3, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    .line 65
    const-string v2, "enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 66
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doEnabled()V

    goto :goto_a

    .line 70
    :cond_36
    const-string v2, "enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 71
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doEnable()V

    goto :goto_a

    .line 75
    :cond_42
    const-string v2, "run"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 76
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doRun()V

    goto :goto_a

    .line 80
    :cond_4e
    const-string v2, "backup"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 81
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doBackup()V

    goto :goto_a

    .line 85
    :cond_5a
    const-string v2, "list"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 86
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doList()V

    goto :goto_a

    .line 90
    :cond_66
    const-string v2, "restore"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 91
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doRestore()V

    goto :goto_a

    .line 95
    :cond_72
    const-string v2, "transport"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 96
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doTransport()V

    goto :goto_a

    .line 100
    :cond_7e
    const-string v2, "wipe"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 101
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doWipe()V

    goto :goto_a

    .line 105
    :cond_8a
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Unknown command"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    goto/16 :goto_a
.end method
