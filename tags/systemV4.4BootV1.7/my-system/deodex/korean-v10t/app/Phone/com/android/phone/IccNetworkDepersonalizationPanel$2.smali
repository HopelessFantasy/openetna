.class Lcom/android/phone/IccNetworkDepersonalizationPanel$2;
.super Landroid/os/Handler;
.source "IccNetworkDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0xbb8

    const/4 v5, 0x1

    const-string v8, "PhoneApp"

    .line 142
    const/4 v3, 0x5

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Network"

    aput-object v4, v1, v3

    const-string v3, "Network SubType"

    aput-object v3, v1, v5

    const/4 v3, 0x2

    const-string v4, "Service Provider"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "Corporate"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "SIM"

    aput-object v4, v1, v3

    .line 144
    .local v1, mPersoSubtypeNames:[Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2c

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_92

    .line 146
    :cond_2c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 147
    .local v2, res:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_63

    .line 148
    const-string v3, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v4

    sub-int/2addr v4, v5

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Depersonalization failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 150
    new-instance v3, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;

    invoke-direct {v3, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    .end local v2           #res:Landroid/os/AsyncResult;
    :cond_62
    :goto_62
    return-void

    .line 162
    .restart local v2       #res:Landroid/os/AsyncResult;
    :cond_63
    const-string v3, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v4

    sub-int/2addr v4, v5

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Depersonalization success."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 164
    new-instance v3, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;

    invoke-direct {v3, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_62

    .line 179
    .end local v2           #res:Landroid/os/AsyncResult;
    :cond_92
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xe8

    if-ne v3, v4, :cond_62

    .line 180
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 181
    .restart local v2       #res:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_62

    .line 182
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMLockInfo;

    .line 183
    .local v0, SLInfo:Lcom/android/internal/telephony/gsm/SIMLockInfo;
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v3, v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$700(Lcom/android/phone/IccNetworkDepersonalizationPanel;Lcom/android/internal/telephony/gsm/SIMLockInfo;)V

    .line 185
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v3, v3, Lcom/android/phone/IccNetworkDepersonalizationPanel;->app:Lcom/android/internal/telephony/gsm/SimCard;

    sget v3, Lcom/android/internal/telephony/gsm/SimCard;->mAttemptsLeft:I

    if-nez v3, :cond_62

    .line 186
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$800(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 187
    new-instance v3, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$3;

    invoke-direct {v3, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_62
.end method
