.class Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "DTMFTwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFKeyListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;
    }
.end annotation


# instance fields
.field public final DTMF_CHARACTERS:[C

.field private mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialer;


# direct methods
.method private constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;Landroid/widget/EditText;)V
    .registers 4
    .parameter
    .parameter "display"

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1027
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    .line 1022
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_24

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->DTMF_CHARACTERS:[C

    .line 1030
    if-eqz p2, :cond_22

    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1032
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    invoke-direct {v0, p0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    .line 1033
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->prepareFadeIn()V

    .line 1035
    :cond_22
    return-void

    .line 1022
    nop

    :array_24
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;Landroid/widget/EditText;Lcom/android/phone/DTMFTwelveKeyDialer$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1015
    invoke-direct {p0, p1, p2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;)Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    return-object v0
.end method

.method private isAcceptableModifierKey(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 1057
    packed-switch p1, :pswitch_data_8

    .line 1065
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1062
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1057
    nop

    :pswitch_data_8
    .packed-switch 0x39
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private lookup(Landroid/view/KeyEvent;)C
    .registers 6
    .parameter "event"

    .prologue
    .line 1219
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 1220
    .local v1, meta:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v2

    .line 1222
    .local v2, number:I
    and-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_e

    if-nez v2, :cond_19

    .line 1224
    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    .line 1225
    .local v0, match:I
    if-eqz v0, :cond_19

    move v2, v0

    .line 1228
    .end local v0           #match:I
    :cond_19
    int-to-char v3, v2

    return v3
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1049
    const/4 v0, 0x0

    return v0
.end method

.method protected getAcceptedChars()[C
    .registers 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-object v0
.end method

.method isKeyEventAcceptable(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1235
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1148
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v0

    .line 1155
    .local v0, c:C
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 1158
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1163
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-static {v1, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$600(Lcom/android/phone/DTMFTwelveKeyDialer;C)V

    .line 1165
    const/4 v1, 0x1

    .line 1171
    :goto_1c
    return v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1079
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 1082
    .local v0, c:C
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_33

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1084
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 1087
    .local v1, keyOK:Z
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    if-eqz v2, :cond_2a

    if-nez v1, :cond_25

    invoke-direct {p0, p3}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->isAcceptableModifierKey(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1089
    :cond_25
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->onKeyDown()V

    .line 1094
    :cond_2a
    if-eqz v1, :cond_31

    .line 1099
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$600(Lcom/android/phone/DTMFTwelveKeyDialer;C)V

    .line 1104
    :cond_31
    const/4 v2, 0x1

    .line 1107
    .end local v1           #keyOK:Z
    :goto_32
    return v2

    :cond_33
    const/4 v2, 0x0

    goto :goto_32
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1182
    if-nez p1, :cond_5

    move v1, v2

    .line 1208
    :goto_4
    return v1

    .line 1190
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v0

    .line 1198
    .local v0, c:C
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1203
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$700(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    move v1, v2

    .line 1205
    goto :goto_4

    .line 1208
    :cond_1a
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 1121
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 1123
    .local v0, c:C
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 1126
    .local v1, keyOK:Z
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    if-eqz v2, :cond_21

    if-nez v1, :cond_1c

    invoke-direct {p0, p3}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->isAcceptableModifierKey(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1128
    :cond_1c
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->onKeyUp()V

    .line 1131
    :cond_21
    if-eqz v1, :cond_2a

    .line 1136
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$700(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 1138
    const/4 v2, 0x1

    .line 1141
    :goto_29
    return v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_29
.end method
