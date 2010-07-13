.class public Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfileExpandableListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ProfileView;


# direct methods
.method public constructor <init>(Lcom/lge/sns/profile/ui/ProfileView;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public addMediaFile(Lcom/lge/sns/media/MediaFile;)V
    .registers 6
    .parameter "mediaItem"

    .prologue
    const/4 v3, 0x3

    .line 316
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 317
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2e

    .line 318
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->notifyDataSetChanged()V

    .line 331
    return-void

    .line 320
    :cond_2e
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileView;->access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/lge/sns/profile/ui/ProfileView;->access$1300(Lcom/lge/sns/profile/ui/ProfileView;Ljava/util/List;Lcom/lge/sns/media/MediaFile;)I

    move-result v0

    .line 321
    .local v0, location:I
    if-ge v0, v3, :cond_2a

    .line 322
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 323
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2a

    .line 324
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2a
.end method

.method public addProfileComment(Lcom/lge/sns/profile/ProfileComment;)V
    .registers 5
    .parameter "commentItem"

    .prologue
    .line 305
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileView;->access$200(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/lge/sns/profile/ui/ProfileView;->access$1200(Lcom/lge/sns/profile/ui/ProfileView;Ljava/util/List;Lcom/lge/sns/profile/ProfileComment;)I

    move-result v0

    .line 306
    .local v0, location:I
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$200(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 308
    return-void
.end method

.method public createPhotoView(Landroid/view/View;Lcom/lge/sns/media/MediaFile;)Landroid/view/View;
    .registers 8
    .parameter "v"
    .parameter "f"

    .prologue
    const/16 v4, 0x48

    const/4 v3, 0x1

    .line 350
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 352
    .local v0, image:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileView;->access$800(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/lge/sns/media/IMediaFacade;->getThumbnailBitmap(Lcom/lge/sns/media/MediaFile;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 354
    .local v1, photo:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_43

    .line 355
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 359
    :goto_1b
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 360
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 362
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 363
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 364
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 365
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iget-object v2, v2, Lcom/lge/sns/profile/ui/ProfileView;->imageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iget-object v2, v2, Lcom/lge/sns/profile/ui/ProfileView;->imageLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 367
    return-object v0

    .line 357
    :cond_43
    const v2, 0x7f02005f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1b
.end method

.method public getChild(II)Ljava/lang/Object;
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 135
    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_27

    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$200(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 136
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$200(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 140
    :goto_26
    return-object v0

    .line 137
    :cond_27
    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_42

    .line 138
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v0

    goto :goto_26

    .line 140
    :cond_42
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_26
.end method

.method public getChildId(II)J
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 145
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 30
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 169
    const/16 v20, 0x0

    .line 171
    .local v20, view:Landroid/view/View;
    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$100()Ljava/util/Map;

    move-result-object v21

    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$000()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_d0

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/sns/profile/ui/ProfileView;->access$700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/view/LayoutInflater;

    move-result-object v21

    const v22, 0x7f03003f

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p5

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 173
    const v21, 0x7f08001c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 174
    .local v13, name:Landroid/widget/TextView;
    const v21, 0x7f08001b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 175
    .local v7, date:Landroid/widget/TextView;
    const v21, 0x7f08001d

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 176
    .local v11, message:Landroid/widget/TextView;
    const-string v21, ""

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const-string v21, ""

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const-string v21, ""

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :try_start_68
    invoke-virtual/range {p0 .. p2}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lge/sns/profile/ProfileComment;

    .line 181
    .local v16, profileComment:Lcom/lge/sns/profile/ProfileComment;
    if-eqz v16, :cond_ad

    .line 182
    invoke-virtual/range {v16 .. v16}, Lcom/lge/sns/profile/ProfileComment;->getDisplayName()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_ae

    invoke-virtual/range {v16 .. v16}, Lcom/lge/sns/profile/ProfileComment;->getDisplayName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_ae

    .line 183
    invoke-virtual/range {v16 .. v16}, Lcom/lge/sns/profile/ProfileComment;->getDisplayName()Ljava/lang/String;

    move-result-object v21

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_8a
    :goto_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    move-object/from16 v21, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/sns/profile/ProfileComment;->getPublished()Ljava/util/Date;

    move-result-object v22

    new-instance v23, Ljava/util/Date;

    invoke-direct/range {v23 .. v23}, Ljava/util/Date;-><init>()V

    invoke-static/range {v21 .. v23}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual/range {v16 .. v16}, Lcom/lge/sns/profile/ProfileComment;->getComment()Ljava/lang/String;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .end local v7           #date:Landroid/widget/TextView;
    .end local v11           #message:Landroid/widget/TextView;
    .end local v13           #name:Landroid/widget/TextView;
    .end local v16           #profileComment:Lcom/lge/sns/profile/ProfileComment;
    .end local p2
    :cond_ad
    :goto_ad
    return-object v20

    .line 184
    .restart local v7       #date:Landroid/widget/TextView;
    .restart local v11       #message:Landroid/widget/TextView;
    .restart local v13       #name:Landroid/widget/TextView;
    .restart local v16       #profileComment:Lcom/lge/sns/profile/ProfileComment;
    .restart local p2
    :cond_ae
    invoke-virtual/range {v16 .. v16}, Lcom/lge/sns/profile/ProfileComment;->getUserName()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_8a

    .line 185
    invoke-virtual/range {v16 .. v16}, Lcom/lge/sns/profile/ProfileComment;->getUserName()Ljava/lang/String;

    move-result-object v21

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_be} :catch_bf

    goto :goto_8a

    .line 190
    .end local v16           #profileComment:Lcom/lge/sns/profile/ProfileComment;
    :catch_bf
    move-exception v21

    move-object/from16 v19, v21

    .line 191
    .local v19, t:Ljava/lang/Throwable;
    const-string v21, "ProfileView"

    const-string v22, "ProfileComment ERROR"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ad

    .line 195
    .end local v7           #date:Landroid/widget/TextView;
    .end local v11           #message:Landroid/widget/TextView;
    .end local v13           #name:Landroid/widget/TextView;
    .end local v19           #t:Ljava/lang/Throwable;
    :cond_d0
    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$100()Ljava/util/Map;

    move-result-object v21

    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$600()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_197

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/sns/profile/ui/ProfileView;->access$700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/view/LayoutInflater;

    move-result-object v21

    const v22, 0x7f03003d

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p5

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 197
    const v21, 0x7f0800b9

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 199
    .local v15, photoLayout:Landroid/view/ViewGroup;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/sns/profile/ui/ProfileView;->access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move v0, v9

    move/from16 v1, v21

    if-ge v0, v1, :cond_141

    .line 200
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lge/sns/media/MediaFile;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->createPhotoView(Landroid/view/View;Lcom/lge/sns/media/MediaFile;)Landroid/view/View;

    move-result-object v5

    .line 201
    .local v5, child:Landroid/view/View;
    const/16 v21, 0x0

    move-object v0, v15

    move-object v1, v5

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 199
    add-int/lit8 v9, v9, 0x1

    goto :goto_10d

    .line 204
    .end local v5           #child:Landroid/view/View;
    :cond_141
    const v21, 0x7f0800ba

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 205
    .local v12, morePic:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/sns/profile/ui/ProfileView;->access$800(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Lcom/lge/sns/media/IMediaFacade;->getMediaFileCountByUser(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 206
    .local v6, count:I
    if-lez v6, :cond_18d

    .line 207
    const/16 v21, 0x0

    move-object v0, v12

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    new-instance v21, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter$1;-><init>(Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;)V

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_ad

    .line 226
    :cond_18d
    const/16 v21, 0x8

    move-object v0, v12

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_ad

    .line 229
    .end local v6           #count:I
    .end local v9           #i:I
    .end local v12           #morePic:Landroid/view/View;
    .end local v15           #photoLayout:Landroid/view/ViewGroup;
    :cond_197
    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$100()Ljava/util/Map;

    move-result-object v21

    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$300()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_ad

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v8

    .line 232
    .local v8, getedProfile:Lcom/lge/sns/profile/Profile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/sns/profile/ui/ProfileView;->access$700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/view/LayoutInflater;

    move-result-object v21

    const v22, 0x7f03003e

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p5

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 233
    const v21, 0x7f0800a5

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 234
    .local v10, infoLayout:Landroid/view/ViewGroup;
    const v21, 0x7f08009e

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 235
    .local v4, avartarView:Landroid/widget/ImageView;
    const v21, 0x7f08009f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 237
    .local v18, statusCommentView:Landroid/widget/TextView;
    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$900()Lcom/lge/sns/SnsManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v17

    .line 238
    .local v17, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    invoke-virtual {v8}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v8}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/lge/sns/profile/IProfileFacade;->getProfileAvatarBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 240
    .local v14, photo:Landroid/graphics/Bitmap;
    if-eqz v14, :cond_268

    .line 241
    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 247
    :goto_214
    invoke-virtual {v8}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_224

    invoke-virtual {v8}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_272

    .line 248
    :cond_224
    const v21, 0x7f0500a3

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 253
    :goto_22e
    const/16 v21, 0x1

    move-object v0, v10

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/sns/profile/ui/ProfileView;->access$1000(Lcom/lge/sns/profile/ui/ProfileView;)Z

    move-result v21

    if-eqz v21, :cond_254

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView;->statusLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v21, v0

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 257
    :cond_254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ProfileView;->StatusOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_ad

    .line 244
    :cond_268
    const v21, 0x7f020091

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_214

    .line 250
    :cond_272
    invoke-virtual {v8}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22e
.end method

.method public getChildrenCount(I)I
    .registers 5
    .parameter "groupPosition"

    .prologue
    const/4 v2, 0x1

    .line 154
    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_20

    .line 155
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$200(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 159
    .end local p0
    :goto_1f
    return v0

    .line 156
    .restart local p0
    :cond_20
    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_36

    move v0, v2

    .line 157
    goto :goto_1f

    :cond_36
    move v0, v2

    .line 159
    goto :goto_1f
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 5
    .parameter "groupPosition"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$1100()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/ProfileView;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 269
    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$1100()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 274
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 282
    const v1, 0x7f0800b8

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 284
    .local v0, labelView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$1100()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/profile/ui/ProfileView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    return-object p3
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public profileUpdate()V
    .registers 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->notifyDataSetChanged()V

    .line 347
    return-void
.end method

.method public removeMediaFile(Lcom/lge/sns/media/MediaFile;)V
    .registers 3
    .parameter "mediaItem"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 335
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$1400(Lcom/lge/sns/profile/ui/ProfileView;)V

    .line 337
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->notifyDataSetChanged()V

    .line 338
    return-void
.end method

.method public removeProfileComment(Lcom/lge/sns/profile/ProfileComment;)V
    .registers 3
    .parameter "commentItem"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$200(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method public updateMediaFile(Lcom/lge/sns/media/MediaFile;I)V
    .registers 4
    .parameter "updateMediaItem"
    .parameter "location"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->notifyDataSetChanged()V

    .line 343
    return-void
.end method
