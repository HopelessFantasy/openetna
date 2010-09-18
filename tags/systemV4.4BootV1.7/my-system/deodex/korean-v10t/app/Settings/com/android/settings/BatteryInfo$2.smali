.class Lcom/android/settings/BatteryInfo$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/BatteryInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_144

    .line 83
    const-string v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 85
    .local v3, plugType:I
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$100(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "level"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$200(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "scale"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$300(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "voltage"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v9, 0x7f08002f

    invoke-virtual {v8, v9}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$500(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const-string v9, "temperature"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/settings/BatteryInfo;->access$400(Lcom/android/settings/BatteryInfo;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v9, 0x7f080031

    invoke-virtual {v8, v9}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$600(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "technology"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const-string v6, "status"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 95
    .local v4, status:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_149

    .line 96
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f080037

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, statusString:Ljava/lang/String;
    if-lez v3, :cond_11f

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const/4 v8, 0x1

    if-ne v3, v8, :cond_145

    const v8, 0x7f080038

    :goto_113
    invoke-virtual {v7, v8}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    :cond_11f
    :goto_11f
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$700(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const-string v6, "health"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, health:I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_17a

    .line 117
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f08003e

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, healthString:Ljava/lang/String;
    :goto_13b
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    invoke-static {v6}, Lcom/android/settings/BatteryInfo;->access$800(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .end local v1           #health:I
    .end local v2           #healthString:Ljava/lang/String;
    .end local v3           #plugType:I
    .end local v4           #status:I
    .end local v5           #statusString:Ljava/lang/String;
    :cond_144
    return-void

    .line 98
    .restart local v3       #plugType:I
    .restart local v4       #status:I
    .restart local v5       #statusString:Ljava/lang/String;
    :cond_145
    const v8, 0x7f080039

    goto :goto_113

    .line 103
    .end local v5           #statusString:Ljava/lang/String;
    :cond_149
    const/4 v6, 0x3

    if-ne v4, v6, :cond_156

    .line 104
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f08003a

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_11f

    .line 105
    .end local v5           #statusString:Ljava/lang/String;
    :cond_156
    const/4 v6, 0x4

    if-ne v4, v6, :cond_163

    .line 106
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f08003b

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_11f

    .line 107
    .end local v5           #statusString:Ljava/lang/String;
    :cond_163
    const/4 v6, 0x5

    if-ne v4, v6, :cond_170

    .line 108
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f08003c

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_11f

    .line 110
    .end local v5           #statusString:Ljava/lang/String;
    :cond_170
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f080036

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_11f

    .line 118
    .restart local v1       #health:I
    :cond_17a
    const/4 v6, 0x3

    if-ne v1, v6, :cond_187

    .line 119
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f08003f

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_13b

    .line 120
    .end local v2           #healthString:Ljava/lang/String;
    :cond_187
    const/4 v6, 0x4

    if-ne v1, v6, :cond_194

    .line 121
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f080040

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_13b

    .line 122
    .end local v2           #healthString:Ljava/lang/String;
    :cond_194
    const/4 v6, 0x5

    if-ne v1, v6, :cond_1a1

    .line 123
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f080041

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_13b

    .line 124
    .end local v2           #healthString:Ljava/lang/String;
    :cond_1a1
    const/4 v6, 0x6

    if-ne v1, v6, :cond_1ae

    .line 125
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f080042

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_13b

    .line 127
    .end local v2           #healthString:Ljava/lang/String;
    :cond_1ae
    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f08003d

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_13b
.end method
