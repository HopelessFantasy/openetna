.class public Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;
.super Landroid/app/Activity;
.source "SoundCalibration.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DEVICE_TYPE:[I = null

.field public static final DTMF_TYPE:I = 0x1

.field public static final ETC_TYPE:I = 0x2

.field public static final METHOD_TYPE:[I = null

.field public static final MODE_GET:I = 0x0

.field public static final MODE_SET:I = 0x1

.field public static final MUSIC_TYPE:I = 0x1

.field public static final PAD_TYPE:I = 0x2

.field public static final VOICECall_TYPE:I

.field public static final VOLUME_TYPE:I

.field private static getVolumeValue:I

.field private static mDevice_type:I

.field public static mGetValue:I

.field private static mIdx:B

.field private static mMethodType:I

.field private static mMethod_type:I

.field private static mVolumeType:I


# instance fields
.field device_type:Landroid/widget/Spinner;

.field private mGetData:Landroid/widget/EditText;

.field private mSetData:Landroid/widget/EditText;

.field method_type:Landroid/widget/Spinner;

.field volume_level:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput v1, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetValue:I

    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->DEVICE_TYPE:[I

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->METHOD_TYPE:[I

    return-void

    .line 45
    :array_14
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const-string v3, "0"

    .line 110
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mSetData:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_73

    .line 111
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mSetData:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, mVal:I
    :goto_21
    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mVolumeType:I

    packed-switch v1, :pswitch_data_ce

    .line 135
    :goto_26
    const-string v1, "Calibartion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mDevice_type:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethod_type:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "3 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-byte v3, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mIdx:B

    invoke-static {v3}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "4 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 115
    .end local v0           #mVal:I
    :cond_73
    const/4 v0, 0x0

    .line 116
    .restart local v0       #mVal:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mSetData:Landroid/widget/EditText;

    const-string v2, "0"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetData:Landroid/widget/EditText;

    const-string v2, "0"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 122
    :pswitch_83
    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mDevice_type:I

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethod_type:I

    sget-byte v3, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mIdx:B

    invoke-static {v1, v2, v3, v4, v0}, Landroid/media/AudioSystem;->setRxVolume(IIBII)I

    move-result v1

    sput v1, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    .line 123
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetData:Landroid/widget/EditText;

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 126
    :pswitch_9b
    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mDevice_type:I

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethod_type:I

    sget-byte v3, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mIdx:B

    invoke-static {v1, v2, v3, v4, v0}, Landroid/media/AudioSystem;->setDtmfVolume(IIBII)I

    move-result v1

    sput v1, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    .line 127
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetData:Landroid/widget/EditText;

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_26

    .line 130
    :pswitch_b4
    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mDevice_type:I

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethod_type:I

    sget-byte v3, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mIdx:B

    invoke-static {v1, v2, v3, v4, v0}, Landroid/media/AudioSystem;->setPadValue(IIBII)I

    move-result v1

    sput v1, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    .line 131
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetData:Landroid/widget/EditText;

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_26

    .line 120
    nop

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_83
        :pswitch_9b
        :pswitch_b4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x1090009

    const v5, 0x1090008

    const/4 v8, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v4, 0x7f030035

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->setContentView(I)V

    .line 68
    const v4, 0x7f0700e1

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->device_type:Landroid/widget/Spinner;

    .line 69
    const v4, 0x7f060031

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 71
    .local v0, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 72
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->device_type:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 73
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->device_type:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 75
    const v4, 0x7f0700e2

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->method_type:Landroid/widget/Spinner;

    .line 76
    const v4, 0x7f060032

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 78
    .local v1, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 79
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->method_type:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 80
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->method_type:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 82
    const v4, 0x7f0700e3

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->volume_level:Landroid/widget/Spinner;

    .line 83
    const v4, 0x7f060035

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 85
    .local v2, adapter3:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 86
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->volume_level:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 87
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->volume_level:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 89
    const v4, 0x7f070005

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mSetData:Landroid/widget/EditText;

    .line 92
    const v4, 0x7f070006

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetData:Landroid/widget/EditText;

    .line 96
    const v4, 0x7f070007

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 97
    .local v3, clearButton:Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sput v8, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethodType:I

    .line 100
    sput v8, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mVolumeType:I

    .line 101
    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mDevice_type:I

    sget v5, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethod_type:I

    sget-byte v6, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mIdx:B

    sget v7, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetValue:I

    invoke-static {v4, v5, v6, v8, v7}, Landroid/media/AudioSystem;->setRxVolume(IIBII)I

    move-result v4

    sput v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    .line 102
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetData:Landroid/widget/EditText;

    sget v5, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 139
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->device_type:Landroid/widget/Spinner;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 140
    sget-object v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->DEVICE_TYPE:[I

    aget v4, v4, p3

    sput v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mDevice_type:I

    .line 187
    :cond_f
    :goto_f
    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mVolumeType:I

    packed-switch v4, :pswitch_data_be

    .line 201
    :goto_14
    return-void

    .line 142
    :cond_15
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->method_type:Landroid/widget/Spinner;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 143
    sget-object v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->METHOD_TYPE:[I

    aget v4, v4, p3

    sput v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethod_type:I

    .line 145
    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethod_type:I

    sparse-switch v4, :sswitch_data_c8

    .line 153
    const v2, 0x7f060035

    .line 156
    .local v2, resId:I
    :goto_2b
    const v4, 0x1090008

    invoke-static {p0, v2, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 158
    .local v0, adapter_setting_type:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 159
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->volume_level:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_f

    .line 147
    .end local v0           #adapter_setting_type:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #resId:I
    :sswitch_3e
    const v2, 0x7f060033

    .line 148
    .restart local v2       #resId:I
    goto :goto_2b

    .line 150
    .end local v2           #resId:I
    :sswitch_42
    const v2, 0x7f060034

    .line 151
    .restart local v2       #resId:I
    goto :goto_2b

    .line 162
    .end local v2           #resId:I
    :cond_46
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->volume_level:Landroid/widget/Spinner;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 165
    move v3, p3

    .line 166
    .local v3, val:I
    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethod_type:I

    sparse-switch v4, :sswitch_data_d2

    .line 174
    const/4 v1, 0x7

    .line 177
    .local v1, maxVolume:I
    :goto_55
    add-int/lit8 v4, v1, 0x1

    if-ge v3, v4, :cond_64

    .line 178
    int-to-byte v4, v3

    sput-byte v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mIdx:B

    .line 179
    sput v8, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mVolumeType:I

    goto :goto_f

    .line 168
    .end local v1           #maxVolume:I
    :sswitch_5f
    const/4 v1, 0x5

    .line 169
    .restart local v1       #maxVolume:I
    goto :goto_55

    .line 171
    .end local v1           #maxVolume:I
    :sswitch_61
    const/16 v1, 0xf

    .line 172
    .restart local v1       #maxVolume:I
    goto :goto_55

    .line 182
    :cond_64
    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v3, v4

    .line 183
    int-to-byte v4, v3

    sput-byte v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mIdx:B

    .line 184
    const/4 v4, 0x1

    sput v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mVolumeType:I

    goto :goto_f

    .line 189
    .end local v1           #maxVolume:I
    .end local v3           #val:I
    :pswitch_6e
    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mDevice_type:I

    sget v5, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethod_type:I

    sget-byte v6, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mIdx:B

    sget v7, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetValue:I

    invoke-static {v4, v5, v6, v8, v7}, Landroid/media/AudioSystem;->setRxVolume(IIBII)I

    move-result v4

    sput v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    .line 190
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetData:Landroid/widget/EditText;

    sget v5, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 193
    :pswitch_88
    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mDevice_type:I

    sget v5, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethod_type:I

    sget-byte v6, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mIdx:B

    sget v7, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetValue:I

    invoke-static {v4, v5, v6, v8, v7}, Landroid/media/AudioSystem;->setDtmfVolume(IIBII)I

    move-result v4

    sput v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    .line 194
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetData:Landroid/widget/EditText;

    sget v5, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 197
    :pswitch_a3
    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mDevice_type:I

    sget v5, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethod_type:I

    sget-byte v6, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mIdx:B

    sget v7, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetValue:I

    invoke-static {v4, v5, v6, v8, v7}, Landroid/media/AudioSystem;->setPadValue(IIBII)I

    move-result v4

    sput v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    .line 198
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetData:Landroid/widget/EditText;

    sget v5, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 187
    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_88
        :pswitch_a3
    .end packed-switch

    .line 145
    :sswitch_data_c8
    .sparse-switch
        0x0 -> :sswitch_3e
        0x4 -> :sswitch_42
    .end sparse-switch

    .line 166
    :sswitch_data_d2
    .sparse-switch
        0x0 -> :sswitch_5f
        0x4 -> :sswitch_61
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 7
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->device_type:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 205
    sget-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->DEVICE_TYPE:[I

    aget v0, v0, v4

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mDevice_type:I

    .line 210
    :cond_f
    :goto_f
    sget v0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mDevice_type:I

    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethod_type:I

    sget-byte v2, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mIdx:B

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetValue:I

    invoke-static {v0, v1, v2, v4, v3}, Landroid/media/AudioSystem;->setRxVolume(IIBII)I

    move-result v0

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    .line 211
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mGetData:Landroid/widget/EditText;

    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->getVolumeValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    return-void

    .line 206
    :cond_29
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->method_type:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 207
    sget-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->METHOD_TYPE:[I

    aget v0, v0, v4

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mMethod_type:I

    goto :goto_f

    .line 208
    :cond_38
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->volume_level:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 209
    sput-byte v4, Lcom/lge/hiddenmenu/device_test/sound_test/SoundCalibration;->mIdx:B

    goto :goto_f
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 218
    return-void
.end method
