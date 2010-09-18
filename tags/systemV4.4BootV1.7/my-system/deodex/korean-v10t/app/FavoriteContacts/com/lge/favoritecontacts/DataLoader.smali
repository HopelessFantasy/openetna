.class public Lcom/lge/favoritecontacts/DataLoader;
.super Ljava/lang/Object;
.source "DataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;
    }
.end annotation


# static fields
.field static final CONTACT_PROJECTION:[Ljava/lang/String; = null

.field static final DRMPHOTO_COLUMN_INDEX:I = 0x3

.field static final ID_COLUMN_INDEX:I = 0x0

.field static final NAME_COLUMN_INDEX:I = 0x1

.field static final PHOTO_COLUMN_INDEX:I = 0x2

.field private static final m_LoadSema:Ljava/util/concurrent/Semaphore;


# instance fields
.field private m_DataLoadTherad:Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "photo_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "drmphoto_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/favoritecontacts/DataLoader;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/lge/favoritecontacts/DataLoader;->m_LoadSema:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V
    .registers 3
    .parameter "FC"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    invoke-direct {v0, p0, p1}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;-><init>(Lcom/lge/favoritecontacts/DataLoader;Lcom/lge/favoritecontacts/FavoriteContacts;)V

    iput-object v0, p0, Lcom/lge/favoritecontacts/DataLoader;->m_DataLoadTherad:Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/Semaphore;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/lge/favoritecontacts/DataLoader;->m_LoadSema:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/favoritecontacts/DataLoader;)Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader;->m_DataLoadTherad:Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    return-object v0
.end method


# virtual methods
.method public final addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader;->m_DataLoadTherad:Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    invoke-virtual {v0, p1}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->addLoadList(Lcom/lge/render/FCPhotoItem;)V

    .line 63
    return-void
.end method

.method public final addDispLoadingEvent(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/render/FCPhotoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, cl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/render/FCPhotoItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 68
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_15

    .line 69
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/render/FCPhotoItem;

    .line 70
    .local v0, c:Lcom/lge/render/FCPhotoItem;
    iget-object v3, p0, Lcom/lge/favoritecontacts/DataLoader;->m_DataLoadTherad:Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    invoke-virtual {v3, v0}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->addLoadList(Lcom/lge/render/FCPhotoItem;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 74
    .end local v0           #c:Lcom/lge/render/FCPhotoItem;
    :cond_15
    return-void
.end method

.method public destroyDataLoader()V
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader;->m_DataLoadTherad:Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->ThreadDone()V

    .line 46
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader;->m_DataLoadTherad:Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->startLoad()V

    .line 57
    const-string v0, "DataLoader"

    const-string v1, " ====  DataLoader Destroy ==== "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public final flushLoadingEvent()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader;->m_DataLoadTherad:Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->flushLoadList()V

    .line 78
    return-void
.end method

.method public final getLoadList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/render/FCPhotoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader;->m_DataLoadTherad:Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->getLoadList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final pauseLoad()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader;->m_DataLoadTherad:Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->onPause()V

    .line 90
    return-void
.end method

.method public final removeLoadItem(Lcom/lge/render/FCPhotoItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader;->m_DataLoadTherad:Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->getLoadList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public final resumeLoad()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader;->m_DataLoadTherad:Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->onResume()V

    .line 95
    return-void
.end method

.method public final startLoad()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader;->m_DataLoadTherad:Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->startLoad()V

    .line 86
    return-void
.end method
