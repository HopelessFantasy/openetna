.class Lcom/lge/sns/media/linkbook/MediaFacade$5;
.super Ljava/lang/Object;
.source "MediaFacade.java"

# interfaces
.implements Lcom/lge/newbay/client/IMedia$FileDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/linkbook/MediaFacade;->getOrignalMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaDecoder;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

.field final synthetic val$decoder:Lcom/lge/sns/media/IMediaFacade$MediaDecoder;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/linkbook/MediaFacade;Lcom/lge/sns/media/IMediaFacade$MediaDecoder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1955
    iput-object p1, p0, Lcom/lge/sns/media/linkbook/MediaFacade$5;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iput-object p2, p0, Lcom/lge/sns/media/linkbook/MediaFacade$5;->val$decoder:Lcom/lge/sns/media/IMediaFacade$MediaDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeFromStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .parameter "is"

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade$5;->val$decoder:Lcom/lge/sns/media/IMediaFacade$MediaDecoder;

    invoke-interface {v0, p1}, Lcom/lge/sns/media/IMediaFacade$MediaDecoder;->decodeStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
