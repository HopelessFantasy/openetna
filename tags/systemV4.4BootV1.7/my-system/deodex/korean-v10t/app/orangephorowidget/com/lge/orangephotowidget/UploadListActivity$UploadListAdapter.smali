.class Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;
.super Landroid/widget/BaseAdapter;
.source "UploadListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/orangephotowidget/UploadListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mIcon0:Landroid/graphics/Bitmap;

.field private mIcon1:Landroid/graphics/Bitmap;

.field private mIcon2:Landroid/graphics/Bitmap;

.field private mIcon3:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020025

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;->mIcon0:Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020026

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;->mIcon1:Landroid/graphics/Bitmap;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020023

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;->mIcon2:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020024

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;->mIcon3:Landroid/graphics/Bitmap;

    .line 68
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 77
    invoke-static {}, Lcom/lge/orangephotowidget/UploadListActivity;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 98
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 115
    if-nez p2, :cond_37

    .line 116
    iget-object v1, p0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 120
    new-instance v0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;-><init>()V

    .line 121
    .local v0, holder:Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;
    const v1, 0x7f070001

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 122
    const/high16 v1, 0x7f07

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 124
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    :goto_28
    iget-object v1, v0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {}, Lcom/lge/orangephotowidget/UploadListActivity;->access$000()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    packed-switch p1, :pswitch_data_5e

    .line 154
    :goto_36
    return-object p2

    .line 128
    .end local v0           #holder:Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;
    :cond_37
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;
    goto :goto_28

    .line 137
    :pswitch_3e
    iget-object v1, v0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;->mIcon0:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_36

    .line 141
    :pswitch_46
    iget-object v1, v0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;->mIcon1:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_36

    .line 145
    :pswitch_4e
    iget-object v1, v0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;->mIcon2:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_36

    .line 149
    :pswitch_56
    iget-object v1, v0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;->mIcon3:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_36

    .line 134
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_46
        :pswitch_4e
        :pswitch_56
    .end packed-switch
.end method
