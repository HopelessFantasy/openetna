.class Lcom/android/mms/ui/ManageCBchannelActivity$2;
.super Ljava/lang/Object;
.source "ManageCBchannelActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 160
    iput-object p1, p0, Lcom/android/mms/ui/ManageCBchannelActivity$2;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const-string v2, "ManageCBchannelActivity"

    .line 161
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_c

    .line 162
    packed-switch p2, :pswitch_data_90

    .line 180
    :cond_c
    :goto_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 164
    :pswitch_e
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity$2;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_c

    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity$2;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$000()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 166
    const-string v0, "ManageCBchannelActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnKeyListener Add button:: list numbers "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageCBchannelActivity$2;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ManageCBchannelActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity$2;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    iget-object v3, p0, Lcom/android/mms/ui/ManageCBchannelActivity$2;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ManageCBchannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ManageCBchannelActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 168
    goto :goto_d

    .line 170
    :cond_65
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity$2;->this$0:Lcom/android/mms/ui/ManageCBchannelActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$100(Lcom/android/mms/ui/ManageCBchannelActivity;I)V

    .line 171
    const-string v0, "ManageCBchannelActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnKeyListener Add button:: CB channel numbers is more than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelActivity;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v0, "ManageCBchannelActivity"

    const-string v0, "OnKeyListener Add button:: So You can not save channel any more!!! "

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 162
    :pswitch_data_90
    .packed-switch 0x42
        :pswitch_e
    .end packed-switch
.end method
