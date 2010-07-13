.class public Lcom/lge/elt_test/AutomaticMode;
.super Landroid/app/Activity;
.source "AutomaticMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const-string v6, "repeatCount"

    const-string v5, "ELT Test : Automatic"

    .line 31
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/elt_test/AutomaticMode;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lge/elt_test/AutomaticMode;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".AutomaticTest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iget-object v2, p0, Lcom/lge/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 35
    .local v0, checkedId:I
    packed-switch v0, :pswitch_data_98

    .line 66
    :goto_30
    invoke-virtual {p0, v1}, Lcom/lge/elt_test/AutomaticMode;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void

    .line 37
    :pswitch_34
    const-string v2, "ELT Test : Automatic"

    const-string v2, "one time"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v2, "repeatCount"

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_30

    .line 41
    :pswitch_42
    const-string v2, "ELT Test : Automatic"

    const-string v2, "two_times"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v2, "repeatCount"

    const/4 v2, 0x2

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_30

    .line 45
    :pswitch_50
    const-string v2, "ELT Test : Automatic"

    const-string v2, "three_times"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v2, "repeatCount"

    const/4 v2, 0x3

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_30

    .line 49
    :pswitch_5e
    const-string v2, "ELT Test : Automatic"

    const-string v2, "four_times"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v2, "repeatCount"

    const/4 v2, 0x4

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_30

    .line 53
    :pswitch_6c
    const-string v2, "ELT Test : Automatic"

    const-string v2, "five_times"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v2, "repeatCount"

    const/4 v2, 0x5

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_30

    .line 57
    :pswitch_7a
    const-string v2, "ELT Test : Automatic"

    const-string v2, "infinite_times"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v2, "repeatCount"

    const/4 v2, -0x1

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_30

    .line 61
    :pswitch_88
    const-string v2, "ELT Test : Automatic"

    const-string v2, "hundred_times"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v2, "repeatCount"

    const/16 v2, 0x64

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_30

    .line 35
    nop

    :pswitch_data_98
    .packed-switch 0x7f050003
        :pswitch_34
        :pswitch_42
        :pswitch_50
        :pswitch_5e
        :pswitch_6c
        :pswitch_7a
        :pswitch_88
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/lge/elt_test/AutomaticMode;->setContentView(I)V

    .line 21
    const v2, 0x7f050002

    invoke-virtual {p0, v2}, Lcom/lge/elt_test/AutomaticMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/lge/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 23
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 24
    .local v0, radioGroup:Landroid/widget/RadioGroup;
    const v2, 0x7f050005

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 26
    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/elt_test/AutomaticMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 27
    .local v1, startButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v4, "repeatCount"

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/elt_test/AutomaticMode;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lge/elt_test/AutomaticMode;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".AutomaticTest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    packed-switch p1, :pswitch_data_9e

    .line 109
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 112
    :goto_2c
    return v1

    .line 74
    :pswitch_2d
    iget-object v1, p0, Lcom/lge/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 75
    const-string v1, "repeatCount"

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    :goto_3b
    invoke-virtual {p0, v0}, Lcom/lge/elt_test/AutomaticMode;->startActivity(Landroid/content/Intent;)V

    .line 112
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2c

    .line 79
    :pswitch_43
    iget-object v1, p0, Lcom/lge/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 80
    const-string v1, "repeatCount"

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3b

    .line 84
    :pswitch_52
    iget-object v1, p0, Lcom/lge/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 85
    const-string v1, "repeatCount"

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3b

    .line 89
    :pswitch_61
    iget-object v1, p0, Lcom/lge/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f050006

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 90
    const-string v1, "repeatCount"

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3b

    .line 94
    :pswitch_70
    iget-object v1, p0, Lcom/lge/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f050007

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 95
    const-string v1, "repeatCount"

    const/4 v1, 0x5

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3b

    .line 99
    :pswitch_7f
    iget-object v1, p0, Lcom/lge/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 100
    const-string v1, "repeatCount"

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3b

    .line 104
    :pswitch_8e
    iget-object v1, p0, Lcom/lge/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f050009

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 105
    const-string v1, "repeatCount"

    const/16 v1, 0x64

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3b

    .line 72
    :pswitch_data_9e
    .packed-switch 0x8
        :pswitch_2d
        :pswitch_43
        :pswitch_52
        :pswitch_61
        :pswitch_70
        :pswitch_7f
        :pswitch_8e
    .end packed-switch
.end method
