.class Lcom/lge/sns/media/ui/PhotoGrideViewActivity$1;
.super Ljava/lang/Object;
.source "PhotoGrideViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$1;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$000(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)V

    .line 111
    return-void
.end method
