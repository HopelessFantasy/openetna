.class Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter$ViewCache;
.super Ljava/lang/Object;
.source "TwitterMessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCache"
.end annotation


# instance fields
.field public dataView:Landroid/widget/TextView;

.field public dateView:Landroid/widget/TextView;

.field entry:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

.field public lineView:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
