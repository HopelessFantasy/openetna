.class Lcom/lge/sns/message/ui/twitter/TwitterMessageList$7;
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
    .line 1137
    iput-object p1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$7;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$7;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1402(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1139
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1140
    return-void
.end method
