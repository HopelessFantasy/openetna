.class Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;
.super Ljava/lang/Object;
.source "TouchKeyTest.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 108
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 110
    .local v0, action:I
    const-string v1, " "

    .line 111
    .local v1, str:Ljava/lang/String;
    sparse-switch p2, :sswitch_data_a8

    .line 152
    :goto_b
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;

    iget-object v4, v4, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " HOME Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;

    iget-object v5, v5, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mNumHomePressed:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, strHome:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " BACK Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;

    iget-object v5, v5, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mNumBackPressed:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, strBack:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;

    iget-object v4, v4, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mTextHome:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;

    iget-object v4, v4, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mTextBack:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v4, v6

    .line 159
    .end local v2           #strBack:Ljava/lang/String;
    .end local v3           #strHome:Ljava/lang/String;
    :goto_4f
    return v4

    .line 113
    :sswitch_50
    if-nez v0, :cond_55

    .line 115
    const-string v1, "HOME Key is Pressed : ACTION_DOWN"

    goto :goto_b

    .line 117
    :cond_55
    if-ne v0, v6, :cond_70

    .line 118
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;

    iget-object v4, v4, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mNumHomePressed:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;

    iget-object v5, v5, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mNumHomePressed:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mNumHomePressed:Ljava/lang/Integer;

    .line 119
    const-string v1, "HOME Key is Pressed : ACTION_UP"

    goto :goto_b

    .line 121
    :cond_70
    if-ne v0, v4, :cond_75

    .line 122
    const-string v1, "HOME Key is Pressed : ACTION_MULTIPLE"

    goto :goto_b

    .line 125
    :cond_75
    const-string v1, "HOME Key is Pressed : Unknown"

    .line 127
    goto :goto_b

    .line 129
    :sswitch_78
    if-nez v0, :cond_94

    .line 130
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;

    iget-object v4, v4, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mNumBackPressed:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;

    iget-object v5, v5, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mNumBackPressed:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mNumBackPressed:Ljava/lang/Integer;

    .line 131
    const-string v1, "BACK Key is Pressed : ACTION_DOWN"

    goto/16 :goto_b

    .line 133
    :cond_94
    if-ne v0, v6, :cond_9a

    .line 134
    const-string v1, "BACK Key is Pressed : ACTION_UP"

    goto/16 :goto_b

    .line 136
    :cond_9a
    if-ne v0, v4, :cond_a0

    .line 137
    const-string v1, "BACK Key is Pressed : ACTION_MULTIPLE"

    goto/16 :goto_b

    .line 140
    :cond_a0
    const-string v1, "BACK Key is Pressed : Unknown"

    .line 142
    goto/16 :goto_b

    .line 144
    :sswitch_a4
    const-string v1, "MENU Key is Pressed"

    .line 145
    const/4 v4, 0x0

    goto :goto_4f

    .line 111
    :sswitch_data_a8
    .sparse-switch
        0x3 -> :sswitch_50
        0x4 -> :sswitch_78
        0x52 -> :sswitch_a4
    .end sparse-switch
.end method
