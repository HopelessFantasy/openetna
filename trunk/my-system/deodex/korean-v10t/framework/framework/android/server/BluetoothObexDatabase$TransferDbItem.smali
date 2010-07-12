.class public Landroid/server/BluetoothObexDatabase$TransferDbItem;
.super Ljava/lang/Object;
.source "BluetoothObexDatabase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothObexDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransferDbItem"
.end annotation


# instance fields
.field public mDirection:Landroid/server/BluetoothObexDatabase$TransferDirection;

.field protected mFilename:Ljava/lang/String;

.field public mIsServer:Z

.field public mNativeData:I

.field protected mObjectName:Ljava/lang/String;

.field public mObjectSize:I

.field protected mSession:Landroid/server/BluetoothObexDatabase$SessionDbItem;

.field protected mTransfer:Ljava/lang/String;

.field final synthetic this$0:Landroid/server/BluetoothObexDatabase;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothObexDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/server/BluetoothObexDatabase$SessionDbItem;)V
    .registers 8
    .parameter
    .parameter "filename"
    .parameter "objectName"
    .parameter "transfer"
    .parameter "session"

    .prologue
    const/4 v1, 0x0

    .line 130
    iput-object p1, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->this$0:Landroid/server/BluetoothObexDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mFilename:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mObjectName:Ljava/lang/String;

    .line 133
    iput-object p4, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mTransfer:Ljava/lang/String;

    .line 135
    iput v1, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mObjectSize:I

    .line 136
    sget-object v0, Landroid/server/BluetoothObexDatabase$TransferDirection;->TX:Landroid/server/BluetoothObexDatabase$TransferDirection;

    iput-object v0, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mDirection:Landroid/server/BluetoothObexDatabase$TransferDirection;

    .line 137
    iput-boolean v1, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mIsServer:Z

    .line 138
    iput v1, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mNativeData:I

    .line 139
    iput-object p5, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mSession:Landroid/server/BluetoothObexDatabase$SessionDbItem;

    .line 140
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 149
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 152
    :goto_4
    return-object v1

    .line 150
    :catch_5
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const-string v1, "BluetoothObexDatabase"

    const-string v2, "TransferDbItem clone() exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public final getFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public final getSession()Landroid/server/BluetoothObexDatabase$SessionDbItem;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mSession:Landroid/server/BluetoothObexDatabase$SessionDbItem;

    return-object v0
.end method

.method public final getTransfer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase$TransferDbItem;->mTransfer:Ljava/lang/String;

    return-object v0
.end method
