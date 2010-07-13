.class Lcom/android/settings/fuelgauge/PowerUsageSummary$1;
.super Landroid/os/Handler;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .registers 2
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 705
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_32

    .line 718
    :cond_5
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 719
    return-void

    .line 707
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 708
    .local v0, bs:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 711
    .local v1, pgp:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    if-eqz v1, :cond_5

    .line 712
    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 713
    iget-wide v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->percent:D

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    .line 714
    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 705
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
