.class public Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;
.super Landroid/app/Activity;
.source "MicAmpCalibration.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final GAIN_TYPE:[I = null

.field private static final MIC_MAX_NUM:I = 0x2b

.field public static final MODE_GET:I = 0x0

.field public static final MODE_SET:I = 0x1

.field public static final VOC_CODEC:[I

.field public static getVolumeValue:I

.field private static mGain_type:I

.field private static mParam_val:I

.field private static mVoc_codec:I


# instance fields
.field gainType:Landroid/widget/Spinner;

.field private mGetData:Landroid/widget/EditText;

.field private mItemType:I

.field private mSetData:Landroid/widget/EditText;

.field vocoder:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->VOC_CODEC:[I

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->GAIN_TYPE:[I

    return-void

    .line 32
    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 43
    :array_26
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mSetData:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_77

    .line 87
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mSetData:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, mVal:I
    :goto_1e
    const-string v1, "Calibartion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mVoc_codec:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mGain_type:I

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

    .line 96
    if-ltz v0, :cond_76

    const/16 v1, 0x2b

    if-gt v0, v1, :cond_76

    .line 98
    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mVoc_codec:I

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mGain_type:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Landroid/media/AudioSystem;->setMicAmpGain(IIII)I

    move-result v1

    sput v1, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->getVolumeValue:I

    .line 99
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mGetData:Landroid/widget/EditText;

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->getVolumeValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_76
    return-void

    .line 91
    .end local v0           #mVal:I
    :cond_77
    const/4 v0, 0x0

    .line 92
    .restart local v0       #mVal:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mSetData:Landroid/widget/EditText;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x1090009

    const v4, 0x1090008

    const/4 v5, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v3, 0x7f030037

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->setContentView(I)V

    .line 55
    const v3, 0x7f07008c

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->vocoder:Landroid/widget/Spinner;

    .line 56
    const v3, 0x7f060037

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 58
    .local v0, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 59
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->vocoder:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 60
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->vocoder:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 62
    const v3, 0x7f0700e4

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->gainType:Landroid/widget/Spinner;

    .line 63
    const v3, 0x7f060040

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 65
    .local v1, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 67
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->gainType:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 68
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->gainType:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 70
    const v3, 0x7f070005

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mSetData:Landroid/widget/EditText;

    .line 73
    const v3, 0x7f070006

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mGetData:Landroid/widget/EditText;

    .line 77
    const v3, 0x7f070007

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 78
    .local v2, clearButton:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mVoc_codec:I

    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mGain_type:I

    invoke-static {v3, v4, v5, v5}, Landroid/media/AudioSystem;->setAmpGain(IIII)I

    move-result v3

    sput v3, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->getVolumeValue:I

    .line 80
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mGetData:Landroid/widget/EditText;

    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->getVolumeValue:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->vocoder:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 106
    sget-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->VOC_CODEC:[I

    aget v0, v0, p3

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mVoc_codec:I

    .line 114
    :cond_f
    :goto_f
    sget v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mVoc_codec:I

    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mGain_type:I

    invoke-static {v0, v1, v2, v2}, Landroid/media/AudioSystem;->setMicAmpGain(IIII)I

    move-result v0

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->getVolumeValue:I

    .line 115
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mGetData:Landroid/widget/EditText;

    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->getVolumeValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void

    .line 110
    :cond_25
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->gainType:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 111
    sget-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->GAIN_TYPE:[I

    aget v0, v0, p3

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mGain_type:I

    goto :goto_f
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 5
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->vocoder:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 120
    sget-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->VOC_CODEC:[I

    aget v0, v0, v2

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mVoc_codec:I

    .line 123
    :cond_f
    :goto_f
    sget v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mVoc_codec:I

    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mGain_type:I

    invoke-static {v0, v1, v2, v2}, Landroid/media/AudioSystem;->setMicAmpGain(IIII)I

    move-result v0

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->getVolumeValue:I

    .line 124
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mGetData:Landroid/widget/EditText;

    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->getVolumeValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void

    .line 121
    :cond_25
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->gainType:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 122
    sget-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->GAIN_TYPE:[I

    aget v0, v0, v2

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/MicAmpCalibration;->mGain_type:I

    goto :goto_f
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 130
    return-void
.end method
