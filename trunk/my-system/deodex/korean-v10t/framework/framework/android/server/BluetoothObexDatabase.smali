.class public Landroid/server/BluetoothObexDatabase;
.super Ljava/lang/Object;
.source "BluetoothObexDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothObexDatabase$TransferDbItem;,
        Landroid/server/BluetoothObexDatabase$SessionDbItem;,
        Landroid/server/BluetoothObexDatabase$TransferDirection;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothObexDatabase"


# instance fields
.field private mAddressIdx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/server/BluetoothObexDatabase$SessionDbItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFilenameIdx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/server/BluetoothObexDatabase$TransferDbItem;",
            ">;"
        }
    .end annotation
.end field

.field private mObjectNameIdx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/server/BluetoothObexDatabase$TransferDbItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionIdx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/server/BluetoothObexDatabase$SessionDbItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTransferIdx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/server/BluetoothObexDatabase$TransferDbItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothObexDatabase;->mFilenameIdx:Ljava/util/HashMap;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothObexDatabase;->mObjectNameIdx:Ljava/util/HashMap;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothObexDatabase;->mTransferIdx:Ljava/util/HashMap;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothObexDatabase;->mSessionIdx:Ljava/util/HashMap;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothObexDatabase;->mAddressIdx:Ljava/util/HashMap;

    .line 182
    return-void
.end method

.method private deleteItem(Landroid/server/BluetoothObexDatabase$SessionDbItem;)V
    .registers 5
    .parameter "dbItem"

    .prologue
    .line 235
    if-eqz p1, :cond_28

    .line 236
    iget-object v1, p0, Landroid/server/BluetoothObexDatabase;->mSessionIdx:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mSession:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Landroid/server/BluetoothObexDatabase;->mAddressIdx:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {p1}, Landroid/server/BluetoothObexDatabase$SessionDbItem;->access$000(Landroid/server/BluetoothObexDatabase$SessionDbItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 241
    .end local p0
    .local v0, i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothObexDatabase$TransferDbItem;>;"
    :goto_18
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 242
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mSession:Landroid/server/BluetoothObexDatabase$SessionDbItem;

    goto :goto_18

    .line 247
    .end local v0           #i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothObexDatabase$TransferDbItem;>;"
    :cond_28
    return-void
.end method

.method private deleteItem(Landroid/server/BluetoothObexDatabase$TransferDbItem;)V
    .registers 5
    .parameter "dbItem"

    .prologue
    .line 362
    if-eqz p1, :cond_2e

    .line 363
    iget-object v1, p0, Landroid/server/BluetoothObexDatabase;->mFilenameIdx:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Landroid/server/BluetoothObexDatabase;->mObjectNameIdx:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mObjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v1, p0, Landroid/server/BluetoothObexDatabase;->mTransferIdx:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mTransfer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v1, p1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mSession:Landroid/server/BluetoothObexDatabase$SessionDbItem;

    if-eqz v1, :cond_2e

    .line 369
    iget-object v1, p0, Landroid/server/BluetoothObexDatabase;->mSessionIdx:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mSession:Landroid/server/BluetoothObexDatabase$SessionDbItem;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothObexDatabase$SessionDbItem;

    .line 370
    .local v0, assocSession:Landroid/server/BluetoothObexDatabase$SessionDbItem;
    if-eqz v0, :cond_2e

    .line 371
    invoke-static {v0}, Landroid/server/BluetoothObexDatabase$SessionDbItem;->access$000(Landroid/server/BluetoothObexDatabase$SessionDbItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 375
    .end local v0           #assocSession:Landroid/server/BluetoothObexDatabase$SessionDbItem;
    :cond_2e
    return-void
.end method


# virtual methods
.method public deleteByAddress(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Landroid/server/BluetoothObexDatabase;->getByAddress(Ljava/lang/String;)Landroid/server/BluetoothObexDatabase$SessionDbItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothObexDatabase;->deleteItem(Landroid/server/BluetoothObexDatabase$SessionDbItem;)V

    .line 256
    return-void
.end method

.method public deleteByFilename(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/server/BluetoothObexDatabase;->getByFilename(Ljava/lang/String;)Landroid/server/BluetoothObexDatabase$TransferDbItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothObexDatabase;->deleteItem(Landroid/server/BluetoothObexDatabase$TransferDbItem;)V

    .line 384
    return-void
.end method

.method public getByAddress(Ljava/lang/String;)Landroid/server/BluetoothObexDatabase$SessionDbItem;
    .registers 3
    .parameter "address"

    .prologue
    .line 217
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase;->mAddressIdx:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/server/BluetoothObexDatabase$SessionDbItem;

    return-object p0
.end method

.method public getByFilename(Ljava/lang/String;)Landroid/server/BluetoothObexDatabase$TransferDbItem;
    .registers 3
    .parameter "filename"

    .prologue
    .line 309
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase;->mFilenameIdx:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;

    return-object p0
.end method

.method public getByObjectName(Ljava/lang/String;)Landroid/server/BluetoothObexDatabase$TransferDbItem;
    .registers 3
    .parameter "objectName"

    .prologue
    .line 320
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase;->mObjectNameIdx:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;

    return-object p0
.end method

.method public getBySession(Ljava/lang/String;)Landroid/server/BluetoothObexDatabase$SessionDbItem;
    .registers 3
    .parameter "session"

    .prologue
    .line 228
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase;->mSessionIdx:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/server/BluetoothObexDatabase$SessionDbItem;

    return-object p0
.end method

.method public getByTransfer(Ljava/lang/String;)Landroid/server/BluetoothObexDatabase$TransferDbItem;
    .registers 3
    .parameter "transfer"

    .prologue
    .line 331
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase;->mTransferIdx:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;

    return-object p0
.end method

.method public getTransferByAddress(Ljava/lang/String;)Landroid/server/BluetoothObexDatabase$TransferDbItem;
    .registers 6
    .parameter "address"

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, ret:Landroid/server/BluetoothObexDatabase$TransferDbItem;
    iget-object v2, p0, Landroid/server/BluetoothObexDatabase;->mAddressIdx:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothObexDatabase$SessionDbItem;

    .line 345
    .local v1, session:Landroid/server/BluetoothObexDatabase$SessionDbItem;
    if-eqz v1, :cond_20

    invoke-static {v1}, Landroid/server/BluetoothObexDatabase$SessionDbItem;->access$000(Landroid/server/BluetoothObexDatabase$SessionDbItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    .line 351
    invoke-static {v1}, Landroid/server/BluetoothObexDatabase$SessionDbItem;->access$000(Landroid/server/BluetoothObexDatabase$SessionDbItem;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ret:Landroid/server/BluetoothObexDatabase$TransferDbItem;
    check-cast v0, Landroid/server/BluetoothObexDatabase$TransferDbItem;

    .line 354
    .restart local v0       #ret:Landroid/server/BluetoothObexDatabase$TransferDbItem;
    :cond_20
    return-object v0
.end method

.method public insert(Landroid/server/BluetoothObexDatabase$SessionDbItem;)V
    .registers 5
    .parameter "item"

    .prologue
    .line 191
    iget-object v1, p1, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mSession:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 192
    iget-object v1, p0, Landroid/server/BluetoothObexDatabase;->mSessionIdx:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mSession:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_b
    iget-object v1, p1, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 196
    iget-object v1, p0, Landroid/server/BluetoothObexDatabase;->mAddressIdx:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_16
    invoke-static {p1}, Landroid/server/BluetoothObexDatabase$SessionDbItem;->access$000(Landroid/server/BluetoothObexDatabase$SessionDbItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 201
    .end local p0
    .local v0, i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothObexDatabase$TransferDbItem;>;"
    :goto_1e
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 202
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;

    iput-object p1, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mSession:Landroid/server/BluetoothObexDatabase$SessionDbItem;

    goto :goto_1e

    .line 207
    :cond_2d
    return-void
.end method

.method public insert(Landroid/server/BluetoothObexDatabase$TransferDbItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 283
    iget-object v0, p1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 284
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase;->mFilenameIdx:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_b
    iget-object v0, p1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mObjectName:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 288
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase;->mObjectNameIdx:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mObjectName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_16
    iget-object v0, p1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mTransfer:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 292
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase;->mTransferIdx:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mTransfer:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_21
    iget-object v0, p1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mSession:Landroid/server/BluetoothObexDatabase$SessionDbItem;

    if-eqz v0, :cond_2e

    .line 297
    iget-object v0, p1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mSession:Landroid/server/BluetoothObexDatabase$SessionDbItem;

    invoke-static {v0}, Landroid/server/BluetoothObexDatabase$SessionDbItem;->access$000(Landroid/server/BluetoothObexDatabase$SessionDbItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_2e
    return-void
.end method

.method public updateFilenameByFilename(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "curFilename"
    .parameter "newFilename"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Landroid/server/BluetoothObexDatabase;->getByFilename(Ljava/lang/String;)Landroid/server/BluetoothObexDatabase$TransferDbItem;

    move-result-object v0

    .line 396
    .local v0, dbItem:Landroid/server/BluetoothObexDatabase$TransferDbItem;
    invoke-virtual {v0}, Landroid/server/BluetoothObexDatabase$TransferDbItem;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothObexDatabase$TransferDbItem;

    .line 398
    .local v1, newDbItem:Landroid/server/BluetoothObexDatabase$TransferDbItem;
    iput-object p2, v1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mFilename:Ljava/lang/String;

    .line 400
    invoke-virtual {p0, p1}, Landroid/server/BluetoothObexDatabase;->deleteByFilename(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0, v1}, Landroid/server/BluetoothObexDatabase;->insert(Landroid/server/BluetoothObexDatabase$TransferDbItem;)V

    .line 402
    return-void
.end method

.method public updateSessionByAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "curAddress"
    .parameter "newSession"

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Landroid/server/BluetoothObexDatabase;->getByAddress(Ljava/lang/String;)Landroid/server/BluetoothObexDatabase$SessionDbItem;

    move-result-object v0

    .line 268
    .local v0, dbItem:Landroid/server/BluetoothObexDatabase$SessionDbItem;
    invoke-virtual {v0}, Landroid/server/BluetoothObexDatabase$SessionDbItem;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothObexDatabase$SessionDbItem;

    .line 270
    .local v1, newDbItem:Landroid/server/BluetoothObexDatabase$SessionDbItem;
    iput-object p2, v1, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mSession:Ljava/lang/String;

    .line 272
    invoke-virtual {p0, p1}, Landroid/server/BluetoothObexDatabase;->deleteByAddress(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, v1}, Landroid/server/BluetoothObexDatabase;->insert(Landroid/server/BluetoothObexDatabase$SessionDbItem;)V

    .line 274
    return-void
.end method

.method public updateTransferByFilename(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "curFilename"
    .parameter "newTransfer"

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Landroid/server/BluetoothObexDatabase;->getByFilename(Ljava/lang/String;)Landroid/server/BluetoothObexDatabase$TransferDbItem;

    move-result-object v0

    .line 414
    .local v0, dbItem:Landroid/server/BluetoothObexDatabase$TransferDbItem;
    invoke-virtual {v0}, Landroid/server/BluetoothObexDatabase$TransferDbItem;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothObexDatabase$TransferDbItem;

    .line 416
    .local v1, newDbItem:Landroid/server/BluetoothObexDatabase$TransferDbItem;
    iput-object p2, v1, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mTransfer:Ljava/lang/String;

    .line 418
    invoke-virtual {p0, p1}, Landroid/server/BluetoothObexDatabase;->deleteByFilename(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0, v1}, Landroid/server/BluetoothObexDatabase;->insert(Landroid/server/BluetoothObexDatabase$TransferDbItem;)V

    .line 420
    return-void
.end method
