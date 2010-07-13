.class Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;,
        Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/AlbumBrowserActivity;

.field private mAlbumArtIndex:I

.field private mAlbumIdx:I

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private mArtistIdx:I

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mFormatArgs:[Ljava/lang/Object;

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mResources:Landroid/content/res/Resources;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 16
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v8, 0x0

    .line 510
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 482
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 487
    iput-boolean v8, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    .line 512
    iput-object p2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    .line 513
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;-><init>(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 515
    const v0, 0x7f070030

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 516
    const v0, 0x7f07002f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 517
    const v0, 0x7f070062

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 519
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 520
    .local v7, r:Landroid/content/res/Resources;
    const v0, 0x7f020035

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    .line 522
    const v0, 0x7f020002

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 523
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 525
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 527
    invoke-direct {p0, p4}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 528
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 529
    return-void
.end method

.method static synthetic access$300(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;)Lcom/android/music/AlbumBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    .line 532
    if-eqz p1, :cond_23

    .line 533
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    .line 534
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    .line 535
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumArtIndex:I

    .line 537
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_24

    .line 538
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 544
    :cond_23
    :goto_23
    return-void

    .line 540
    :cond_24
    new-instance v0, Lcom/android/music/MusicAlphabetIndexer;

    iget v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x10402e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    goto :goto_23
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 571
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    .line 573
    .local v9, vh:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    iget v10, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 574
    .local v7, name:Ljava/lang/String;
    move-object v5, v7

    .line 575
    .local v5, displayname:Ljava/lang/String;
    if-eqz v7, :cond_17

    const-string v10, "<unknown>"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_63

    :cond_17
    const/4 v10, 0x1

    move v8, v10

    .line 576
    .local v8, unknown:Z
    :goto_19
    if-eqz v8, :cond_1d

    .line 577
    iget-object v5, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 579
    :cond_1d
    iget-object v10, v9, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget v10, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 582
    move-object v5, v7

    .line 583
    if-eqz v7, :cond_33

    const-string v10, "<unknown>"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 584
    :cond_33
    iget-object v5, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 586
    :cond_35
    iget-object v10, v9, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v6, v9, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 591
    .local v6, iv:Landroid/widget/ImageView;
    iget v10, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumArtIndex:I

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, art:Ljava/lang/String;
    if-nez v8, :cond_4c

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_66

    .line 593
    :cond_4c
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    :goto_50
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAlbumId()I

    move-result v3

    .line 601
    .local v3, currentalbumid:I
    const/4 v10, 0x0

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 602
    .local v0, aid:I
    iget-object v6, v9, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 603
    if-ne v3, v0, :cond_75

    .line 604
    iget-object v10, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 608
    :goto_62
    return-void

    .line 575
    .end local v0           #aid:I
    .end local v1           #art:Ljava/lang/String;
    .end local v3           #currentalbumid:I
    .end local v6           #iv:Landroid/widget/ImageView;
    .end local v8           #unknown:Z
    :cond_63
    const/4 v10, 0x0

    move v8, v10

    goto :goto_19

    .line 595
    .restart local v1       #art:Ljava/lang/String;
    .restart local v6       #iv:Landroid/widget/ImageView;
    .restart local v8       #unknown:Z
    :cond_66
    const/4 v10, 0x0

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 596
    .local v2, artIndex:I
    iget-object v10, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p2, v2, v10}, Lcom/android/music/MusicUtils;->getCachedArtwork(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 597
    .local v4, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_50

    .line 606
    .end local v2           #artIndex:I
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .restart local v0       #aid:I
    .restart local v3       #currentalbumid:I
    :cond_75
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_62
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 612
    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 621
    :cond_8
    :goto_8
    return-void

    .line 616
    :cond_9
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/android/music/AlbumBrowserActivity;->access$400(Lcom/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_8

    .line 617
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v0, p1}, Lcom/android/music/AlbumBrowserActivity;->access$402(Lcom/android/music/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 618
    invoke-direct {p0, p1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 619
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_8
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter "section"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 556
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 557
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;-><init>()V

    .line 558
    .local v1, vh:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    const v2, 0x7f0a0023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 559
    const v2, 0x7f0a0024

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 560
    const v2, 0x7f0a0025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 561
    const v2, 0x7f0a0017

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 562
    iget-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    iget-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 564
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 565
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 6
    .parameter "constraint"

    .prologue
    .line 625
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1d

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_18

    :cond_e
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 629
    :cond_18
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 634
    :goto_1c
    return-object v2

    .line 631
    :cond_1d
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/music/AlbumBrowserActivity;->access$200(Lcom/android/music/AlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 632
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 633
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 634
    goto :goto_1c
.end method

.method public setActivity(Lcom/android/music/AlbumBrowserActivity;)V
    .registers 2
    .parameter "newactivity"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    .line 548
    return-void
.end method
