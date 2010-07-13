.class public Lcom/lge/hiddenmenu/device_test/elt_test/AutomaticMode;
.super Landroid/app/Activity;
.source "AutomaticMode.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 34
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const-string v2, "ELT Test : Automatic"

    .line 37
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 39
    .local v0, checkedId:I
    packed-switch v0, :pswitch_data_34

    .line 56
    :goto_b
    return-void

    .line 41
    :pswitch_c
    const-string v1, "ELT Test : Automatic"

    const-string v1, "One time"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 44
    :pswitch_14
    const-string v1, "ELT Test : Automatic"

    const-string v1, "two_times"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 47
    :pswitch_1c
    const-string v1, "ELT Test : Automatic"

    const-string v1, "three_times"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 50
    :pswitch_24
    const-string v1, "ELT Test : Automatic"

    const-string v1, "four_times"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 53
    :pswitch_2c
    const-string v1, "ELT Test : Automatic"

    const-string v1, "five_times"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 39
    :pswitch_data_34
    .packed-switch 0x7f070023
        :pswitch_c
        :pswitch_14
        :pswitch_1c
        :pswitch_24
        :pswitch_2c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/elt_test/AutomaticMode;->setContentView(I)V

    .line 23
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/elt_test/AutomaticMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 24
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 27
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/elt_test/AutomaticMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 28
    .local v0, clearButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/AutomaticMode;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f070025

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 31
    return-void
.end method
