.class Lcom/android/mms/ui/ManageCBchannelActivity$1;
.super Ljava/lang/Object;
.source "ManageCBchannelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageCBchannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageCBchannelActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageCBchannelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/mms/ui/ManageCBchannelActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const-string v2, "ManageCBchannelActivity"

    .line 144
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$000()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2c

    .line 145
    const-string v0, "ManageCBchannelActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnClick Add button:: No SIM - cbNumberInSim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$100(Lcom/android/mms/ui/ManageCBchannelActivity;I)V

    .line 155
    :goto_2b
    return-void

    .line 147
    :cond_2c
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$000()I

    move-result v1

    if-ge v0, v1, :cond_77

    .line 148
    const-string v0, "ManageCBchannelActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnClick Add button:: list numbers "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageCBchannelActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ManageCBchannelActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    iget-object v3, p0, Lcom/android/mms/ui/ManageCBchannelActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ManageCBchannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ManageCBchannelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2b

    .line 151
    :cond_77
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$100(Lcom/android/mms/ui/ManageCBchannelActivity;I)V

    .line 152
    const-string v0, "ManageCBchannelActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnClick Add button:: CB channel numbers is more than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "ManageCBchannelActivity"

    const-string v0, "OnClick Add button:: So You can not save channel any more!!! "

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method
