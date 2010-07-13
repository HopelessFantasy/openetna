.class Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaFolderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/media/ui/MediaFolderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaFolderListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/sns/media/MediaFolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field mTextViewResourceId:I

.field final synthetic this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;


# direct methods
.method public constructor <init>(Lcom/lge/sns/media/ui/MediaFolderListActivity;Landroid/content/Context;ILjava/util/List;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFolder;>;"
    iput-object p1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    .line 407
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 408
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 409
    iput p3, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->mTextViewResourceId:I

    .line 410
    return-void
.end method


# virtual methods
.method public createPhotoView(Lcom/lge/sns/media/MediaFile;)Landroid/view/View;
    .registers 7
    .parameter "f"

    .prologue
    const/16 v4, 0x40

    const/4 v3, 0x1

    .line 450
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 451
    .local v0, image:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    invoke-static {v2}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->access$500(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/sns/media/IMediaFacade;->getThumbnailBitmap(Lcom/lge/sns/media/MediaFile;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 452
    .local v1, photo:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3c

    .line 453
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 457
    :goto_1b
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 458
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 460
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 461
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 462
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 464
    return-object v0

    .line 455
    :cond_3c
    const v2, 0x7f02005f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1b
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 23
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 414
    if-nez p2, :cond_79

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->mTextViewResourceId:I

    move v15, v0

    const/16 v16, 0x0

    move-object v0, v14

    move v1, v15

    move-object/from16 v2, p3

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 420
    .local v13, view:Landroid/view/View;
    :goto_18
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/sns/media/MediaFolder;

    .line 421
    .local v7, folder:Lcom/lge/sns/media/MediaFolder;
    const v14, 0x7f08006b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 422
    .local v8, folderNameView:Landroid/widget/TextView;
    const v14, 0x7f08006d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 423
    .local v6, countView:Landroid/widget/TextView;
    const v14, 0x7f08006c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 425
    .local v10, imageGroup:Landroid/view/ViewGroup;
    invoke-virtual {v7}, Lcom/lge/sns/media/MediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 427
    .local v4, cc:I
    if-lez v4, :cond_49

    .line 428
    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 431
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->access$200(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v7}, Lcom/lge/sns/media/MediaFolder;->getFolderId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 432
    .local v12, photos:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    if-eqz v12, :cond_7c

    .line 433
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_62
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/sns/media/MediaFile;

    .line 434
    .local v11, photo:Lcom/lge/sns/media/MediaFile;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->createPhotoView(Lcom/lge/sns/media/MediaFile;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_62

    .line 417
    .end local v4           #cc:I
    .end local v6           #countView:Landroid/widget/TextView;
    .end local v7           #folder:Lcom/lge/sns/media/MediaFolder;
    .end local v8           #folderNameView:Landroid/widget/TextView;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #imageGroup:Landroid/view/ViewGroup;
    .end local v11           #photo:Lcom/lge/sns/media/MediaFile;
    .end local v12           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    .end local v13           #view:Landroid/view/View;
    :cond_79
    move-object/from16 v13, p2

    .restart local v13       #view:Landroid/view/View;
    goto :goto_18

    .line 438
    .restart local v4       #cc:I
    .restart local v6       #countView:Landroid/widget/TextView;
    .restart local v7       #folder:Lcom/lge/sns/media/MediaFolder;
    .restart local v8       #folderNameView:Landroid/widget/TextView;
    .restart local v10       #imageGroup:Landroid/view/ViewGroup;
    .restart local v12       #photos:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->access$500(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->access$300(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->access$400(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v7}, Lcom/lge/sns/media/MediaFolder;->getFolderId()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v14 .. v17}, Lcom/lge/sns/media/IMediaFacade;->getMediaFileCountByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 439
    .local v5, count:I
    const/4 v14, 0x3

    if-le v5, v14, :cond_ca

    .line 440
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f050097

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x3

    sub-int v18, v5, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :goto_c9
    return-object v13

    .line 443
    :cond_ca
    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c9
.end method
