.class public Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;
.super Landroid/app/Activity;
.source "IPerf_Test.java"


# instance fields
.field public buf:Ljava/lang/StringBuffer;

.field public buf2:Ljava/lang/StringBuffer;

.field public callButton1:Landroid/widget/Button;

.field public callButton2:Landroid/widget/Button;

.field public callButton3:Landroid/widget/Button;

.field count:I

.field public editText1:Landroid/widget/EditText;

.field public editText2:Landroid/widget/EditText;

.field ls_in:Ljava/io/DataInputStream;

.field ls_in2:Ljava/io/DataInputStream;

.field ls_prc:Ljava/lang/Process;

.field ls_prc2:Ljava/lang/Process;

.field public mStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public textView1:Landroid/widget/TextView;

.field public tmpStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->count:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->mStrings:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->tmpStr:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->buf:Ljava/lang/StringBuffer;

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->buf2:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->setContentView(I)V

    .line 50
    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->editText1:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->callButton1:Landroid/widget/Button;

    .line 52
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->callButton2:Landroid/widget/Button;

    .line 53
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->callButton3:Landroid/widget/Button;

    .line 54
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->textView1:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->callButton1:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$1;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$1;-><init>(Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->callButton2:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$2;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$2;-><init>(Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;->callButton3:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$3;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/IPerf_Test$3;-><init>(Lcom/lge/hiddenmenu/wlan_service/IPerf_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method
