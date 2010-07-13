.class final Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;
.super Lcom/android/contacts/GroupEntryAdapter;
.source "GroupsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/GroupsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupItemListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/GroupEntryAdapter",
        "<",
        "Lcom/android/contacts/GroupsListActivity$ViewEntry;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDisplayPhotos:Z

.field private mLoading:Z

.field private mUnknownNameText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/contacts/GroupsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/GroupsListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/GroupsListActivity$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1221
    .local p3, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/GroupsListActivity$ViewEntry;>;"
    iput-object p1, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->this$0:Lcom/android/contacts/GroupsListActivity;

    .line 1222
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/GroupEntryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mLoading:Z

    .line 1180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mDisplayPhotos:Z

    .line 1181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    .line 1223
    const v0, 0x104000e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 1224
    return-void
.end method


# virtual methods
.method protected bridge synthetic bindView(Landroid/view/View;ILcom/android/contacts/GroupEntryAdapter$Entry;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1176
    check-cast p3, Lcom/android/contacts/GroupsListActivity$ViewEntry;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->bindView(Landroid/view/View;ILcom/android/contacts/GroupsListActivity$ViewEntry;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILcom/android/contacts/GroupsListActivity$ViewEntry;)V
    .registers 12
    .parameter "view"
    .parameter "position"
    .parameter "entry"

    .prologue
    .line 1269
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;

    .line 1271
    .local v0, cache:Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;
    iget-object v1, p3, Lcom/android/contacts/GroupsListActivity$ViewEntry;->dispName:Ljava/lang/String;

    .line 1272
    .local v1, name:Ljava/lang/String;
    iget-object v4, v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;->groupMemberView:Landroid/widget/TextView;

    if-eqz v4, :cond_30

    .line 1273
    iget-object v4, v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;->groupMemberView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p3, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numOfMember:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    :cond_30
    if-eqz v1, :cond_65

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_65

    .line 1276
    iget-object v4, v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;->nameView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    :goto_3d
    iget-boolean v4, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mDisplayPhotos:Z

    if-eqz v4, :cond_64

    .line 1282
    const/4 v2, 0x0

    .line 1284
    .local v2, photo:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 1285
    .local v3, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v3, :cond_52

    .line 1286
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #photo:Landroid/graphics/Bitmap;
    check-cast v2, Landroid/graphics/Bitmap;

    .line 1288
    .restart local v2       #photo:Landroid/graphics/Bitmap;
    :cond_52
    if-nez v2, :cond_5d

    iget-boolean v4, p3, Lcom/android/contacts/GroupsListActivity$ViewEntry;->hasPhoto:Z

    if-eqz v4, :cond_5d

    .line 1289
    iget v4, p3, Lcom/android/contacts/GroupsListActivity$ViewEntry;->kind:I

    packed-switch v4, :pswitch_data_c8

    .line 1305
    :cond_5d
    :goto_5d
    if-eqz v2, :cond_95

    .line 1306
    iget-object v4, v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1329
    .end local v2           #photo:Landroid/graphics/Bitmap;
    .end local v3           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_64
    :goto_64
    return-void

    .line 1278
    :cond_65
    iget-object v4, v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;->nameView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3d

    .line 1291
    .restart local v2       #photo:Landroid/graphics/Bitmap;
    .restart local v3       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :pswitch_6d
    iget-object v4, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->this$0:Lcom/android/contacts/GroupsListActivity;

    iget-object v5, p3, Lcom/android/contacts/GroupsListActivity$ViewEntry;->uri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Contacts$Groups;->loadGroupPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1293
    iget-object v4, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5d

    .line 1297
    :pswitch_82
    iget-object v4, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->this$0:Lcom/android/contacts/GroupsListActivity;

    iget-wide v5, p3, Lcom/android/contacts/GroupsListActivity$ViewEntry;->id:J

    invoke-static {v4, v5, v6}, Lcom/android/contacts/LinkbookAsyncHelper;->getAccountIcon(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1299
    iget-object v4, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5d

    .line 1308
    :cond_95
    iget v4, p3, Lcom/android/contacts/GroupsListActivity$ViewEntry;->kind:I

    packed-switch v4, :pswitch_data_d0

    .line 1324
    iget-object v4, v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;->photoView:Landroid/widget/ImageView;

    const v5, 0x7f0200b8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_64

    .line 1310
    :pswitch_a3
    iget-object v4, v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;->photoView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/contacts/GroupsListActivity;->access$1300()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_64

    .line 1314
    :pswitch_ad
    iget-object v4, v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;->photoView:Landroid/widget/ImageView;

    const v5, 0x7f0200d5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_64

    .line 1318
    :pswitch_b6
    iget-object v4, v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;->photoView:Landroid/widget/ImageView;

    const v5, 0x7f0200ba

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_64

    .line 1321
    :pswitch_bf
    iget-object v4, v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;->photoView:Landroid/widget/ImageView;

    const v5, 0x7f0200b7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_64

    .line 1289
    :pswitch_data_c8
    .packed-switch 0x4
        :pswitch_6d
        :pswitch_82
    .end packed-switch

    .line 1308
    :pswitch_data_d0
    .packed-switch 0x2
        :pswitch_bf
        :pswitch_b6
        :pswitch_a3
        :pswitch_ad
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 1218
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->clearBitmapCache()V

    .line 1219
    return-void
.end method

.method public clearBitmapCache()V
    .registers 2

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    if-eqz v0, :cond_9

    .line 1345
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1347
    :cond_9
    return-void
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1332
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1336
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1340
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1228
    invoke-virtual {p0, p1}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->getItem(I)Lcom/android/contacts/GroupEntryAdapter$Entry;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/GroupsListActivity$ViewEntry;

    .line 1233
    .local v1, entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    if-eqz p2, :cond_16

    .line 1234
    move-object v2, p2

    .line 1235
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;

    .line 1244
    .local v0, cache:Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;
    :goto_f
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1245
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->bindView(Landroid/view/View;ILcom/android/contacts/GroupsListActivity$ViewEntry;)V

    .line 1246
    return-object v2

    .line 1237
    .end local v0           #cache:Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;
    .end local v2           #view:Landroid/view/View;
    :cond_16
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1239
    .restart local v2       #view:Landroid/view/View;
    new-instance v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;

    invoke-direct {v0}, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;-><init>()V

    .line 1240
    .restart local v0       #cache:Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;
    const v3, 0x7f05003f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;->nameView:Landroid/widget/TextView;

    .line 1241
    const v3, 0x7f050008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;->groupMemberView:Landroid/widget/TextView;

    .line 1242
    const v3, 0x7f050012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;->photoView:Landroid/widget/ImageView;

    goto :goto_f
.end method

.method public isEmpty()Z
    .registers 4

    .prologue
    const/high16 v2, 0x1000

    const/4 v1, 0x0

    .line 1202
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0}, Lcom/android/contacts/GroupsListActivity;->access$700(Lcom/android/contacts/GroupsListActivity;)I

    move-result v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_e

    move v0, v1

    .line 1211
    :goto_d
    return v0

    .line 1207
    :cond_e
    iget-boolean v0, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mLoading:Z

    if-eqz v0, :cond_14

    move v0, v1

    .line 1209
    goto :goto_d

    .line 1211
    :cond_14
    invoke-super {p0}, Lcom/android/contacts/GroupEntryAdapter;->isEmpty()Z

    move-result v0

    goto :goto_d
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "parent"

    .prologue
    const/high16 v2, 0x2000

    const/4 v3, 0x0

    .line 1254
    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v1}, Lcom/android/contacts/GroupsListActivity;->access$700(Lcom/android/contacts/GroupsListActivity;)I

    move-result v1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_20

    .line 1255
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mDisplayPhotos:Z

    .line 1256
    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030022

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1257
    .local v0, view:Landroid/view/View;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    .line 1264
    :goto_1f
    return-object v0

    .line 1259
    .end local v0           #view:Landroid/view/View;
    :cond_20
    iput-boolean v3, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mDisplayPhotos:Z

    .line 1260
    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030020

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1261
    .restart local v0       #view:Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    goto :goto_1f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 1184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_28

    .line 1194
    :cond_7
    :goto_7
    return-void

    .line 1186
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1187
    .local v0, tagData:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1188
    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1189
    .local v1, telUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->this$0:Lcom/android/contacts/GroupsListActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/GroupsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 1184
    :pswitch_data_28
    .packed-switch 0x7f05000f
        :pswitch_8
    .end packed-switch
.end method

.method public setLoading(Z)V
    .registers 2
    .parameter "loading"

    .prologue
    .line 1197
    iput-boolean p1, p0, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->mLoading:Z

    .line 1198
    return-void
.end method
