.class Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;
.super Ljava/lang/Object;
.source "MediaFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/media/linkbook/MediaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSynchronizeJob"
.end annotation


# instance fields
.field private folderIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private snsId:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/sns/media/linkbook/MediaFacade;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 5
    .parameter
    .parameter "snsId"
    .parameter "userId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p4, folderIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->snsId:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->userId:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->folderIdSet:Ljava/util/HashSet;

    .line 153
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 141
    instance-of v2, p1, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;

    if-eqz v2, :cond_20

    .line 142
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;

    move-object v1, v0

    .line 143
    .local v1, job:Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;
    iget-object v2, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->snsId:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->snsId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->userId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    .line 145
    .end local v1           #job:Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;
    :goto_1d
    return v2

    .line 143
    .restart local v1       #job:Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d

    .line 145
    .end local v1           #job:Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;
    :cond_20
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1d
.end method

.method public run()V
    .registers 9

    .prologue
    const-string v4, "MediaFacade"

    .line 114
    :try_start_2
    const-string v4, "MediaFacade"

    const-string v5, "MediaSynchronizeJob =============== <Start>"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->snsId:Ljava/lang/String;

    iget-object v6, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->userId:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->access$000(Lcom/lge/sns/media/linkbook/MediaFacade;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->folderIdSet:Ljava/util/HashSet;

    if-nez v4, :cond_40

    .line 120
    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->snsId:Ljava/lang/String;

    iget-object v6, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFolderList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 121
    .local v1, folderList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFolder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/sns/media/MediaFolder;

    .line 122
    .local v3, mediaFolder:Lcom/lge/sns/media/MediaFolder;
    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->snsId:Ljava/lang/String;

    iget-object v6, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->userId:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFolder;->getFolderId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/lge/sns/media/linkbook/MediaFacade;->access$100(Lcom/lge/sns/media/linkbook/MediaFacade;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 133
    .end local v1           #folderList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFolder;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mediaFolder:Lcom/lge/sns/media/MediaFolder;
    :catch_3e
    move-exception v4

    .line 138
    :goto_3f
    return-void

    .line 125
    :cond_40
    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->folderIdSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    .local v0, folderId:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->snsId:Ljava/lang/String;

    iget-object v6, p0, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;->userId:Ljava/lang/String;

    invoke-static {v4, v5, v6, v0}, Lcom/lge/sns/media/linkbook/MediaFacade;->access$100(Lcom/lge/sns/media/linkbook/MediaFacade;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 135
    .end local v0           #folderId:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_5c
    move-exception v4

    goto :goto_3f

    .line 131
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5e
    const-string v4, "MediaFacade"

    const-string v5, "MediaSynchronizeJob =============== <Finish>"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_2 .. :try_end_65} :catch_3e
    .catch Lcom/lge/sns/SnsException; {:try_start_2 .. :try_end_65} :catch_5c

    goto :goto_3f
.end method
