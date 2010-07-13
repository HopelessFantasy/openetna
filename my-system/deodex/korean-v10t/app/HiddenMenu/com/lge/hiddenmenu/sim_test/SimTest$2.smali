.class Lcom/lge/hiddenmenu/sim_test/SimTest$2;
.super Ljava/lang/Object;
.source "SimTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/sim_test/SimTest;->selectMenuItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/sim_test/SimTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/sim_test/SimTest;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lge/hiddenmenu/sim_test/SimTest$2;->this$0:Lcom/lge/hiddenmenu/sim_test/SimTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const-string v2, "GSM"

    .line 96
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Yes is clicked. Current virtualSimEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/lge/hiddenmenu/sim_test/SimTest;->virtualSimEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-boolean v0, Lcom/lge/hiddenmenu/sim_test/SimTest;->virtualSimEnabled:Z

    if-nez v0, :cond_55

    const/4 v0, 0x1

    :goto_21
    sput-boolean v0, Lcom/lge/hiddenmenu/sim_test/SimTest;->virtualSimEnabled:Z

    .line 102
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "We change virtualSimEnabled vlaue to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/lge/hiddenmenu/sim_test/SimTest;->virtualSimEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/lge/hiddenmenu/sim_test/SimTest$2;->this$0:Lcom/lge/hiddenmenu/sim_test/SimTest;

    sget-boolean v1, Lcom/lge/hiddenmenu/sim_test/SimTest;->virtualSimEnabled:Z

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/sim_test/SimTest;->access$002(Lcom/lge/hiddenmenu/sim_test/SimTest;Z)Z

    .line 104
    iget-object v0, p0, Lcom/lge/hiddenmenu/sim_test/SimTest$2;->this$0:Lcom/lge/hiddenmenu/sim_test/SimTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/sim_test/SimTest;->access$100(Lcom/lge/hiddenmenu/sim_test/SimTest;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/sim_test/SimTest$2;->this$0:Lcom/lge/hiddenmenu/sim_test/SimTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/sim_test/SimTest;->access$000(Lcom/lge/hiddenmenu/sim_test/SimTest;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setVsimMode(ZLandroid/os/Message;)V

    .line 106
    return-void

    .line 99
    :cond_55
    const/4 v0, 0x0

    goto :goto_21
.end method
