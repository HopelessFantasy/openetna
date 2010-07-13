.class Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArtistAlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;,
        Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private final mBuffer:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mContext:Landroid/content/Context;

.field private mCursorInactive:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mFormatArgs:[Ljava/lang/Object;

.field private final mFormatArgs3:[Ljava/lang/Object;

.field private mGroupAlbumIdx:I

.field private mGroupArtistIdIdx:I

.field private mGroupArtistIdx:I

.field private mGroupSongIdx:I

.field private mIndexer:Lcom/android/music/MusicAlphabetIndexer;

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .registers 20
    .parameter "context"
    .parameter "currentactivity"
    .parameter "cursor"
    .parameter "glayout"
    .parameter "gfrom"
    .parameter "gto"
    .parameter "clayout"
    .parameter "cfrom"
    .parameter "cto"

    .prologue
    .line 566
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    .line 535
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 536
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs3:[Ljava/lang/Object;

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    .line 567
    iput-object p2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mCursorInactive:Z

    .line 569
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 571
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 572
    .local v9, r:Landroid/content/res/Resources;
    const v0, 0x7f020035

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    .line 573
    const v0, 0x7f020002

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 575
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 576
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 578
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mContext:Landroid/content/Context;

    .line 579
    invoke-direct {p0, p3}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 580
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 581
    const v0, 0x7f070062

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 582
    const v0, 0x7f070030

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 583
    const v0, 0x7f07002f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 584
    return-void
.end method

.method static synthetic access$300(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Lcom/android/music/ArtistAlbumBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mCursorInactive:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 521
    iput-boolean p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mCursorInactive:Z

    return p1
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    .line 587
    if-eqz p1, :cond_2b

    .line 588
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdIdx:I

    .line 589
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    .line 590
    const-string v0, "number_of_albums"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupAlbumIdx:I

    .line 591
    const-string v0, "number_of_tracks"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupSongIdx:I

    .line 592
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-eqz v0, :cond_2c

    .line 593
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/android/music/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 599
    :cond_2b
    :goto_2b
    return-void

    .line 595
    :cond_2c
    new-instance v0, Lcom/android/music/MusicAlphabetIndexer;

    iget v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x10402e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    goto :goto_2b
.end method


# virtual methods
.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 25
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "islast"

    .prologue
    .line 674
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 676
    .local v17, vh:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const-string v18, "album"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 677
    .local v13, name:Ljava/lang/String;
    move-object v11, v13

    .line 678
    .local v11, displayname:Ljava/lang/String;
    if-eqz v13, :cond_26

    const-string v18, "<unknown>"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f3

    :cond_26
    const/16 v18, 0x1

    move/from16 v16, v18

    .line 679
    .local v16, unknown:Z
    :goto_2a
    if-eqz v16, :cond_31

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    move-object v11, v0

    .line 682
    :cond_31
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    const-string v18, "numsongs"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 685
    .local v15, numsongs:I
    const-string v18, "numsongs_by_artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 687
    .local v14, numartistsongs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    move-object v8, v0

    .line 688
    .local v8, builder:Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move-object v0, v8

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 689
    if-eqz v16, :cond_77

    .line 690
    move v15, v14

    .line 693
    :cond_77
    const/16 v18, 0x1

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_f9

    .line 694
    const v18, 0x7f070002

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :goto_8f
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    move-object v12, v0

    .line 713
    .local v12, iv:Landroid/widget/ImageView;
    const-string v18, "album_art"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 715
    .local v6, art:Ljava/lang/String;
    if-nez v16, :cond_bd

    if-eqz v6, :cond_bd

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_168

    .line 716
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 717
    const/16 v18, 0x0

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 724
    :goto_d1
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAlbumId()I

    move-result v9

    .line 725
    .local v9, currentalbumid:I
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 726
    .local v4, aid:I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    move-object v12, v0

    .line 727
    if-ne v9, v4, :cond_186

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 732
    :goto_f2
    return-void

    .line 678
    .end local v4           #aid:I
    .end local v6           #art:Ljava/lang/String;
    .end local v8           #builder:Ljava/lang/StringBuilder;
    .end local v9           #currentalbumid:I
    .end local v12           #iv:Landroid/widget/ImageView;
    .end local v14           #numartistsongs:I
    .end local v15           #numsongs:I
    .end local v16           #unknown:Z
    :cond_f3
    const/16 v18, 0x0

    move/from16 v16, v18

    goto/16 :goto_2a

    .line 696
    .restart local v8       #builder:Ljava/lang/StringBuilder;
    .restart local v14       #numartistsongs:I
    .restart local v15       #numsongs:I
    .restart local v16       #unknown:Z
    :cond_f9
    if-ne v15, v14, :cond_122

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    move-object v5, v0

    .line 698
    .local v5, args:[Ljava/lang/Object;
    const/16 v18, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v18

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const/high16 v19, 0x7f08

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v15

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8f

    .line 701
    .end local v5           #args:[Ljava/lang/Object;
    :cond_122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs3:[Ljava/lang/Object;

    move-object v5, v0

    .line 702
    .restart local v5       #args:[Ljava/lang/Object;
    const/16 v18, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v18

    .line 703
    const/16 v18, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v18

    .line 704
    const/16 v18, 0x2

    const-string v19, "artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f080001

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v15

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8f

    .line 719
    .end local v5           #args:[Ljava/lang/Object;
    .restart local v6       #art:Ljava/lang/String;
    .restart local v12       #iv:Landroid/widget/ImageView;
    :cond_168
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 720
    .local v7, artIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move v1, v7

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/music/MusicUtils;->getCachedArtwork(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 721
    .local v10, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d1

    .line 730
    .end local v7           #artIndex:I
    .end local v10           #d:Landroid/graphics/drawable/Drawable;
    .restart local v4       #aid:I
    .restart local v9       #currentalbumid:I
    :cond_186
    const/16 v18, 0x0

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f2
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isexpanded"

    .prologue
    .line 644
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 646
    .local v8, vh:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    iget v9, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, artist:Ljava/lang/String;
    move-object v3, v0

    .line 648
    .local v3, displayartist:Ljava/lang/String;
    if-eqz v0, :cond_17

    const-string v9, "<unknown>"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    :cond_17
    const/4 v9, 0x1

    move v7, v9

    .line 649
    .local v7, unknown:Z
    :goto_19
    if-eqz v7, :cond_1d

    .line 650
    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 652
    :cond_1d
    iget-object v9, v8, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget v9, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupAlbumIdx:I

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 655
    .local v4, numalbums:I
    iget v9, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupSongIdx:I

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 657
    .local v5, numsongs:I
    invoke-static {p2, v4, v5, v7}, Lcom/android/music/MusicUtils;->makeAlbumsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v6

    .line 660
    .local v6, songs_albums:Ljava/lang/String;
    iget-object v9, v8, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentArtistId()I

    move-result v2

    .line 663
    .local v2, currentartistid:I
    iget v9, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdIdx:I

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 664
    .local v1, artistid:I
    if-ne v2, v1, :cond_50

    if-nez p4, :cond_50

    .line 665
    iget-object v9, v8, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 669
    :goto_4c
    return-void

    .line 648
    .end local v1           #artistid:I
    .end local v2           #currentartistid:I
    .end local v4           #numalbums:I
    .end local v5           #numsongs:I
    .end local v6           #songs_albums:Ljava/lang/String;
    .end local v7           #unknown:Z
    :cond_4d
    const/4 v9, 0x0

    move v7, v9

    goto :goto_19

    .line 667
    .restart local v1       #artistid:I
    .restart local v2       #currentartistid:I
    .restart local v4       #numalbums:I
    .restart local v5       #numsongs:I
    .restart local v6       #songs_albums:Ljava/lang/String;
    .restart local v7       #unknown:Z
    :cond_50
    iget-object v9, v8, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4c
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 815
    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 830
    :goto_8
    return-void

    .line 819
    :cond_9
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    monitor-enter v0

    .line 820
    :try_start_c
    iget-boolean v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mCursorInactive:Z

    if-eqz v1, :cond_15

    .line 821
    monitor-exit v0

    goto :goto_8

    .line 829
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_12

    throw v1

    .line 824
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->access$600(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eq p1, v1, :cond_28

    .line 825
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v1, p1}, Lcom/android/music/ArtistAlbumBrowserActivity;->access$602(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 826
    invoke-direct {p0, p1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 827
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 829
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_12

    goto :goto_8
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 10
    .parameter "groupCursor"

    .prologue
    const/4 v3, 0x0

    const-string v4, "_id"

    .line 738
    const-string v0, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 740
    .local v7, id:I
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "numsongs"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "numsongs_by_artist"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 747
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    const-string v1, "external"

    int-to-long v4, v7

    invoke-static {v1, v4, v5}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "album_key"

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 810
    .local v6, c:Landroid/database/Cursor;
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;

    iget v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v6, v1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/database/Cursor;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/android/music/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 855
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/android/music/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 629
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 630
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>()V

    .line 631
    .local v1, vh:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v2, 0x7f0a0023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 632
    const v2, 0x7f0a0024

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 633
    const v2, 0x7f0a0025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 634
    const v2, 0x7f0a0017

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 635
    iget-object v2, v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 636
    iget-object v2, v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 637
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 638
    return-object v0
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    const v5, 0x7f0a0017

    const/4 v4, -0x2

    const/4 v6, 0x0

    .line 611
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 612
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 613
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 614
    .local v1, p:Landroid/view/ViewGroup$LayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 615
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 616
    new-instance v3, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>()V

    .line 617
    .local v3, vh:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v4, 0x7f0a0023

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v3, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 618
    const v4, 0x7f0a0024

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v3, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 619
    const v4, 0x7f0a0025

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v3, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 620
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v3, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 621
    iget-object v4, v3, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v6, v6, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 622
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 623
    return-object v2
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 6
    .parameter "constraint"

    .prologue
    .line 834
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1d

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_18

    :cond_e
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 838
    :cond_18
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 843
    :goto_1c
    return-object v2

    .line 840
    :cond_1d
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->access$200(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 841
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 842
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 843
    goto :goto_1c
.end method

.method public setActivity(Lcom/android/music/ArtistAlbumBrowserActivity;)V
    .registers 2
    .parameter "newactivity"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    .line 603
    return-void
.end method
