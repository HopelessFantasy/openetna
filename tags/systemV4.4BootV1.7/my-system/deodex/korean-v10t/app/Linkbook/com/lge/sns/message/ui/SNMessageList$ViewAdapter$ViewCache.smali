.class Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter$ViewCache;
.super Ljava/lang/Object;
.source "SNMessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCache"
.end annotation


# instance fields
.field public addIconView:Landroid/widget/ImageView;

.field public dataView:Landroid/widget/TextView;

.field public dateView:Landroid/widget/TextView;

.field entry:Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;

.field public lineView:Landroid/widget/TextView;

.field public newIconView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
