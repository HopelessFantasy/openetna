.class Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;
.super Ljava/lang/Thread;
.source "BluetoothSPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/dg/BluetoothSPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadDataThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/dg/BluetoothSPP;)V
    .registers 2
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/dg/BluetoothSPP;Lcom/broadcom/bt/service/dg/BluetoothSPP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;-><init>(Lcom/broadcom/bt/service/dg/BluetoothSPP;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const-string v3, "BluetoothSPP"

    .line 397
    :goto_2
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$100(Lcom/broadcom/bt/service/dg/BluetoothSPP;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_60

    .line 398
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$200(Lcom/broadcom/bt/service/dg/BluetoothSPP;)V

    .line 399
    const-string v0, "BluetoothSPP"

    const-string v0, "Data Arrived in SPP"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    iget-object v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    iget-object v2, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v2}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$400(Lcom/broadcom/bt/service/dg/BluetoothSPP;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->read_port(B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$302(Lcom/broadcom/bt/service/dg/BluetoothSPP;[B)[B

    .line 401
    const-string v0, "BluetoothSPP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$300(Lcom/broadcom/bt/service/dg/BluetoothSPP;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    iget-object v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$300(Lcom/broadcom/bt/service/dg/BluetoothSPP;)[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v2}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$300(Lcom/broadcom/bt/service/dg/BluetoothSPP;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->write(I[B)I

    goto :goto_2

    .line 404
    :cond_60
    const-string v0, "BluetoothSPP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read Thread For Port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$500(Lcom/broadcom/bt/service/dg/BluetoothSPP;)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Exiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method
