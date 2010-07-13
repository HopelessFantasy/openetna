.class Lcom/lge/newbay/client/impl/Message$2;
.super Ljava/lang/Thread;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/newbay/client/impl/Message;->getMessage(Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/newbay/client/impl/Message;

.field final synthetic val$cb:Lcom/lge/newbay/client/IMessage$MessageCallback;

.field final synthetic val$entries:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lge/newbay/client/impl/Message;Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/lge/newbay/client/impl/Message$2;->this$0:Lcom/lge/newbay/client/impl/Message;

    iput-object p2, p0, Lcom/lge/newbay/client/impl/Message$2;->val$entries:Ljava/util/List;

    iput-object p3, p0, Lcom/lge/newbay/client/impl/Message$2;->val$cb:Lcom/lge/newbay/client/IMessage$MessageCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 567
    iget-object v0, p0, Lcom/lge/newbay/client/impl/Message$2;->this$0:Lcom/lge/newbay/client/impl/Message;

    iget-object v1, p0, Lcom/lge/newbay/client/impl/Message$2;->val$entries:Ljava/util/List;

    iget-object v2, p0, Lcom/lge/newbay/client/impl/Message$2;->val$cb:Lcom/lge/newbay/client/IMessage$MessageCallback;

    invoke-static {v0, v1, v2}, Lcom/lge/newbay/client/impl/Message;->access$000(Lcom/lge/newbay/client/impl/Message;Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)Z

    .line 568
    iget-object v0, p0, Lcom/lge/newbay/client/impl/Message$2;->val$cb:Lcom/lge/newbay/client/IMessage$MessageCallback;

    invoke-interface {v0}, Lcom/lge/newbay/client/IMessage$MessageCallback;->notifyMessageFinished()V

    .line 569
    return-void
.end method
