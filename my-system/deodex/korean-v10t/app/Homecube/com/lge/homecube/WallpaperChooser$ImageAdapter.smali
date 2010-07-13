.class Lcom/lge/homecube/WallpaperChooser$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/WallpaperChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/lge/homecube/WallpaperChooser;


# direct methods
.method constructor <init>(Lcom/lge/homecube/WallpaperChooser;Lcom/lge/homecube/WallpaperChooser;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/lge/homecube/WallpaperChooser$ImageAdapter;->this$0:Lcom/lge/homecube/WallpaperChooser;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 190
    invoke-virtual {p2}, Lcom/lge/homecube/WallpaperChooser;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/homecube/WallpaperChooser$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 191
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/homecube/WallpaperChooser$ImageAdapter;->this$0:Lcom/lge/homecube/WallpaperChooser;

    invoke-static {v0}, Lcom/lge/homecube/WallpaperChooser;->access$000(Lcom/lge/homecube/WallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 202
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 208
    if-nez p2, :cond_2a

    .line 209
    iget-object v2, p0, Lcom/lge/homecube/WallpaperChooser$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 214
    .local v1, image:Landroid/widget/ImageView;
    :goto_e
    iget-object v2, p0, Lcom/lge/homecube/WallpaperChooser$ImageAdapter;->this$0:Lcom/lge/homecube/WallpaperChooser;

    invoke-static {v2}, Lcom/lge/homecube/WallpaperChooser;->access$000(Lcom/lge/homecube/WallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 216
    return-object v1

    .line 211
    .end local v1           #image:Landroid/widget/ImageView;
    .restart local p0
    :cond_2a
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .restart local v1       #image:Landroid/widget/ImageView;
    goto :goto_e
.end method
