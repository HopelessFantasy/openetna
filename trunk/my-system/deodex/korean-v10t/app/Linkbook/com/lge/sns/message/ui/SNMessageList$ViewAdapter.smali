.class final Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;
.super Lcom/lge/sns/message/ui/SNMessageAdapter;
.source "SNMessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/SNMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lge/sns/message/ui/SNMessageAdapter",
        "<",
        "Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;>;"
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/message/ui/SNMessageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 359
    return-void
.end method


# virtual methods
.method protected bridge synthetic bindView(Landroid/view/View;ILcom/lge/sns/message/ui/SNMessageAdapter$Entry;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 345
    check-cast p3, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;->bindView(Landroid/view/View;ILcom/lge/sns/message/ui/SNMessageList$ViewEntry;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILcom/lge/sns/message/ui/SNMessageList$ViewEntry;)V
    .registers 22
    .parameter "view"
    .parameter "position"
    .parameter "entry"

    .prologue
    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;

    .line 405
    .local v17, views:Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->lineView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    .line 407
    .local v16, lineView:Landroid/widget/TextView;
    if-eqz v16, :cond_20

    .line 408
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->name:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_83

    .line 409
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->name:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :cond_20
    :goto_20
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->dataView:Landroid/widget/TextView;

    move-object v11, v0

    .line 417
    .local v11, dataView:Landroid/widget/TextView;
    if-eqz v11, :cond_36

    .line 418
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->data:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_8d

    .line 420
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :cond_36
    :goto_36
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->dateView:Landroid/widget/TextView;

    move-object v12, v0

    .line 430
    .local v12, dateView:Landroid/widget/TextView;
    if-eqz v12, :cond_68

    .line 431
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->date:J

    move-wide v2, v0

    .line 432
    .local v2, date:J
    const/high16 v8, 0x2

    .line 433
    .local v8, flags:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 434
    .local v9, currentTime:J
    sub-long v13, v9, v2

    .line 435
    .local v13, elapsedTime:J
    const-wide/32 v6, 0x36ee80

    .line 437
    .local v6, minResolution:J
    const-wide/32 v4, 0x36ee80

    cmp-long v4, v13, v4

    if-gez v4, :cond_97

    .line 438
    const-wide/32 v4, 0xea60

    cmp-long v4, v13, v4

    if-gez v4, :cond_93

    .line 439
    const-wide/16 v6, 0x3e8

    .line 445
    :goto_5d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v15

    .line 447
    .local v15, elapsedTimeText:Ljava/lang/CharSequence;
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    .end local v2           #date:J
    .end local v6           #minResolution:J
    .end local v8           #flags:I
    .end local v9           #currentTime:J
    .end local v13           #elapsedTime:J
    .end local v15           #elapsedTimeText:Ljava/lang/CharSequence;
    :cond_68
    :goto_68
    move-object/from16 v0, p3

    iget v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->unread:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b7

    .line 458
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->newIconView:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->addIconView:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    :goto_82
    return-void

    .line 411
    .end local v11           #dataView:Landroid/widget/TextView;
    .end local v12           #dateView:Landroid/widget/TextView;
    :cond_83
    const v4, 0x7f050029

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_20

    .line 424
    .restart local v11       #dataView:Landroid/widget/TextView;
    :cond_8d
    const-string v4, ""

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 442
    .restart local v2       #date:J
    .restart local v6       #minResolution:J
    .restart local v8       #flags:I
    .restart local v9       #currentTime:J
    .restart local v12       #dateView:Landroid/widget/TextView;
    .restart local v13       #elapsedTime:J
    :cond_93
    const-wide/32 v6, 0xea60

    goto :goto_5d

    .line 450
    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;->mContext:Landroid/content/Context;

    move-object v4, v0

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->date:J

    move-wide v6, v0

    .end local v6           #minResolution:J
    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4, v5, v6}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_68

    .line 461
    .end local v2           #date:J
    .end local v8           #flags:I
    .end local v9           #currentTime:J
    .end local v13           #elapsedTime:J
    :cond_b7
    move-object/from16 v0, p3

    iget v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->unread:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d2

    .line 463
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->newIconView:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->addIconView:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_82

    .line 468
    :cond_d2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->newIconView:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->addIconView:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_82
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;->getItem(I)Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;

    .line 368
    .local v0, entry:Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;
    if-eqz p2, :cond_15

    .line 369
    move-object v1, p2

    .line 370
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;

    .line 389
    .local v2, views:Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;
    :goto_f
    iput-object v0, v2, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->entry:Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;

    .line 392
    invoke-virtual {p0, v1, p1, v0}, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;->bindView(Landroid/view/View;ILcom/lge/sns/message/ui/SNMessageList$ViewEntry;)V

    .line 393
    return-object v1

    .line 373
    .end local v1           #v:Landroid/view/View;
    .end local v2           #views:Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;
    :cond_15
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03002b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 377
    .restart local v1       #v:Landroid/view/View;
    new-instance v2, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;

    invoke-direct {v2}, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;-><init>()V

    .line 379
    .restart local v2       #views:Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;
    const v3, 0x7f08007d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->lineView:Landroid/widget/TextView;

    .line 380
    const v3, 0x7f08007e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->dataView:Landroid/widget/TextView;

    .line 381
    const v3, 0x7f08007c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->dateView:Landroid/widget/TextView;

    .line 382
    const v3, 0x7f08007f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->newIconView:Landroid/widget/ImageView;

    .line 383
    const v3, 0x7f080080

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;->addIconView:Landroid/widget/ImageView;

    .line 385
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 398
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
