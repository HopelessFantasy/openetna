.class Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "GearsSettingsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/GearsSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsAdapter"
.end annotation


# instance fields
.field private MAX_ROW_HEIGHT:I

.field private mContext:Landroid/app/Activity;

.field private mCurrentPermissions:Ljava/util/Vector;

.field private mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

.field private mItems:Ljava/util/List;

.field final synthetic this$0:Lcom/android/browser/GearsSettingsDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/GearsSettingsDialog;Landroid/app/Activity;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "items"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 228
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->MAX_ROW_HEIGHT:I

    .line 231
    iput-object p2, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mContext:Landroid/app/Activity;

    .line 232
    iput-object p3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mItems:Ljava/util/List;

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    .line 234
    return-void
.end method

.method private shortName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "url"

    .prologue
    .line 254
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 255
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_d
    return-object v0

    .line 257
    :cond_e
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 258
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_1d
    move-object v0, p1

    .line 260
    goto :goto_d
.end method


# virtual methods
.method public backButtonPressed()Z
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    if-eqz v0, :cond_11

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    .line 383
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    invoke-static {v0}, Lcom/android/browser/GearsSettingsDialog;->access$300(Lcom/android/browser/GearsSettingsDialog;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->notifyDataSetChanged()V

    .line 385
    const/4 v0, 0x1

    .line 387
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    if-nez v1, :cond_10

    .line 238
    iget-object v1, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 239
    .local v0, size:I
    if-nez v0, :cond_e

    .line 240
    const/4 v1, 0x1

    .line 245
    .end local v0           #size:I
    :goto_d
    return v1

    .restart local v0       #size:I
    :cond_e
    move v1, v0

    .line 242
    goto :goto_d

    .line 245
    .end local v0           #size:I
    :cond_10
    iget-object v1, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentPermissions:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    if-nez v0, :cond_15

    .line 265
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 266
    const/4 v0, 0x0

    .line 271
    :goto_d
    return-object v0

    .line 268
    :cond_e
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    .line 271
    :cond_15
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentPermissions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 249
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 275
    move-object v6, p2

    .line 276
    .local v6, row:Landroid/view/View;
    if-nez v6, :cond_15

    .line 277
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Lcom/android/browser/GearsSettingsDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 279
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030011

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 281
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_15
    iget v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->MAX_ROW_HEIGHT:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setMinimumHeight(I)V

    .line 283
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    if-nez v8, :cond_8b

    .line 284
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_52

    .line 285
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0001

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->hideView(Landroid/view/View;I)V

    .line 286
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0046

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->hideView(Landroid/view/View;I)V

    .line 287
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0048

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->hideView(Landroid/view/View;I)V

    .line 288
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c002b

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->hideView(Landroid/view/View;I)V

    .line 289
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0047

    const v10, 0x7f0700f1

    invoke-virtual {v8, v6, v9, v10}, Lcom/android/browser/GearsSettingsDialog;->setText(Landroid/view/View;II)V

    .line 329
    :cond_51
    :goto_51
    return-object v6

    .line 291
    :cond_52
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0046

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->hideView(Landroid/view/View;I)V

    .line 292
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0047

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->hideView(Landroid/view/View;I)V

    .line 293
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0048

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->hideView(Landroid/view/View;I)V

    .line 294
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/GearsPermissions$OriginPermissions;

    .line 295
    .local v5, perms:Lcom/android/browser/GearsPermissions$OriginPermissions;
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0001

    invoke-virtual {v5}, Lcom/android/browser/GearsPermissions$OriginPermissions;->getOrigin()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->shortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6, v9, v10}, Lcom/android/browser/GearsSettingsDialog;->setText(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 296
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c002b

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->showView(Landroid/view/View;I)V

    goto :goto_51

    .line 299
    .end local v5           #perms:Lcom/android/browser/GearsPermissions$OriginPermissions;
    :cond_8b
    invoke-virtual {p0}, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ne p1, v8, :cond_bf

    .line 301
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0046

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->hideView(Landroid/view/View;I)V

    .line 302
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0047

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->hideView(Landroid/view/View;I)V

    .line 303
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0048

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->hideView(Landroid/view/View;I)V

    .line 304
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c002b

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->hideView(Landroid/view/View;I)V

    .line 305
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0001

    const v10, 0x7f0700f0

    invoke-virtual {v8, v6, v9, v10}, Lcom/android/browser/GearsSettingsDialog;->setText(Landroid/view/View;II)V

    goto :goto_51

    .line 307
    :cond_bf
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0047

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->hideView(Landroid/view/View;I)V

    .line 308
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c002b

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->hideView(Landroid/view/View;I)V

    .line 309
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0048

    invoke-virtual {v8, v6, v9}, Lcom/android/browser/GearsSettingsDialog;->showView(Landroid/view/View;I)V

    .line 311
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentPermissions:Ljava/util/Vector;

    invoke-virtual {v8, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/browser/GearsPermissions$PermissionType;

    .line 313
    .local v7, type:Lcom/android/browser/GearsPermissions$PermissionType;
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0001

    invoke-virtual {v7}, Lcom/android/browser/GearsPermissions$PermissionType;->getTitleRsc()I

    move-result v10

    invoke-virtual {v8, v6, v9, v10}, Lcom/android/browser/GearsSettingsDialog;->setText(Landroid/view/View;II)V

    .line 315
    const v8, 0x7f0c0048

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 316
    .local v2, checkboxView:Landroid/view/View;
    if-eqz v2, :cond_51

    .line 317
    move-object v0, v2

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 318
    .local v1, checkbox:Landroid/widget/CheckBox;
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    invoke-virtual {v8, v7}, Lcom/android/browser/GearsPermissions$OriginPermissions;->getPermission(Lcom/android/browser/GearsPermissions$PermissionType;)I

    move-result v4

    .line 319
    .local v4, perm:I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_113

    .line 320
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0046

    invoke-virtual {v7}, Lcom/android/browser/GearsPermissions$PermissionType;->getSubtitleOffRsc()I

    move-result v10

    invoke-virtual {v8, v6, v9, v10}, Lcom/android/browser/GearsSettingsDialog;->setText(Landroid/view/View;II)V

    .line 321
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_51

    .line 323
    :cond_113
    iget-object v8, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    const v9, 0x7f0c0046

    invoke-virtual {v7}, Lcom/android/browser/GearsPermissions$PermissionType;->getSubtitleOnRsc()I

    move-result v10

    invoke-virtual {v8, v6, v9, v10}, Lcom/android/browser/GearsSettingsDialog;->setText(Landroid/view/View;II)V

    .line 324
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_51
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 347
    iget-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 378
    :goto_9
    return-void

    .line 350
    :cond_a
    iget-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    if-nez v3, :cond_5b

    .line 351
    iget-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/GearsPermissions$OriginPermissions;

    iput-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    .line 352
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentPermissions:Ljava/util/Vector;

    .line 353
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    iget-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    invoke-static {v3}, Lcom/android/browser/GearsSettingsDialog;->access$400(Lcom/android/browser/GearsSettingsDialog;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_48

    .line 354
    iget-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    invoke-static {v3}, Lcom/android/browser/GearsSettingsDialog;->access$400(Lcom/android/browser/GearsSettingsDialog;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/GearsPermissions$PermissionType;

    .line 355
    .local v2, type:Lcom/android/browser/GearsPermissions$PermissionType;
    iget-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    invoke-virtual {v3, v2}, Lcom/android/browser/GearsPermissions$OriginPermissions;->getPermission(Lcom/android/browser/GearsPermissions$PermissionType;)I

    move-result v1

    .line 356
    .local v1, perm:I
    if-eqz v1, :cond_45

    .line 357
    iget-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentPermissions:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 360
    .end local v1           #perm:I
    .end local v2           #type:Lcom/android/browser/GearsPermissions$PermissionType;
    :cond_48
    iget-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    invoke-virtual {v4}, Lcom/android/browser/GearsPermissions$OriginPermissions;->getOrigin()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->shortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 377
    .end local v0           #i:I
    :goto_57
    invoke-virtual {p0}, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->notifyDataSetChanged()V

    goto :goto_9

    .line 362
    :cond_5b
    invoke-virtual {p0}, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne p3, v3, :cond_6a

    .line 365
    iget-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    iget-object v3, v3, Lcom/android/browser/GearsSettingsDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_57

    .line 367
    :cond_6a
    iget-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentPermissions:Ljava/util/Vector;

    invoke-virtual {v3, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/GearsPermissions$PermissionType;

    .line 369
    .restart local v2       #type:Lcom/android/browser/GearsPermissions$PermissionType;
    iget-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    invoke-virtual {v3, v2}, Lcom/android/browser/GearsPermissions$OriginPermissions;->getPermission(Lcom/android/browser/GearsPermissions$PermissionType;)I

    move-result v3

    if-ne v3, v4, :cond_81

    .line 371
    iget-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/android/browser/GearsPermissions$OriginPermissions;->setPermission(Lcom/android/browser/GearsPermissions$PermissionType;I)V

    goto :goto_57

    .line 373
    :cond_81
    iget-object v3, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    invoke-virtual {v3, v2, v4}, Lcom/android/browser/GearsPermissions$OriginPermissions;->setPermission(Lcom/android/browser/GearsPermissions$PermissionType;I)V

    goto :goto_57
.end method

.method public removeCurrentSite()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    iget-object v1, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    invoke-static {v1}, Lcom/android/browser/GearsSettingsDialog;->access$000(Lcom/android/browser/GearsSettingsDialog;)Lcom/android/browser/GearsPermissions$PermissionType;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/GearsPermissions$OriginPermissions;->setPermission(Lcom/android/browser/GearsPermissions$PermissionType;I)V

    .line 335
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    iget-object v1, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    invoke-static {v1}, Lcom/android/browser/GearsSettingsDialog;->access$100(Lcom/android/browser/GearsSettingsDialog;)Lcom/android/browser/GearsPermissions$PermissionType;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/GearsPermissions$OriginPermissions;->setPermission(Lcom/android/browser/GearsPermissions$PermissionType;I)V

    .line 337
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    invoke-static {v0}, Lcom/android/browser/GearsSettingsDialog;->access$200(Lcom/android/browser/GearsSettingsDialog;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->mCurrentSite:Lcom/android/browser/GearsPermissions$OriginPermissions;

    .line 339
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->this$0:Lcom/android/browser/GearsSettingsDialog;

    invoke-static {v0}, Lcom/android/browser/GearsSettingsDialog;->access$300(Lcom/android/browser/GearsSettingsDialog;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->notifyDataSetChanged()V

    .line 341
    return-void
.end method
