.class Lcom/lge/sns/message/ui/twitter/TwitterMessageList$8;
.super Ljava/lang/Object;
.source "TwitterMessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/twitter/TwitterMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)V
    .registers 2
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$8;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$8;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    const v1, 0x7f05000d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1147
    return-void
.end method
