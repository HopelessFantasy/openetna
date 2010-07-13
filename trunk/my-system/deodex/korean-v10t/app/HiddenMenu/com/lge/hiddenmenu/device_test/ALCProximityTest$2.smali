.class Lcom/lge/hiddenmenu/device_test/ALCProximityTest$2;
.super Ljava/lang/Object;
.source "ALCProximityTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    .line 163
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    invoke-virtual {v7}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->ReadIntFromFile()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->ProximityStatus_2:Ljava/lang/Integer;

    .line 164
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    iget-object v6, v6, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->ProximityStatus_2:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_1f

    .line 165
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->access$300(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;I)V

    .line 166
    :cond_1f
    const-string v4, "com.lge.hiddenmenu"

    .line 167
    .local v4, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 169
    .local v2, className:Ljava/lang/String;
    const/4 v5, 0x0

    .line 170
    .local v5, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 171
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 173
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".device_test"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 174
    const-string v2, "DeviceTest"

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 178
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    invoke-virtual {v6, v3}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->startActivity(Landroid/content/Intent;)V

    .line 179
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->finish()V

    .line 180
    return-void
.end method
