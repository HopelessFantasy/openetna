.class public Lcom/bnsoft/simchecker/SimImportThread;
.super Ljava/lang/Thread;
.source "SimImportThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bnsoft/simchecker/SimImportThread$FinishedImportCallBack;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimImportThread"


# instance fields
.field private mAddedCount:I

.field private mCallBack:Lcom/bnsoft/simchecker/SimImportThread$FinishedImportCallBack;

.field private mCanceled:Z

.field private mContext:Landroid/app/Activity;

.field private mCursor:Landroid/database/Cursor;

.field private mPaused:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bnsoft/simchecker/SimImportThread$FinishedImportCallBack;)V
    .registers 5
    .parameter "context"
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 32
    const-string v0, "SimImportThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 26
    iput-boolean v1, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCanceled:Z

    .line 28
    iput-boolean v1, p0, Lcom/bnsoft/simchecker/SimImportThread;->mPaused:Z

    .line 33
    iput v1, p0, Lcom/bnsoft/simchecker/SimImportThread;->mAddedCount:I

    .line 34
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/bnsoft/simchecker/SimImportThread;->setPriority(I)V

    .line 35
    iput-object p1, p0, Lcom/bnsoft/simchecker/SimImportThread;->mContext:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCallBack:Lcom/bnsoft/simchecker/SimImportThread$FinishedImportCallBack;

    .line 37
    return-void
.end method

.method private parseName(Ljava/lang/String;[Ljava/lang/Object;)Landroid/net/Uri;
    .registers 11
    .parameter "name"
    .parameter "parsed"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 225
    const/4 v2, 0x2

    .line 228
    .local v2, type:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 229
    .local v1, nameLen:I
    sub-int v3, v1, v5

    if-ltz v3, :cond_2b

    sub-int v3, v1, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2b

    .line 230
    sub-int v3, v1, v7

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 231
    .local v0, c:C
    const/16 v3, 0x57

    if-ne v0, v3, :cond_35

    .line 232
    const/4 v2, 0x3

    .line 240
    :cond_25
    :goto_25
    sub-int v3, v1, v5

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 242
    .end local v0           #c:C
    :cond_2b
    aput-object p1, p2, v6

    .line 243
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v7

    .line 245
    const/4 v3, 0x0

    return-object v3

    .line 233
    .restart local v0       #c:C
    :cond_35
    const/16 v3, 0x4d

    if-ne v0, v3, :cond_3b

    .line 234
    const/4 v2, 0x2

    goto :goto_25

    .line 235
    :cond_3b
    const/16 v3, 0x48

    if-ne v0, v3, :cond_41

    .line 236
    const/4 v2, 0x1

    goto :goto_25

    .line 237
    :cond_41
    const/16 v3, 0x4f

    if-ne v0, v3, :cond_25

    .line 238
    const/4 v2, 0x2

    goto :goto_25
.end method


# virtual methods
.method public finishLoading()V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mContext:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 214
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCanceled:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCancel()V
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCanceled:Z

    .line 158
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 159
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCanceled:Z

    .line 153
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 154
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCanceled:Z

    .line 163
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 164
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 169
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 176
    monitor-enter p0

    .line 177
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mPaused:Z

    .line 178
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_f

    .line 179
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_e

    .line 180
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 182
    :cond_e
    return-void

    .line 178
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 185
    monitor-enter p0

    .line 186
    :try_start_1
    iget-boolean v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mPaused:Z

    if-eqz v0, :cond_b

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mPaused:Z

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 190
    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_20

    .line 192
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1f

    .line 193
    invoke-virtual {p0}, Lcom/bnsoft/simchecker/SimImportThread;->setProgressEnv()V

    .line 195
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 196
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/bnsoft/simchecker/SimImportThread;->mAddedCount:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 198
    :cond_1f
    return-void

    .line 190
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public run()V
    .registers 15

    .prologue
    const-string v11, "SimImportThread"

    .line 65
    :try_start_2
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_3} :catch_e

    .line 66
    :goto_3
    :try_start_3
    iget-boolean v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mPaused:Z

    if-eqz v11, :cond_bc

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 69
    :catchall_b
    move-exception v11

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    :try_start_d
    throw v11
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_e} :catch_e

    .line 70
    :catch_e
    move-exception v11

    move-object v2, v11

    .line 72
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 75
    .end local v2           #e:Ljava/lang/InterruptedException;
    :goto_13
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v3, map:Landroid/content/ContentValues;
    iget-object v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mContext:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 77
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/Object;

    .line 78
    .local v7, parsed:[Ljava/lang/Object;
    iget-object v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 79
    .local v0, addedCount:I
    const/4 v10, 0x0

    .line 81
    .local v10, powerwake:Landroid/os/PowerManager$WakeLock;
    :try_start_28
    iget-object v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mContext:Landroid/app/Activity;

    const-string v12, "power"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 82
    .local v9, powermgr:Landroid/os/PowerManager;
    const v11, 0x10000001

    const-string v12, "SimImportThread"

    invoke-virtual {v9, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 85
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 88
    iget-object v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCursor:Landroid/database/Cursor;

    const/4 v12, -0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 89
    :cond_44
    :goto_44
    iget-boolean v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCanceled:Z

    if-nez v11, :cond_139

    iget-object v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_139

    .line 90
    iget v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mAddedCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mAddedCount:I

    .line 91
    iget-object v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, name:Ljava/lang/String;
    iget-object v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_28 .. :try_end_63} :catchall_94

    move-result-object v5

    .line 99
    .local v5, number:Ljava/lang/String;
    :try_start_64
    invoke-direct {p0, v4, v7}, Lcom/bnsoft/simchecker/SimImportThread;->parseName(Ljava/lang/String;[Ljava/lang/Object;)Landroid/net/Uri;
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_94
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_bf

    move-result-object v8

    .line 106
    .local v8, personUrl:Landroid/net/Uri;
    :try_start_68
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 107
    const-string v12, "name"

    const/4 v11, 0x0

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v3, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {v1, v3}, Landroid/provider/Contacts$People;->createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 109
    if-nez v8, :cond_ea

    .line 110
    const-string v11, "SimImportThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error inserting person "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_68 .. :try_end_93} :catchall_94

    goto :goto_44

    .line 131
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v8           #personUrl:Landroid/net/Uri;
    .end local v9           #powermgr:Landroid/os/PowerManager;
    :catchall_94
    move-exception v11

    if-eqz v10, :cond_a0

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_a0

    .line 132
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 136
    :cond_a0
    :try_start_a0
    monitor-enter p0
    :try_end_a1
    .catch Ljava/lang/InterruptedException; {:try_start_a0 .. :try_end_a1} :catch_ac

    .line 137
    :goto_a1
    :try_start_a1
    iget-boolean v12, p0, Lcom/bnsoft/simchecker/SimImportThread;->mPaused:Z

    if-eqz v12, :cond_162

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_a1

    .line 140
    :catchall_a9
    move-exception v12

    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_a9

    :try_start_ab
    throw v12
    :try_end_ac
    .catch Ljava/lang/InterruptedException; {:try_start_ab .. :try_end_ac} :catch_ac

    .line 141
    :catch_ac
    move-exception v12

    move-object v2, v12

    .line 143
    .restart local v2       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 146
    .end local v2           #e:Ljava/lang/InterruptedException;
    :goto_b1
    iget-object v12, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->dismiss()V

    .line 147
    iget-object v12, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCallBack:Lcom/bnsoft/simchecker/SimImportThread$FinishedImportCallBack;

    invoke-interface {v12, v0}, Lcom/bnsoft/simchecker/SimImportThread$FinishedImportCallBack;->FinishedImport(I)V

    throw v11

    .line 69
    .end local v0           #addedCount:I
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v3           #map:Landroid/content/ContentValues;
    .end local v7           #parsed:[Ljava/lang/Object;
    .end local v10           #powerwake:Landroid/os/PowerManager$WakeLock;
    :cond_bc
    :try_start_bc
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_b

    goto/16 :goto_13

    .line 101
    .restart local v0       #addedCount:I
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v3       #map:Landroid/content/ContentValues;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v7       #parsed:[Ljava/lang/Object;
    .restart local v9       #powermgr:Landroid/os/PowerManager;
    .restart local v10       #powerwake:Landroid/os/PowerManager$WakeLock;
    :catch_bf
    move-exception v2

    .line 102
    .local v2, e:Ljava/lang/Exception;
    :try_start_c0
    const-string v11, "SimImportThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "importAll error parseName("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 114
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v8       #personUrl:Landroid/net/Uri;
    :cond_ea
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 115
    const-string v11, "number"

    invoke-virtual {v3, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v12, "type"

    const/4 v11, 0x1

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v3, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v11, "phones"

    invoke-static {v8, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v1, v11, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 122
    .local v6, numberUrl:Landroid/net/Uri;
    iget-object v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v12, p0, Lcom/bnsoft/simchecker/SimImportThread;->mAddedCount:I

    invoke-virtual {v11, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 124
    if-nez v6, :cond_44

    .line 125
    const-string v11, "SimImportThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error inserting phone "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for person "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", removing person"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catchall {:try_start_c0 .. :try_end_137} :catchall_94

    goto/16 :goto_44

    .line 131
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #numberUrl:Landroid/net/Uri;
    .end local v8           #personUrl:Landroid/net/Uri;
    :cond_139
    if-eqz v10, :cond_144

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_144

    .line 132
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 136
    :cond_144
    :try_start_144
    monitor-enter p0
    :try_end_145
    .catch Ljava/lang/InterruptedException; {:try_start_144 .. :try_end_145} :catch_150

    .line 137
    :goto_145
    :try_start_145
    iget-boolean v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mPaused:Z

    if-eqz v11, :cond_160

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_145

    .line 140
    :catchall_14d
    move-exception v11

    monitor-exit p0
    :try_end_14f
    .catchall {:try_start_145 .. :try_end_14f} :catchall_14d

    :try_start_14f
    throw v11
    :try_end_150
    .catch Ljava/lang/InterruptedException; {:try_start_14f .. :try_end_150} :catch_150

    .line 141
    :catch_150
    move-exception v11

    move-object v2, v11

    .line 143
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 146
    .end local v2           #e:Ljava/lang/InterruptedException;
    :goto_155
    iget-object v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V

    .line 147
    iget-object v11, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCallBack:Lcom/bnsoft/simchecker/SimImportThread$FinishedImportCallBack;

    invoke-interface {v11, v0}, Lcom/bnsoft/simchecker/SimImportThread$FinishedImportCallBack;->FinishedImport(I)V

    .line 149
    return-void

    .line 140
    :cond_160
    :try_start_160
    monitor-exit p0
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_14d

    goto :goto_155

    .end local v9           #powermgr:Landroid/os/PowerManager;
    :cond_162
    :try_start_162
    monitor-exit p0
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_a9

    goto/16 :goto_b1
.end method

.method public runOnProgress()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 59
    invoke-virtual {p0}, Lcom/bnsoft/simchecker/SimImportThread;->start()V

    .line 60
    return-void
.end method

.method public setCallBack(Lcom/bnsoft/simchecker/SimImportThread$FinishedImportCallBack;)V
    .registers 2
    .parameter "cb"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCallBack:Lcom/bnsoft/simchecker/SimImportThread$FinishedImportCallBack;

    .line 202
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/bnsoft/simchecker/SimImportThread;->mContext:Landroid/app/Activity;

    .line 206
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCursor:Landroid/database/Cursor;

    .line 210
    return-void
.end method

.method public setProgressEnv()V
    .registers 6

    .prologue
    .line 41
    iget-object v3, p0, Lcom/bnsoft/simchecker/SimImportThread;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 42
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f04000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, title:Ljava/lang/CharSequence;
    const v3, 0x7f04000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, message:Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/bnsoft/simchecker/SimImportThread;->mContext:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 46
    iget-object v3, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v3, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v3, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 49
    iget-object v3, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f040002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 50
    iget-object v3, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/bnsoft/simchecker/SimImportThread;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 51
    iget-object v3, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 52
    iget-object v3, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 53
    iget-object v3, p0, Lcom/bnsoft/simchecker/SimImportThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 54
    return-void
.end method
