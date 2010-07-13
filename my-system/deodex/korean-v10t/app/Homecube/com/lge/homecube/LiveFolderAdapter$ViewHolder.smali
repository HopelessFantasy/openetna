.class Lcom/lge/homecube/LiveFolderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LiveFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/LiveFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field descriptionIndex:I

.field icon:Landroid/widget/ImageView;

.field iconBitmapIndex:I

.field iconPackageIndex:I

.field iconResourceIndex:I

.field id:J

.field idIndex:I

.field intent:Landroid/content/Intent;

.field intentIndex:I

.field name:Landroid/widget/TextView;

.field nameIndex:I

.field useBaseIntent:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput v0, p0, Lcom/lge/homecube/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    .line 204
    iput v0, p0, Lcom/lge/homecube/LiveFolderAdapter$ViewHolder;->intentIndex:I

    .line 205
    iput v0, p0, Lcom/lge/homecube/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    .line 206
    iput v0, p0, Lcom/lge/homecube/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    .line 207
    iput v0, p0, Lcom/lge/homecube/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    return-void
.end method
