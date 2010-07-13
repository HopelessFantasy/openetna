.class public Lcom/lge/newbay/client/Uris$MessageParam;
.super Lcom/lge/newbay/client/Uris$MessageThreadParam;
.source "Uris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/Uris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageParam"
.end annotation


# instance fields
.field messageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/lge/newbay/client/Uris$MessageThreadParam;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lge/newbay/client/Uris$MessageParam;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public setMessageId(Ljava/lang/String;)V
    .registers 2
    .parameter "messageId"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/lge/newbay/client/Uris$MessageParam;->messageId:Ljava/lang/String;

    .line 208
    return-void
.end method
