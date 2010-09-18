.class public Lcom/lge/newbay/client/Uris$MessageThreadParam;
.super Lcom/lge/newbay/client/Uris$SnsBasicParam;
.source "Uris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/Uris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageThreadParam"
.end annotation


# instance fields
.field threadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/lge/newbay/client/Uris$SnsBasicParam;-><init>()V

    return-void
.end method


# virtual methods
.method public getThreadId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lge/newbay/client/Uris$MessageThreadParam;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public setThreadId(Ljava/lang/String;)V
    .registers 2
    .parameter "threadId"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/lge/newbay/client/Uris$MessageThreadParam;->threadId:Ljava/lang/String;

    .line 182
    return-void
.end method
