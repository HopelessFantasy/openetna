.class public Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;
.super Landroid/app/Activity;
.source "AdvEcCalibration.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ADVEC_ITEM:[I = null

.field public static final ADVEC_TYPE:[I = null

.field private static final MODE_GET:I = 0x0

.field private static final MODE_SET:I = 0x1

.field private static getVolumeValue:I

.field private static mAdvec_item:I

.field private static mAdvec_type:I

.field private static mGetValue:I


# instance fields
.field advec_item:Landroid/widget/Spinner;

.field advec_type:Landroid/widget/Spinner;

.field private mGetData:Landroid/widget/EditText;

.field private mSetData:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mGetValue:I

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->ADVEC_TYPE:[I

    .line 40
    const/16 v0, 0x26

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->ADVEC_ITEM:[I

    return-void

    .line 31
    nop

    :array_16
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 40
    :array_28
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mSetData:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_71

    .line 119
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mSetData:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, mVal:I
    :goto_1e
    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_type:I

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_item:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Landroid/media/AudioSystem;->setNextEcParam(IIII)I

    move-result v1

    sput v1, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->getVolumeValue:I

    .line 129
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mGetData:Landroid/widget/EditText;

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->getVolumeValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const-string v1, "Calibartion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_type:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_item:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "3 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 123
    .end local v0           #mVal:I
    :cond_71
    const/4 v0, 0x0

    .line 124
    .restart local v0       #mVal:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mSetData:Landroid/widget/EditText;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x1090009

    const v4, 0x1090008

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->setContentView(I)V

    .line 87
    const v3, 0x7f070003

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->advec_type:Landroid/widget/Spinner;

    .line 88
    const v3, 0x7f06003c

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 90
    .local v0, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 91
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->advec_type:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 92
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->advec_type:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 94
    const v3, 0x7f070004

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->advec_item:Landroid/widget/Spinner;

    .line 95
    const v3, 0x7f06003d

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 97
    .local v1, adapter3:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 98
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->advec_item:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 99
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->advec_item:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 101
    const v3, 0x7f070005

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mSetData:Landroid/widget/EditText;

    .line 104
    const v3, 0x7f070006

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mGetData:Landroid/widget/EditText;

    .line 109
    const v3, 0x7f070007

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 110
    .local v2, clearButton:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_type:I

    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_item:I

    const/4 v5, 0x0

    sget v6, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mGetValue:I

    invoke-static {v3, v4, v5, v6}, Landroid/media/AudioSystem;->setNextEcParam(IIII)I

    move-result v3

    sput v3, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->getVolumeValue:I

    .line 112
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mGetData:Landroid/widget/EditText;

    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->getVolumeValue:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->advec_type:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 137
    sget-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->ADVEC_TYPE:[I

    aget v0, v0, p3

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_type:I

    .line 142
    :cond_e
    :goto_e
    sget v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_type:I

    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_item:I

    const/4 v2, 0x0

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mGetValue:I

    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioSystem;->setNextEcParam(IIII)I

    move-result v0

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->getVolumeValue:I

    .line 143
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mGetData:Landroid/widget/EditText;

    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->getVolumeValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void

    .line 139
    :cond_27
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->advec_item:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 140
    sget-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->ADVEC_ITEM:[I

    aget v0, v0, p3

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_item:I

    goto :goto_e
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 6
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->advec_type:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 148
    sget-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->ADVEC_TYPE:[I

    aget v0, v0, v3

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_type:I

    .line 153
    :cond_f
    :goto_f
    sget v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_type:I

    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_item:I

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mGetValue:I

    invoke-static {v0, v1, v3, v2}, Landroid/media/AudioSystem;->setNextEcParam(IIII)I

    move-result v0

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->getVolumeValue:I

    .line 154
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mGetData:Landroid/widget/EditText;

    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->getVolumeValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void

    .line 150
    :cond_27
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->advec_item:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 151
    sget-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->ADVEC_ITEM:[I

    aget v0, v0, v3

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/AdvEcCalibration;->mAdvec_item:I

    goto :goto_f
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 160
    return-void
.end method
