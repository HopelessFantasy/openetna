.class Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaylistListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/PlaylistBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field mIdIdx:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mTitleIdx:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/music/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 14
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v6, 0x0

    .line 546
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 524
    iput-object v6, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    .line 526
    iput-object v6, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    .line 547
    iput-object p2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    .line 548
    invoke-direct {p0, p4}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 549
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;-><init>(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 550
    return-void
.end method

.method static synthetic access$500(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/android/music/PlaylistBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 552
    if-eqz p1, :cond_12

    .line 553
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    .line 554
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I

    .line 556
    :cond_12
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x2

    .line 569
    const v6, 0x7f0a0023

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 571
    .local v5, tv:Landroid/widget/TextView;
    iget v6, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget v6, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 576
    .local v0, id:J
    const v6, 0x7f0a0017

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 577
    .local v2, iv:Landroid/widget/ImageView;
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_4f

    .line 578
    const v6, 0x7f020025

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 582
    :goto_30
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 583
    .local v4, p:Landroid/view/ViewGroup$LayoutParams;
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 584
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 586
    const v6, 0x7f0a0025

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #iv:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 587
    .restart local v2       #iv:Landroid/widget/ImageView;
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    const v6, 0x7f0a0024

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 590
    return-void

    .line 580
    .end local v4           #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_4f
    const v6, 0x7f020024

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_30
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/android/music/PlaylistBrowserActivity;->access$700(Lcom/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_13

    .line 595
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v0, p1}, Lcom/android/music/PlaylistBrowserActivity;->access$702(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 596
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 597
    invoke-direct {p0, p1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 599
    :cond_13
    return-void
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 6
    .parameter "constraint"

    .prologue
    .line 603
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1d

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_18

    :cond_e
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 607
    :cond_18
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 612
    :goto_1c
    return-object v2

    .line 609
    :cond_1d
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/music/PlaylistBrowserActivity;->access$400(Lcom/android/music/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 610
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 611
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 612
    goto :goto_1c
.end method

.method public setActivity(Lcom/android/music/PlaylistBrowserActivity;)V
    .registers 2
    .parameter "newactivity"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    .line 560
    return-void
.end method
