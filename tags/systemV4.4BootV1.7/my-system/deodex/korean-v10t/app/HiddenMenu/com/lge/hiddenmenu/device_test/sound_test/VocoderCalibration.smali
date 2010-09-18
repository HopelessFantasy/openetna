.class public Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;
.super Landroid/app/Activity;
.source "VocoderCalibration.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final AGC_ITEM:[I = null

.field public static final AGC_ITEMTYPE:I = 0x1

.field public static final FILTER_ITEM:[I = null

.field public static final FILTER_ITEMTYPE:I = 0x2

.field public static final GENERAL_ITEM:[I = null

.field public static final GENERAL_ITEMTYPE:I = 0x0

.field public static final MODE_GET:I = 0x0

.field public static final MODE_SET:I = 0x1

.field public static final VOC_CODEC:[I

.field private static getVolumeValue:I

.field private static mGetValue:I

.field private static mVccal_param_type:I

.field private static mVoc_codec:I


# instance fields
.field item_type:Landroid/widget/Spinner;

.field private mGetData:Landroid/widget/EditText;

.field private mItemType:I

.field private mSetData:Landroid/widget/EditText;

.field setting_type:Landroid/widget/Spinner;

.field vocoder:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetValue:I

    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->VOC_CODEC:[I

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->GENERAL_ITEM:[I

    .line 57
    const/16 v0, 0x37

    new-array v0, v0, [I

    fill-array-data v0, :array_52

    sput-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->FILTER_ITEM:[I

    .line 116
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_c4

    sput-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->AGC_ITEM:[I

    return-void

    .line 34
    nop

    :array_28
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
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 47
    :array_40
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 57
    :array_52
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
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
    .end array-data

    .line 116
    :array_c4
    .array-data 0x4
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
    .registers 7
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const-string v4, "0"

    .line 182
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mSetData:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_63

    .line 183
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mSetData:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, mVal:I
    :goto_21
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mItemType:I

    packed-switch v1, :pswitch_data_b6

    .line 207
    :goto_26
    const-string v1, "Calibartion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVoc_codec:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVccal_param_type:I

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

    .line 208
    return-void

    .line 187
    .end local v0           #mVal:I
    :cond_63
    const/4 v0, 0x0

    .line 188
    .restart local v0       #mVal:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mSetData:Landroid/widget/EditText;

    const-string v2, "0"

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetData:Landroid/widget/EditText;

    const-string v2, "0"

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 194
    :pswitch_73
    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVoc_codec:I

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVccal_param_type:I

    invoke-static {v1, v2, v3, v0}, Landroid/media/AudioSystem;->setVoccalParam(IIII)I

    move-result v1

    sput v1, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    .line 195
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetData:Landroid/widget/EditText;

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 198
    :pswitch_89
    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVoc_codec:I

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVccal_param_type:I

    invoke-static {v1, v2, v3, v0}, Landroid/media/AudioSystem;->setVoccalParam(IIII)I

    move-result v1

    sput v1, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    .line 199
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetData:Landroid/widget/EditText;

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 202
    :pswitch_9f
    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVoc_codec:I

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVccal_param_type:I

    invoke-static {v1, v2, v3, v0}, Landroid/media/AudioSystem;->setVoccalIIRParam(IIII)I

    move-result v1

    sput v1, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    .line 203
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetData:Landroid/widget/EditText;

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_26

    .line 192
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_73
        :pswitch_89
        :pswitch_9f
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const v6, 0x1090009

    const v5, 0x1090008

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v4, 0x7f03003e

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->setContentView(I)V

    .line 142
    const v4, 0x7f07008c

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->vocoder:Landroid/widget/Spinner;

    .line 143
    const v4, 0x7f060036

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 145
    .local v0, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 146
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->vocoder:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 147
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->vocoder:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 149
    const v4, 0x7f070106

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->item_type:Landroid/widget/Spinner;

    .line 150
    const v4, 0x7f060038

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 152
    .local v1, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 153
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->item_type:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 154
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->item_type:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 156
    const v4, 0x7f070107

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->setting_type:Landroid/widget/Spinner;

    .line 157
    const v4, 0x7f060039

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 159
    .local v2, adapter3:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 160
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->setting_type:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 161
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->setting_type:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    const v4, 0x7f070005

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mSetData:Landroid/widget/EditText;

    .line 166
    const v4, 0x7f070006

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetData:Landroid/widget/EditText;

    .line 170
    const v4, 0x7f070007

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 171
    .local v3, clearButton:Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iput v7, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mItemType:I

    .line 174
    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVoc_codec:I

    sget v5, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVccal_param_type:I

    sget v6, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetValue:I

    invoke-static {v4, v5, v7, v6}, Landroid/media/AudioSystem;->setVoccalParam(IIII)I

    move-result v4

    sput v4, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    .line 175
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetData:Landroid/widget/EditText;

    sget v5, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 211
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->vocoder:Landroid/widget/Spinner;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 212
    sget-object v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->VOC_CODEC:[I

    aget v2, v2, p3

    sput v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVoc_codec:I

    .line 249
    :cond_f
    :goto_f
    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mItemType:I

    packed-switch v2, :pswitch_data_b8

    .line 263
    :goto_14
    return-void

    .line 215
    :cond_15
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->item_type:Landroid/widget/Spinner;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 216
    const v1, 0x7f060039

    .line 217
    .local v1, resId:I
    packed-switch p3, :pswitch_data_c2

    .line 231
    :goto_23
    const v2, 0x1090008

    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 233
    .local v0, adapter_setting_type:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 234
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->setting_type:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_f

    .line 219
    .end local v0           #adapter_setting_type:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :pswitch_36
    const v1, 0x7f060039

    .line 220
    iput v5, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mItemType:I

    goto :goto_23

    .line 223
    :pswitch_3c
    const v1, 0x7f06003b

    .line 224
    const/4 v2, 0x1

    iput v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mItemType:I

    goto :goto_23

    .line 227
    :pswitch_43
    const v1, 0x7f06003a

    .line 228
    const/4 v2, 0x2

    iput v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mItemType:I

    goto :goto_23

    .line 236
    .end local v1           #resId:I
    :cond_4a
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->setting_type:Landroid/widget/Spinner;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 237
    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mItemType:I

    packed-switch v2, :pswitch_data_cc

    goto :goto_f

    .line 239
    :pswitch_58
    sget-object v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->GENERAL_ITEM:[I

    aget v2, v2, p3

    sput v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVccal_param_type:I

    goto :goto_f

    .line 242
    :pswitch_5f
    sget-object v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->AGC_ITEM:[I

    aget v2, v2, p3

    sput v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVccal_param_type:I

    goto :goto_f

    .line 245
    :pswitch_66
    sget-object v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->FILTER_ITEM:[I

    aget v2, v2, p3

    sput v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVccal_param_type:I

    goto :goto_f

    .line 251
    :pswitch_6d
    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVoc_codec:I

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVccal_param_type:I

    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetValue:I

    invoke-static {v2, v3, v5, v4}, Landroid/media/AudioSystem;->setVoccalParam(IIII)I

    move-result v2

    sput v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    .line 252
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetData:Landroid/widget/EditText;

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 255
    :pswitch_85
    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVoc_codec:I

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVccal_param_type:I

    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetValue:I

    invoke-static {v2, v3, v5, v4}, Landroid/media/AudioSystem;->setVoccalParam(IIII)I

    move-result v2

    sput v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    .line 256
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetData:Landroid/widget/EditText;

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 259
    :pswitch_9e
    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVoc_codec:I

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVccal_param_type:I

    sget v4, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetValue:I

    invoke-static {v2, v3, v5, v4}, Landroid/media/AudioSystem;->setVoccalIIRParam(IIII)I

    move-result v2

    sput v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    .line 260
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetData:Landroid/widget/EditText;

    sget v3, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 249
    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_85
        :pswitch_9e
    .end packed-switch

    .line 217
    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_36
        :pswitch_3c
        :pswitch_43
    .end packed-switch

    .line 237
    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_58
        :pswitch_5f
        :pswitch_66
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 6
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->vocoder:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 267
    sget-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->VOC_CODEC:[I

    aget v0, v0, v3

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVoc_codec:I

    .line 270
    :cond_f
    :goto_f
    sget v0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVoc_codec:I

    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVccal_param_type:I

    sget v2, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetValue:I

    invoke-static {v0, v1, v3, v2}, Landroid/media/AudioSystem;->setVoccalParam(IIII)I

    move-result v0

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    .line 271
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mGetData:Landroid/widget/EditText;

    sget v1, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->getVolumeValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    return-void

    .line 268
    :cond_27
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->setting_type:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 269
    sget-object v0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->GENERAL_ITEM:[I

    aget v0, v0, v3

    sput v0, Lcom/lge/hiddenmenu/device_test/sound_test/VocoderCalibration;->mVccal_param_type:I

    goto :goto_f
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 277
    return-void
.end method
