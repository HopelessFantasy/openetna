.class public Lcom/angryredplanet/android/rings_extended/RingsExtended;
.super Landroid/app/ListActivity;
.source "RingsExtended.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;,
        Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;

.field private mDefaultItemIdx:I

.field private mExistingItemIdx:I

.field private mExistingUri:Landroid/net/Uri;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayingId:J

.field private mSelectedItem:J

.field private mSilentItemIdx:I

.field private mStaticAttach:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    .line 51
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSilentItemIdx:I

    .line 77
    iput-wide v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSelectedItem:J

    .line 84
    iput-wide v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mPlayingId:J

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/angryredplanet/android/rings_extended/RingsExtended;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSelectedItem:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/angryredplanet/android/rings_extended/RingsExtended;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mPlayingId:J

    return-wide v0
.end method

.method static final getActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 11
    .parameter "context"
    .parameter "intent"
    .parameter "exclude"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 282
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 284
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_71

    .line 285
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 286
    .local v0, N:I
    if-eqz p2, :cond_3f

    .line 287
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v0, :cond_3f

    .line 288
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 289
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 291
    :cond_37
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 292
    add-int/lit8 v0, v0, -0x1

    .line 287
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 296
    .end local v1           #i:I
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3f
    const/4 v6, 0x1

    if-le v0, v6, :cond_71

    .line 299
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 300
    .local v4, r0:Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x1

    .restart local v1       #i:I
    :goto_4a
    if-ge v1, v0, :cond_69

    .line 301
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 308
    .restart local v5       #ri:Landroid/content/pm/ResolveInfo;
    iget v6, v4, Landroid/content/pm/ResolveInfo;->priority:I

    iget v7, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v6, v7, :cond_5e

    iget-boolean v6, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v7, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v6, v7, :cond_66

    .line 310
    :cond_5e
    :goto_5e
    if-ge v1, v0, :cond_66

    .line 311
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 312
    add-int/lit8 v0, v0, -0x1

    goto :goto_5e

    .line 300
    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 316
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_69
    new-instance v6, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v6, v3}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 320
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v4           #r0:Landroid/content/pm/ResolveInfo;
    :cond_71
    return-object v2
.end method

.method private getSelectedUri()Landroid/net/Uri;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 536
    iget-wide v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSelectedItem:J

    iget v2, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSilentItemIdx:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    move-object v0, v4

    .line 555
    :goto_b
    return-object v0

    .line 548
    :cond_c
    iget-wide v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSelectedItem:J

    iget v2, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mExistingItemIdx:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 549
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mExistingUri:Landroid/net/Uri;

    goto :goto_b

    .line 550
    :cond_18
    iget-wide v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSelectedItem:J

    iget v2, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mDefaultItemIdx:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 551
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_b

    :cond_24
    move-object v0, v4

    .line 555
    goto :goto_b
.end method

.method private stopMediaPlayer()V
    .registers 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_15

    .line 422
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 423
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 425
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mPlayingId:J

    .line 427
    :cond_15
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 494
    const/4 v2, 0x1

    if-ne p1, v2, :cond_21

    if-ne p2, v3, :cond_21

    .line 495
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 496
    .local v0, resultIntent:Landroid/content/Intent;
    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v1, v2

    .line 510
    .local v1, uri:Landroid/net/Uri;
    :goto_12
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v3, v0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->setResult(ILandroid/content/Intent;)V

    .line 512
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->finish()V

    .line 517
    .end local v0           #resultIntent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1d
    :goto_1d
    return-void

    .line 496
    .restart local v0       #resultIntent:Landroid/content/Intent;
    :cond_1e
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_12

    .line 513
    .end local v0           #resultIntent:Landroid/content/Intent;
    :cond_21
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    if-ne p2, v3, :cond_1d

    .line 514
    invoke-virtual {p0, v3, p3}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->setResult(ILandroid/content/Intent;)V

    .line 515
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->finish()V

    goto :goto_1d
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_22

    .line 533
    :goto_7
    return-void

    .line 522
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 523
    .local v0, resultIntent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getSelectedUri()Landroid/net/Uri;

    move-result-object v1

    .line 524
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 525
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->setResult(ILandroid/content/Intent;)V

    .line 526
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->finish()V

    goto :goto_7

    .line 530
    .end local v0           #resultIntent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_1e
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->finish()V

    goto :goto_7

    .line 520
    :pswitch_data_22
    .packed-switch 0x7f050009
        :pswitch_8
        :pswitch_1e
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_18

    .line 412
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 413
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 415
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mPlayingId:J

    .line 416
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 418
    :cond_18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 325
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 327
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->setContentView(I)V

    .line 337
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 343
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mUriForDefaultItem:Landroid/net/Uri;

    .line 344
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v0, :cond_21

    .line 345
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mUriForDefaultItem:Landroid/net/Uri;

    .line 349
    :cond_21
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mExistingUri:Landroid/net/Uri;

    .line 352
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v3, initialItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;>;"
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 354
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSilentItemIdx:I

    .line 355
    new-instance v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;

    const v1, 0x7f040004

    invoke-virtual {p0, v1}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, v4, v4}, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_4d
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 359
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mDefaultItemIdx:I

    .line 360
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v7

    .line 361
    .local v7, defRing:Landroid/media/Ringtone;
    new-instance v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;

    const v1, 0x7f040005

    invoke-virtual {p0, v1}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v7, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v7}, Landroid/media/Ringtone;->stop()V

    .line 366
    .end local v7           #defRing:Landroid/media/Ringtone;
    :cond_77
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mExistingUri:Landroid/net/Uri;

    if-eqz v0, :cond_9d

    .line 372
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mExistingUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v8

    .line 373
    .local v8, exisingRing:Landroid/media/Ringtone;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mExistingItemIdx:I

    .line 374
    new-instance v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;

    const v1, 0x7f040006

    invoke-virtual {p0, v1}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v8, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {v8}, Landroid/media/Ringtone;->stop()V

    .line 380
    .end local v8           #exisingRing:Landroid/media/Ringtone;
    :cond_9d
    const-string v0, "attach_picker"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mStaticAttach:I

    .line 381
    const-string v0, "Brad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RingtoneExtended_Attached:]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mStaticAttach:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_ff

    .line 384
    iget v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSilentItemIdx:I

    if-ltz v0, :cond_cd

    .line 385
    iget v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSilentItemIdx:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSelectedItem:J

    .line 393
    :cond_cd
    :goto_cd
    iget-wide v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSelectedItem:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_d5

    .line 398
    :cond_d5
    new-instance v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "audio/mp3"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;-><init>(Lcom/angryredplanet/android/rings_extended/RingsExtended;Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mAdapter:Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;

    .line 402
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mAdapter:Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;

    invoke-virtual {p0, v0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 403
    return-void

    .line 387
    :cond_ff
    iget v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mDefaultItemIdx:I

    if-ltz v0, :cond_113

    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mExistingUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 388
    iget v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mDefaultItemIdx:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSelectedItem:J

    goto :goto_cd

    .line 390
    :cond_113
    iget v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mExistingItemIdx:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSelectedItem:J

    goto :goto_cd
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 15
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 431
    iget-object v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mAdapter:Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;

    long-to-int v7, p4

    invoke-virtual {v6, v7}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->initialItemForPosition(I)I

    move-result v2

    .line 432
    .local v2, initialItem:I
    if-ltz v2, :cond_7b

    .line 433
    int-to-long v6, v2

    iput-wide v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mSelectedItem:J

    .line 434
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getSelectedUri()Landroid/net/Uri;

    move-result-object v5

    .line 435
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_6c

    iget-wide v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mPlayingId:J

    cmp-long v6, p4, v6

    if-nez v6, :cond_1c

    iget-object v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v6, :cond_6c

    .line 436
    :cond_1c
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->stopMediaPlayer()V

    .line 437
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 439
    :try_start_26
    iget-object v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, p0, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 440
    iget-object v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 441
    iget-object v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 442
    iget-object v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 443
    iget-object v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    .line 444
    iput-wide p4, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mPlayingId:J

    .line 445
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_49} :catch_62

    .line 453
    :cond_49
    :goto_49
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 457
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 458
    .local v4, resultIntent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 459
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v4}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->setResult(ILandroid/content/Intent;)V

    .line 460
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->finish()V

    .line 490
    .end local v4           #resultIntent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    :goto_61
    return-void

    .line 446
    .restart local v5       #uri:Landroid/net/Uri;
    :catch_62
    move-exception v6

    move-object v1, v6

    .line 447
    .local v1, e:Ljava/io/IOException;
    const-string v6, "MusicPicker"

    const-string v7, "Unable to play track"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .line 449
    .end local v1           #e:Ljava/io/IOException;
    :cond_6c
    iget-object v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_49

    .line 450
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->stopMediaPlayer()V

    .line 451
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_49

    .line 462
    .end local v5           #uri:Landroid/net/Uri;
    :cond_7b
    iget-object v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mAdapter:Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;

    long-to-int v7, p4

    invoke-virtual {v6, v7}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->isOrigIntentPosition(I)Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 463
    iget-object v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mAdapter:Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;

    long-to-int v7, p4

    invoke-virtual {v6, v7}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v3

    .line 465
    .local v3, intent:Landroid/content/Intent;
    iget v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mStaticAttach:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b6

    .line 466
    const-string v6, "Brad"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[RingtoneExtended_Attached]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mStaticAttach:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v6, "attach_picker"

    iget v7, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mStaticAttach:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    :goto_b1
    const/4 v6, 0x2

    invoke-virtual {p0, v3, v6}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_61

    .line 470
    :cond_b6
    const/4 v0, 0x1

    .line 471
    .local v0, ResultRingtone:I
    const-string v6, "Brad"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[RingtoneExtended_ringtone]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v6, "ringtone_picker"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_b1

    .line 476
    .end local v0           #ResultRingtone:I
    .end local v3           #intent:Landroid/content/Intent;
    :cond_d5
    iget-object v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mAdapter:Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;

    long-to-int v7, p4

    invoke-virtual {v6, v7}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v3

    .line 478
    .restart local v3       #intent:Landroid/content/Intent;
    iget v6, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mStaticAttach:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_10f

    .line 479
    const-string v6, "Brad"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[RingtoneExtended_Attached]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mStaticAttach:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v6, "attach_picker"

    iget v7, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended;->mStaticAttach:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    :goto_102
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 488
    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_61

    .line 483
    :cond_10f
    const/4 v0, 0x1

    .line 484
    .restart local v0       #ResultRingtone:I
    const-string v6, "Brad"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[RingtoneExtended_ringtone]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v6, "ringtone_picker"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_102
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 406
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 407
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->stopMediaPlayer()V

    .line 408
    return-void
.end method
