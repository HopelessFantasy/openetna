.class public Landroid/server/BluetoothObexDatabase$SessionDbItem;
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
    name = "SessionDbItem"
.end annotation


# instance fields
.field protected mAddress:Ljava/lang/String;

.field public mCallback:Ljava/lang/Object;

.field protected mSession:Ljava/lang/String;

.field private mTransfers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/server/BluetoothObexDatabase$TransferDbItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/server/BluetoothObexDatabase;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothObexDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter "address"
    .parameter "session"
    .parameter "callback"

    .prologue
    .line 75
    iput-object p1, p0, Landroid/server/BluetoothObexDatabase$SessionDbItem;->this$0:Landroid/server/BluetoothObexDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mAddress:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mSession:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mCallback:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mTransfers:Ljava/util/List;

    .line 81
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothObexDatabase$SessionDbItem;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mTransfers:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 89
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 92
    :goto_4
    return-object v1

    .line 90
    :catch_5
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const-string v1, "BluetoothObexDatabase"

    const-string v2, "SessionDbItem clone() exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public final getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getSession()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Landroid/server/BluetoothObexDatabase$SessionDbItem;->mSession:Ljava/lang/String;

    return-object v0
.end method
