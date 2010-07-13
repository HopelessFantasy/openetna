.class Lcom/android/server/status/StatusBarPolicy$4;
.super Landroid/telephony/PhoneStateListener;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarPolicy;)V
    .registers 2
    .parameter

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$4;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$4;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, p1}, Lcom/android/server/status/StatusBarPolicy;->access$2200(Lcom/android/server/status/StatusBarPolicy;I)V

    .line 1306
    return-void
.end method

.method public onDataActivity(I)V
    .registers 3
    .parameter "direction"

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$4;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput p1, v0, Lcom/android/server/status/StatusBarPolicy;->mDataActivity:I

    .line 1318
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$4;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2100(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1319
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$4;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput p1, v0, Lcom/android/server/status/StatusBarPolicy;->mDataState:I

    .line 1311
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$4;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2300(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1312
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$4;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2100(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1313
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$4;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    .line 1298
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$4;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$1900(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1299
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$4;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2000(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1300
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$4;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2100(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1301
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 3
    .parameter "signalStrength"

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$4;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1292
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$4;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$1900(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1293
    return-void
.end method
