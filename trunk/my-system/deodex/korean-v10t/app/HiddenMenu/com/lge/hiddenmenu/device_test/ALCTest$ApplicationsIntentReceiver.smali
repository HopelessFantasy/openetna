.class Lcom/lge/hiddenmenu/device_test/ALCTest$ApplicationsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ALCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/ALCTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/ALCTest;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/device_test/ALCTest;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/ALCTest$ApplicationsIntentReceiver;->this$0:Lcom/lge/hiddenmenu/device_test/ALCTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/device_test/ALCTest;Lcom/lge/hiddenmenu/device_test/ALCTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/device_test/ALCTest$ApplicationsIntentReceiver;-><init>(Lcom/lge/hiddenmenu/device_test/ALCTest;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 178
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ALCTest$ApplicationsIntentReceiver;->this$0:Lcom/lge/hiddenmenu/device_test/ALCTest;

    const-string v1, "ALCValue"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v2, Lcom/lge/hiddenmenu/device_test/ALCTest;->mALCValue:Ljava/lang/Integer;

    .line 179
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/ALCTest$ApplicationsIntentReceiver;->this$0:Lcom/lge/hiddenmenu/device_test/ALCTest;

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Lcom/lge/hiddenmenu/device_test/ALCTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    .local v0, tNow:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      ALC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ALCTest$ApplicationsIntentReceiver;->this$0:Lcom/lge/hiddenmenu/device_test/ALCTest;

    iget-object v2, v2, Lcom/lge/hiddenmenu/device_test/ALCTest;->mALCValue:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method
