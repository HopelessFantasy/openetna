.class public Lcom/android/soundrecorder/SRListActivity;
.super Landroid/app/Activity;
.source "SRListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field public static final DELETE_ID:I = 0x0

.field public static final SHARE_ID:I = 0x1

.field static final TAG:Ljava/lang/String; = "SRListActivity"

.field private static startDir:Ljava/lang/String;


# instance fields
.field audioUri:Landroid/net/Uri;

.field clickFile:Ljava/io/File;

.field fullFilePath:Ljava/lang/String;

.field private mRecordListener:Landroid/view/View$OnClickListener;

.field private mSDCardEventReceiver:Landroid/content/BroadcastReceiver;

.field path:Ljava/io/File;

.field private recordFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, "/sdcard/SoundRecorder"

    sput-object v0, Lcom/android/soundrecorder/SRListActivity;->startDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/android/soundrecorder/SRListActivity;->clickFile:Ljava/io/File;

    .line 52
    iput-object v2, p0, Lcom/android/soundrecorder/SRListActivity;->audioUri:Landroid/net/Uri;

    .line 53
    iput-object v2, p0, Lcom/android/soundrecorder/SRListActivity;->mSDCardEventReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/soundrecorder/SRListActivity;->startDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SRListActivity;->path:Ljava/io/File;

    .line 59
    iput-object v2, p0, Lcom/android/soundrecorder/SRListActivity;->recordFiles:Ljava/util/List;

    .line 199
    new-instance v0, Lcom/android/soundrecorder/SRListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SRListActivity$2;-><init>(Lcom/android/soundrecorder/SRListActivity;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SRListActivity;->mRecordListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/soundrecorder/SRListActivity;Ljava/io/File;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SRListActivity;->listupFiles(Ljava/io/File;)V

    return-void
.end method

.method private clearList()V
    .registers 5

    .prologue
    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/soundrecorder/SRListActivity;->recordFiles:Ljava/util/List;

    .line 275
    const v1, 0x7f06001a

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SRListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 276
    .local v0, list:Landroid/widget/ListView;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/android/soundrecorder/SRListActivity;->recordFiles:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    return-void
.end method

.method private doShareAudio()V
    .registers 7

    .prologue
    const v5, 0x7f040027

    const/4 v4, 0x0

    .line 303
    iget-object v2, p0, Lcom/android/soundrecorder/SRListActivity;->audioUri:Landroid/net/Uri;

    if-nez v2, :cond_10

    .line 305
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 317
    :goto_f
    return-void

    .line 308
    :cond_10
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 309
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v2, "audio/3gpp"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/android/soundrecorder/SRListActivity;->audioUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 313
    const v2, 0x7f040028

    :try_start_29
    invoke-virtual {p0, v2}, Lcom/android/soundrecorder/SRListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/soundrecorder/SRListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_29 .. :try_end_34} :catch_35

    goto :goto_f

    .line 314
    :catch_35
    move-exception v2

    move-object v0, v2

    .line 315
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_f
.end method

.method private getAudioUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 14
    .parameter "file"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 337
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 338
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    .line 339
    .local v2, ids:[Ljava/lang/String;
    const-string v9, "_data=?"

    .line 340
    .local v9, where:Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v10

    .line 341
    .local v4, args:[Ljava/lang/String;
    const-string v3, "_data=?"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/soundrecorder/SRListActivity;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 342
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_21

    .line 343
    const-string v0, "SoundRecoder"

    const-string v3, "query returns null"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_21
    const/4 v7, -0x1

    .line 346
    .local v7, id:I
    if-eqz v6, :cond_34

    .line 347
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_31

    .line 349
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 351
    :cond_31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 354
    :cond_34
    const/4 v0, -0x1

    if-eq v7, v0, :cond_3e

    .line 356
    int-to-long v10, v7

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .local v8, newUrl:Landroid/net/Uri;
    move-object v0, v8

    .line 359
    .end local v8           #newUrl:Landroid/net/Uri;
    :goto_3d
    return-object v0

    :cond_3e
    move-object v0, v5

    goto :goto_3d
.end method

.method private listupFiles(Ljava/io/File;)V
    .registers 12
    .parameter "file"

    .prologue
    .line 239
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 240
    .local v2, files:[Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/soundrecorder/SRListActivity;->recordFiles:Ljava/util/List;

    .line 242
    if-eqz v2, :cond_4f

    .line 244
    const-string v7, "SRListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "number of files: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_29
    if-ge v3, v4, :cond_4f

    aget-object v1, v0, v3

    .line 247
    .local v1, fileItem:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, path:Ljava/lang/String;
    const-string v7, ".amr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    const-string v7, ".AMR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 252
    :cond_41
    :try_start_41
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_4c

    iget-object v7, p0, Lcom/android/soundrecorder/SRListActivity;->recordFiles:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_4c} :catch_6c

    .line 245
    :cond_4c
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 264
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #fileItem:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #path:Ljava/lang/String;
    :cond_4f
    const v7, 0x7f06001a

    invoke-virtual {p0, v7}, Lcom/android/soundrecorder/SRListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 265
    .local v5, list:Landroid/widget/ListView;
    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 266
    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 267
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    iget-object v9, p0, Lcom/android/soundrecorder/SRListActivity;->recordFiles:Ljava/util/List;

    invoke-direct {v7, p0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    return-void

    .line 254
    .end local v5           #list:Landroid/widget/ListView;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v1       #fileItem:Ljava/io/File;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #path:Ljava/lang/String;
    :catch_6c
    move-exception v7

    goto :goto_4c
.end method

.method private pauseMusicBGM()V
    .registers 4

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SRListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 288
    return-void
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 324
    :try_start_1
    invoke-virtual {p0}, Lcom/android/soundrecorder/SRListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_9

    move-object v1, v7

    .line 330
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_8
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_9
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 328
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v1

    goto :goto_8

    .line 329
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_13
    move-exception v1

    move-object v6, v1

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 330
    goto :goto_8
.end method

.method private registerExternalStorageListener()V
    .registers 3

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity;->mSDCardEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_24

    .line 375
    new-instance v1, Lcom/android/soundrecorder/SRListActivity$3;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SRListActivity$3;-><init>(Lcom/android/soundrecorder/SRListActivity;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SRListActivity;->mSDCardEventReceiver:Landroid/content/BroadcastReceiver;

    .line 388
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity;->mSDCardEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/soundrecorder/SRListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_24
    return-void
.end method

.method private stopFmRadioBGM()V
    .registers 4

    .prologue
    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.android.fmradio.fmradioservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SRListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 148
    :pswitch_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040023

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SRListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SRListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/soundrecorder/SRListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/soundrecorder/SRListActivity$1;-><init>(Lcom/android/soundrecorder/SRListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v3

    .line 168
    goto :goto_c

    .line 172
    :pswitch_40
    invoke-direct {p0}, Lcom/android/soundrecorder/SRListActivity;->doShareAudio()V

    move v0, v3

    .line 173
    goto :goto_c

    .line 146
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_d
        :pswitch_40
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SRListActivity;->setContentView(I)V

    .line 67
    const v1, 0x7f060019

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SRListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, b:Landroid/view/View;
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity;->mRecordListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-direct {p0}, Lcom/android/soundrecorder/SRListActivity;->registerExternalStorageListener()V

    .line 71
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity;->path:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 73
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity;->path:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 76
    :cond_31
    invoke-direct {p0}, Lcom/android/soundrecorder/SRListActivity;->pauseMusicBGM()V

    .line 77
    invoke-direct {p0}, Lcom/android/soundrecorder/SRListActivity;->stopFmRadioBGM()V

    .line 78
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 12
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v6, 0x0

    const-string v7, "SRListActivity"

    .line 127
    const-string v4, "SRListActivity"

    const-string v4, "onCreateContextMenu"

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const v4, 0x7f040023

    invoke-interface {p1, v6, v6, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 130
    const/4 v4, 0x1

    const v5, 0x7f040025

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 132
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 133
    .local v3, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 134
    .local v2, mSelectedPosition:I
    iget-object v4, p0, Lcom/android/soundrecorder/SRListActivity;->recordFiles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    .local v1, file_path:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/soundrecorder/SRListActivity;->startDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/soundrecorder/SRListActivity;->fullFilePath:Ljava/lang/String;

    .line 137
    const-string v4, "SRListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/soundrecorder/SRListActivity;->fullFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v4, p0, Lcom/android/soundrecorder/SRListActivity;->fullFilePath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/soundrecorder/SRListActivity;->getAudioUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/soundrecorder/SRListActivity;->audioUri:Landroid/net/Uri;

    .line 140
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/soundrecorder/SRListActivity;->fullFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/soundrecorder/SRListActivity;->clickFile:Ljava/io/File;

    .line 141
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 143
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 82
    const-string v0, "SRListActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/soundrecorder/SRListActivity;->mSDCardEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_13

    .line 84
    iget-object v0, p0, Lcom/android/soundrecorder/SRListActivity;->mSDCardEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SRListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SRListActivity;->mSDCardEventReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    :cond_13
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/soundrecorder/SRListActivity;->recordFiles:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    .local v1, path:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/soundrecorder/SRListActivity;->startDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/soundrecorder/SRListActivity;->fullFilePath:Ljava/lang/String;

    .line 190
    const-string v2, "SRListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/soundrecorder/SRListActivity;->fullFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.soundrecorder"

    const-string v3, "com.android.soundrecorder.SoundRecorder"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v2, p0, Lcom/android/soundrecorder/SRListActivity;->fullFilePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SRListActivity;->startActivity(Landroid/content/Intent;)V

    .line 197
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 92
    const-string v0, "SRListActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 94
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 98
    const-string v0, "SRListActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 105
    const-string v0, "SRListActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/android/soundrecorder/SRListActivity;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 108
    iget-object v0, p0, Lcom/android/soundrecorder/SRListActivity;->path:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SRListActivity;->listupFiles(Ljava/io/File;)V

    .line 110
    :goto_23
    return-void

    .line 109
    :cond_24
    invoke-direct {p0}, Lcom/android/soundrecorder/SRListActivity;->clearList()V

    goto :goto_23
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 114
    const-string v0, "SRListActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 116
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 120
    const-string v0, "SRListActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 122
    return-void
.end method
