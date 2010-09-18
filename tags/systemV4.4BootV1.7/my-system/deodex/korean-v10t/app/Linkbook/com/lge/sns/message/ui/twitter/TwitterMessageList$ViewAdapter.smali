.class final Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;
.super Lcom/lge/sns/message/ui/SNMessageAdapter;
.source "TwitterMessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/twitter/TwitterMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lge/sns/message/ui/SNMessageAdapter",
        "<",
        "Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;",
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
            "Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;>;"
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/message/ui/SNMessageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 670
    return-void
.end method


# virtual methods
.method protected bridge synthetic bindView(Landroid/view/View;ILcom/lge/sns/message/ui/SNMessageAdapter$Entry;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 658
    check-cast p3, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->bindView(Landroid/view/View;ILcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;)V
    .registers 14
    .parameter "view"
    .parameter "position"
    .parameter "entry"

    .prologue
    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;

    .line 699
    .local v9, views:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;
    iget-object v0, v9, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->lineView:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 700
    iget-object v0, p3, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_51

    .line 701
    iget-object v0, v9, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->lineView:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    :cond_15
    :goto_15
    iget-object v0, v9, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->dataView:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 708
    iget-object v0, p3, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->data:Ljava/lang/String;

    if-eqz v0, :cond_5a

    .line 709
    iget-object v0, v9, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->dataView:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    :cond_24
    :goto_24
    iget-object v0, v9, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->dateView:Landroid/widget/TextView;

    if-eqz v0, :cond_50

    .line 716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 717
    .local v2, currentTime:J
    iget-wide v0, p3, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->date:J

    sub-long v7, v2, v0

    .line 718
    .local v7, elapsedTime:J
    const-wide/32 v4, 0x36ee80

    .line 720
    .local v4, minResolution:J
    const-wide/32 v0, 0x36ee80

    cmp-long v0, v7, v0

    if-gez v0, :cond_66

    .line 721
    const-wide/32 v0, 0xea60

    cmp-long v0, v7, v0

    if-gez v0, :cond_62

    .line 722
    const-wide/16 v4, 0x3e8

    .line 727
    :goto_43
    iget-object v7, v9, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->dateView:Landroid/widget/TextView;

    .end local v7           #elapsedTime:J
    iget-wide v0, p3, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->date:J

    const/high16 v6, 0x2

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    .end local v2           #currentTime:J
    .end local v4           #minResolution:J
    :cond_50
    :goto_50
    return-void

    .line 703
    :cond_51
    iget-object v0, v9, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->lineView:Landroid/widget/TextView;

    const v1, 0x7f050029

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_15

    .line 711
    :cond_5a
    iget-object v0, v9, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->dataView:Landroid/widget/TextView;

    const-string v1, "<No message body>"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 724
    .restart local v2       #currentTime:J
    .restart local v4       #minResolution:J
    .restart local v7       #elapsedTime:J
    :cond_62
    const-wide/32 v4, 0xea60

    goto :goto_43

    .line 736
    :cond_66
    iget-object v0, v9, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->dateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/Date;

    .end local v2           #currentTime:J
    iget-wide v3, p3, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->date:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .end local v4           #minResolution:J
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v2, v3}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 673
    if-eqz p2, :cond_1b

    .line 674
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;

    invoke-virtual {p0, p1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->getItem(I)Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;

    move-result-object v3

    check-cast v3, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    iput-object v3, v2, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->entry:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    .line 675
    invoke-virtual {p0, p1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->getItem(I)Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    invoke-virtual {p0, p2, p1, v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->bindView(Landroid/view/View;ILcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;)V

    move-object v2, p2

    .line 688
    :goto_1a
    return-object v2

    .line 678
    :cond_1b
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 679
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;

    invoke-direct {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;-><init>()V

    .line 681
    .local v1, views:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;
    const v2, 0x7f08007d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->lineView:Landroid/widget/TextView;

    .line 682
    const v2, 0x7f08007e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->dataView:Landroid/widget/TextView;

    .line 683
    const v2, 0x7f080086

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->dateView:Landroid/widget/TextView;

    .line 685
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 686
    invoke-virtual {p0, p1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->getItem(I)Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    iput-object v2, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;->entry:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    .line 687
    invoke-virtual {p0, p1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->getItem(I)Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    invoke-virtual {p0, v0, p1, v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->bindView(Landroid/view/View;ILcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;)V

    move-object v2, v0

    .line 688
    goto :goto_1a
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 693
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
