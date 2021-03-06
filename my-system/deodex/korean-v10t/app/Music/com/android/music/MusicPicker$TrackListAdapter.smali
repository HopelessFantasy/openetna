.class Lcom/android/music/MusicPicker$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "MusicPicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAlbumIdx:I

.field private mArtistIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mDurationIdx:I

.field private mIdIdx:I

.field private mIndexer:Lcom/android/music/MusicAlphabetIndexer;

.field private mIndexerSortMode:I

.field final mListView:Landroid/widget/ListView;

.field private mLoading:Z

.field private mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/music/MusicPicker;


# direct methods
.method constructor <init>(Lcom/android/music/MusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V
    .registers 13
    .parameter
    .parameter "context"
    .parameter "listView"
    .parameter "layout"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    .line 189
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mLoading:Z

    .line 190
    iput-object p3, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    .line 191
    const v0, 0x7f07002f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 192
    const v0, 0x7f070030

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 193
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;

    .line 233
    .local v7, vh:Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;
    iget v8, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mTitleIdx:I

    iget-object v9, v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v8, v9}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 234
    iget-object v8, v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v9, v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v9, v9, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v10, 0x0

    iget-object v11, v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v11, v11, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/TextView;->setText([CII)V

    .line 236
    iget v8, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mDurationIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit16 v8, v8, 0x1f4

    div-int/lit16 v6, v8, 0x3e8

    .line 237
    .local v6, secs:I
    if-nez v6, :cond_ac

    .line 238
    iget-object v8, v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_2e
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 244
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 246
    iget v8, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_48

    const-string v8, "<unknown>"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 248
    :cond_48
    iget-object v8, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :goto_4d
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    iget v8, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mArtistIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 254
    if-eqz v5, :cond_62

    const-string v8, "<unknown>"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 255
    :cond_62
    iget-object v8, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :goto_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 260
    .local v4, len:I
    iget-object v8, v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v8, v8

    if-ge v8, v4, :cond_74

    .line 261
    new-array v8, v4, [C

    iput-object v8, v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 263
    :cond_74
    const/4 v8, 0x0

    iget-object v9, v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v4, v9, v10}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 264
    iget-object v8, v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v9, v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v4}, Landroid/widget/TextView;->setText([CII)V

    .line 270
    iget v8, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIdIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 271
    .local v1, id:J
    iget-object v8, v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    iget-object v9, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget-wide v9, v9, Lcom/android/music/MusicPicker;->mSelectedId:J

    cmp-long v9, v1, v9

    if-nez v9, :cond_c0

    const/4 v9, 0x1

    :goto_94
    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 277
    iget-object v3, v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 278
    .local v3, iv:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget-wide v8, v8, Lcom/android/music/MusicPicker;->mPlayingId:J

    cmp-long v8, v1, v8

    if-nez v8, :cond_c2

    .line 279
    const v8, 0x7f020035

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    :goto_ab
    return-void

    .line 240
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #id:J
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #len:I
    .end local v5           #name:Ljava/lang/String;
    :cond_ac
    iget-object v8, v7, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    int-to-long v9, v6

    invoke-static {p2, v9, v10}, Lcom/android/music/MusicPicker;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2e

    .line 250
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v5       #name:Ljava/lang/String;
    :cond_b8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 257
    :cond_bc
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 271
    .restart local v1       #id:J
    .restart local v4       #len:I
    :cond_c0
    const/4 v9, 0x0

    goto :goto_94

    .line 282
    .restart local v3       #iv:Landroid/widget/ImageView;
    :cond_c2
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ab
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 297
    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iput-object p1, v1, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    .line 299
    if-eqz p1, :cond_5e

    .line 301
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIdIdx:I

    .line 302
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mTitleIdx:I

    .line 303
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mArtistIdx:I

    .line 304
    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    .line 305
    const-string v1, "duration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mDurationIdx:I

    .line 310
    iget v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    iget-object v2, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget v2, v2, Lcom/android/music/MusicPicker;->mSortMode:I

    if-ne v1, v2, :cond_3d

    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-nez v1, :cond_6a

    .line 311
    :cond_3d
    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget v1, v1, Lcom/android/music/MusicPicker;->mSortMode:I

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    .line 312
    iget v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mTitleIdx:I

    .line 313
    .local v0, idx:I
    iget v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    packed-switch v1, :pswitch_data_70

    .line 321
    :goto_4a
    new-instance v1, Lcom/android/music/MusicAlphabetIndexer;

    iget-object v2, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v2}, Lcom/android/music/MusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10402e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    .line 334
    .end local v0           #idx:I
    :cond_5e
    :goto_5e
    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v1}, Lcom/android/music/MusicPicker;->makeListShown()V

    .line 335
    return-void

    .line 315
    .restart local v0       #idx:I
    :pswitch_64
    iget v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mArtistIdx:I

    .line 316
    goto :goto_4a

    .line 318
    :pswitch_67
    iget v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    goto :goto_4a

    .line 328
    .end local v0           #idx:I
    :cond_6a
    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v1, p1}, Lcom/android/music/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_5e

    .line 313
    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_67
        :pswitch_64
    .end packed-switch
.end method

.method public getPositionForSection(I)I
    .registers 4
    .parameter "section"

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/music/MusicPicker$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 351
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_8

    .line 353
    const/4 v1, 0x0

    .line 356
    :goto_7
    return v1

    :cond_8
    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v1, p1}, Lcom/android/music/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_7
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-eqz v0, :cond_b

    .line 365
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/android/music/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 367
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mLoading:Z

    if-eqz v0, :cond_6

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_5
    return v0

    :cond_6
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_5
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 216
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 217
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;-><init>(Lcom/android/music/MusicPicker$TrackListAdapter;)V

    .line 218
    .local v1, vh:Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;
    const v2, 0x7f0a0023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 219
    const v2, 0x7f0a0024

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 220
    const v2, 0x7f0a0022

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 221
    const v2, 0x7f0a0021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    iput-object p0, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 222
    const v2, 0x7f0a0025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 223
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 224
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 225
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 226
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoading(Z)V
    .registers 2
    .parameter "loading"

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mLoading:Z

    .line 202
    return-void
.end method
