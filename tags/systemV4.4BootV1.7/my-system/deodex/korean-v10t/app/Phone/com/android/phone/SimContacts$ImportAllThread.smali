.class Lcom/android/phone/SimContacts$ImportAllThread;
.super Ljava/lang/Thread;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportAllThread"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/SortedADNList$ADNItem;",
            ">;"
        }
    .end annotation
.end field

.field public mCanceled:Z

.field public mFinished:Z

.field private mPaused:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private miImportAllCount:I

.field private miImportedCount:I

.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimContacts;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 186
    iput-object p1, p0, Lcom/android/phone/SimContacts$ImportAllThread;->this$0:Lcom/android/phone/SimContacts;

    .line 187
    const-string v0, "ImportAllThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 170
    iput-boolean v1, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mCanceled:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mPaused:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mFinished:Z

    .line 188
    iput v1, p0, Lcom/android/phone/SimContacts$ImportAllThread;->miImportAllCount:I

    .line 189
    iput v1, p0, Lcom/android/phone/SimContacts$ImportAllThread;->miImportedCount:I

    .line 190
    return-void
.end method


# virtual methods
.method public createProgressPopup(Landroid/app/Activity;)V
    .registers 6
    .parameter "acti"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mActivity:Landroid/app/Activity;

    .line 325
    const v2, 0x7f0901db

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, title:Ljava/lang/CharSequence;
    const v2, 0x7f0901dc

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, message:Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 328
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 331
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f090029

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 332
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v3, p0, Lcom/android/phone/SimContacts$ImportAllThread;->miImportAllCount:I

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 333
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 334
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 335
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 337
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v3, p0, Lcom/android/phone/SimContacts$ImportAllThread;->miImportedCount:I

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 338
    return-void
.end method

.method public enterDestroy()V
    .registers 2

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mCanceled:Z

    .line 348
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 349
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 351
    :cond_c
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mCanceled:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mCanceled:Z

    .line 296
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 297
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mCanceled:Z

    .line 309
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 310
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 316
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 341
    monitor-enter p0

    .line 342
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mPaused:Z

    .line 343
    monitor-exit p0

    .line 344
    return-void

    .line 343
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 354
    monitor-enter p0

    .line 355
    :try_start_1
    iget-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mPaused:Z

    if-eqz v0, :cond_b

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mPaused:Z

    .line 357
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 359
    :cond_b
    monitor-exit p0

    .line 360
    return-void

    .line 359
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public run()V
    .registers 16

    .prologue
    .line 198
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_c

    .line 199
    :goto_1
    :try_start_1
    iget-boolean v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mPaused:Z

    if-eqz v12, :cond_be

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 202
    :catchall_9
    move-exception v12

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    :try_start_b
    throw v12
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_c} :catch_c

    .line 203
    :catch_c
    move-exception v12

    move-object v1, v12

    .line 204
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 207
    .end local v1           #e:Ljava/lang/InterruptedException;
    :goto_11
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 208
    .local v4, map:Landroid/content/ContentValues;
    iget-object v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v12}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v12, 0x2

    new-array v8, v12, [Ljava/lang/Object;

    .line 212
    .local v8, parsed:[Ljava/lang/Object;
    const/4 v11, 0x0

    .line 214
    .local v11, powerwake:Landroid/os/PowerManager$WakeLock;
    :try_start_20
    iget-object v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->this$0:Lcom/android/phone/SimContacts;

    const-string v13, "power"

    invoke-virtual {v12, v13}, Lcom/android/phone/SimContacts;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 215
    .local v10, powermgr:Landroid/os/PowerManager;
    const v12, 0x10000001

    const-string v13, "ADNList"

    invoke-virtual {v10, v12, v13}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    .line 218
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 220
    iget-object v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 221
    .local v3, iterADN:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/phone/SortedADNList$ADNItem;>;"
    :cond_3c
    :goto_3c
    iget-boolean v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mCanceled:Z

    if-nez v12, :cond_160

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_160

    .line 222
    iget v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->miImportedCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->miImportedCount:I

    .line 223
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/SortedADNList$ADNItem;

    .line 224
    .local v2, item:Lcom/android/phone/SortedADNList$ADNItem;
    iget-object v5, v2, Lcom/android/phone/SortedADNList$ADNItem;->mName:Ljava/lang/String;

    .line 225
    .local v5, name:Ljava/lang/String;
    iget-object v6, v2, Lcom/android/phone/SortedADNList$ADNItem;->mNumber:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_20 .. :try_end_56} :catchall_89

    .line 228
    .local v6, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 230
    .local v9, personUrl:Landroid/net/Uri;
    :try_start_57
    iget-object v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->this$0:Lcom/android/phone/SimContacts;

    invoke-static {v12, v5, v8}, Lcom/android/phone/SimContacts;->access$000(Lcom/android/phone/SimContacts;Ljava/lang/String;[Ljava/lang/Object;)Landroid/net/Uri;
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_89
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_c1

    move-result-object v9

    .line 238
    :try_start_5d
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 239
    const-string v12, "name"

    const/4 v13, 0x0

    aget-object v1, v8, v13

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {v0, v4}, Landroid/provider/Contacts$People;->createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 241
    if-nez v9, :cond_ed

    .line 242
    const-string v12, "ADNList"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error inserting person "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_5d .. :try_end_88} :catchall_89

    goto :goto_3c

    .line 263
    .end local v2           #item:Lcom/android/phone/SortedADNList$ADNItem;
    .end local v3           #iterADN:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/phone/SortedADNList$ADNItem;>;"
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v9           #personUrl:Landroid/net/Uri;
    .end local v10           #powermgr:Landroid/os/PowerManager;
    :catchall_89
    move-exception v12

    if-eqz v11, :cond_95

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v13

    if-eqz v13, :cond_95

    .line 264
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 272
    :cond_95
    :try_start_95
    monitor-enter p0
    :try_end_96
    .catch Ljava/lang/InterruptedException; {:try_start_95 .. :try_end_96} :catch_a1

    .line 273
    :goto_96
    :try_start_96
    iget-boolean v13, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mPaused:Z

    if-eqz v13, :cond_15d

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_96

    .line 276
    :catchall_9e
    move-exception v13

    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_9e

    :try_start_a0
    throw v13
    :try_end_a1
    .catch Ljava/lang/InterruptedException; {:try_start_a0 .. :try_end_a1} :catch_a1

    .line 277
    :catch_a1
    move-exception v13

    move-object v1, v13

    .line 278
    .restart local v1       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 280
    .end local v1           #e:Ljava/lang/InterruptedException;
    :goto_a6
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mFinished:Z

    .line 281
    iget-object v13, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V

    .line 282
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/phone/SimContacts;->access$102(Lcom/android/phone/SimContacts$ImportAllThread;)Lcom/android/phone/SimContacts$ImportAllThread;

    .line 284
    iget v13, p0, Lcom/android/phone/SimContacts$ImportAllThread;->miImportedCount:I

    iget v14, p0, Lcom/android/phone/SimContacts$ImportAllThread;->miImportAllCount:I

    if-ne v13, v14, :cond_bd

    .line 285
    iget-object v13, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 263
    :cond_bd
    throw v12

    .line 202
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v4           #map:Landroid/content/ContentValues;
    .end local v8           #parsed:[Ljava/lang/Object;
    .end local v11           #powerwake:Landroid/os/PowerManager$WakeLock;
    :cond_be
    :try_start_be
    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_9

    goto/16 :goto_11

    .line 232
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v2       #item:Lcom/android/phone/SortedADNList$ADNItem;
    .restart local v3       #iterADN:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/phone/SortedADNList$ADNItem;>;"
    .restart local v4       #map:Landroid/content/ContentValues;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #number:Ljava/lang/String;
    .restart local v8       #parsed:[Ljava/lang/Object;
    .restart local v9       #personUrl:Landroid/net/Uri;
    .restart local v10       #powermgr:Landroid/os/PowerManager;
    .restart local v11       #powerwake:Landroid/os/PowerManager$WakeLock;
    :catch_c1
    move-exception v12

    move-object v1, v12

    .line 233
    .local v1, e:Ljava/lang/Exception;
    :try_start_c3
    const-string v12, "ADNList"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "importAll error parseName("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 246
    .end local v1           #e:Ljava/lang/Exception;
    :cond_ed
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 247
    const-string v12, "number"

    invoke-virtual {v4, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v12, "type"

    const/4 v13, 0x1

    aget-object v1, v8, v13

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v4, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string v12, "phones"

    invoke-static {v9, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v0, v12, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 254
    .local v7, numberUrl:Landroid/net/Uri;
    iget-object v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v12, :cond_114

    .line 255
    iget-object v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v13, p0, Lcom/android/phone/SimContacts$ImportAllThread;->miImportedCount:I

    invoke-virtual {v12, v13}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 256
    :cond_114
    if-nez v7, :cond_3c

    .line 257
    const-string v12, "ADNList"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error inserting phone "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for person "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", removing person"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catchall {:try_start_c3 .. :try_end_13e} :catchall_89

    goto/16 :goto_3c

    .line 277
    .end local v2           #item:Lcom/android/phone/SortedADNList$ADNItem;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #numberUrl:Landroid/net/Uri;
    .end local v9           #personUrl:Landroid/net/Uri;
    :catch_140
    move-exception v12

    move-object v1, v12

    .line 278
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 280
    .end local v1           #e:Ljava/lang/InterruptedException;
    :goto_145
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mFinished:Z

    .line 281
    iget-object v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->dismiss()V

    .line 282
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/phone/SimContacts;->access$102(Lcom/android/phone/SimContacts$ImportAllThread;)Lcom/android/phone/SimContacts$ImportAllThread;

    .line 284
    iget v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->miImportedCount:I

    iget v13, p0, Lcom/android/phone/SimContacts$ImportAllThread;->miImportAllCount:I

    if-ne v12, v13, :cond_15c

    .line 285
    iget-object v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->finish()V

    .line 292
    :cond_15c
    return-void

    .line 276
    .end local v3           #iterADN:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/phone/SortedADNList$ADNItem;>;"
    .end local v10           #powermgr:Landroid/os/PowerManager;
    :cond_15d
    :try_start_15d
    monitor-exit p0
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_9e

    goto/16 :goto_a6

    .line 263
    .restart local v3       #iterADN:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/phone/SortedADNList$ADNItem;>;"
    .restart local v10       #powermgr:Landroid/os/PowerManager;
    :cond_160
    if-eqz v11, :cond_16b

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_16b

    .line 264
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 272
    :cond_16b
    :try_start_16b
    monitor-enter p0
    :try_end_16c
    .catch Ljava/lang/InterruptedException; {:try_start_16b .. :try_end_16c} :catch_140

    .line 273
    :goto_16c
    :try_start_16c
    iget-boolean v12, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mPaused:Z

    if-eqz v12, :cond_177

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_16c

    .line 276
    :catchall_174
    move-exception v12

    monitor-exit p0
    :try_end_176
    .catchall {:try_start_16c .. :try_end_176} :catchall_174

    :try_start_176
    throw v12
    :try_end_177
    .catch Ljava/lang/InterruptedException; {:try_start_176 .. :try_end_177} :catch_140

    :cond_177
    :try_start_177
    monitor-exit p0
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_174

    goto :goto_145
.end method

.method public setCursor(I)V
    .registers 2
    .parameter "allCount"

    .prologue
    .line 363
    iput p1, p0, Lcom/android/phone/SimContacts$ImportAllThread;->miImportAllCount:I

    .line 364
    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/SortedADNList$ADNItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/SortedADNList$ADNItem;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mArrayList:Ljava/util/ArrayList;

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mArrayList:Ljava/util/ArrayList;

    .line 370
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllThread;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 371
    return-void
.end method
