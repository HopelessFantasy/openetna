.class Lcom/lge/sns/message/ui/SNMessageView$11;
.super Ljava/lang/Object;
.source "SNMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/SNMessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/SNMessageView;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/SNMessageView;)V
    .registers 2
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageView$11;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 816
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$11;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    const v1, 0x7f05000d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 817
    return-void
.end method
